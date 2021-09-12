<?php

namespace Botble\Ecommerce\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Http\Requests\PropertyRequest;
use Botble\Ecommerce\Models\Property;
use Botble\Ecommerce\Repositories\Interfaces\BrandInterface;
use Botble\Ecommerce\Repositories\Interfaces\PropertyCategoryInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductCategoryInterface;

class PropertyForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $property_categories = app(PropertyCategoryInterface::class)->pluck('name', 'id');
        $product_categories = app(ProductCategoryInterface::class)->pluck('name', 'id');
        //dd($brands);
        //  $brands = [
        //      0 => 'Основные характеристики',
        //      1 => 'Другие характеристики'
        //  ];

        $this
            ->setupModel(new Property)
            ->setValidatorClass(PropertyRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('category_id', 'customSelect', [
                'label'      => 'Категория характеристик',
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $property_categories,
            ])
            ->add('product_category_id', 'customSelect', [
                'label'      => 'Категория товара',
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $product_categories,
            ])
            ->add('alias', 'text', [
                'label'      => 'Алиас',
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => 'Алиас',
                    'data-counter' => 400,
                ],
            ])
            ->add('description', 'editor', [
                'label'      => 'Описание',
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => trans('plugins/ecommerce::products.form.description'),
                    'data-counter' => 400,
                ],
            ])
            ->add('infilter', 'text', [
                'label'      => 'Показывать в фильтре',
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => '"0" или "1"',
                    'data-counter' => 400,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
