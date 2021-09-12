<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;
use Botble\Ecommerce\Tables\ProductTable;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Html;
use Illuminate\Support\Str;

class ProductProperty extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'ec_properties';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'parent_id',
        'description',
        'order',
        'status',
        'image',
        'is_featured',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    /**
     * @return BelongsToMany
     */
    public function products(): BelongsToMany
    {
        return $this
            ->belongsToMany(Product::class, 'ec_product_property_product', 'property_id', 'product_id')
            ->where('is_variation', 0);
    }

    /**
     * @return BelongsTo
     */
    public function parent(): BelongsTo
    {
        return $this->belongsTo(ProductProperty::class, 'parent_id')->withDefault();
    }

    /**
     * @return HasMany
     */
    public function children(): HasMany
    {
        return $this->hasMany(ProductProperty::class, 'parent_id');
    }

    /**
     * @return string
     */
    public function getBadgeWithCountAttribute()
    {
        switch ($this->status->getValue()) {
            case BaseStatusEnum::DRAFT:
                $badge = 'bg-secondary';
                break;

            case BaseStatusEnum::PENDING:
                $badge = 'bg-warning';
                break;

            default:
                $badge = 'bg-success';
                break;
        }

        $link = route('products.index', [
            'filter_table_id'  => strtolower(Str::slug(Str::snake(ProductTable::class))),
            'class'            => Product::class,
            'filter_columns'   => ['property'],
            'filter_operators' => ['='],
            'filter_values'    => [$this->id],
        ]);

        return Html::link($link, (string) $this->products_count, [
            'class'               => 'badge font-weight-bold ' . $badge,
            'data-toggle'         => 'tooltip',
            'data-original-title' => trans('plugins/ecommerce::product-categories.total_products', ['total' => $this->products_count]),
        ]);
    }

    protected static function boot()
    {
        parent::boot();

        self::deleting(function (ProductProperty $productProperty) {
            $productProperty->products()->detach();
        });
    }
}
