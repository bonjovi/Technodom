<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Property extends BaseModel
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
        'category_id',
        'product_category_id',
        'description',
        'alias',
        'infilter'
    ];

    /**
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * @return HasMany
     */
    public function products()
    {
        return $this->hasMany(Product::class, 'property_id')->where('is_variation', 0);
    }




    public function category(): BelongsTo
    {
        return $this->belongsTo(ProductPropertyCategory::class, 'category_id')->withDefault();
    }

    public function productcategory(): BelongsTo
    {
        return $this->belongsTo(ProductCategory::class, 'product_category_id')->withDefault();
    }
}
