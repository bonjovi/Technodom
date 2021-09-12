<?php

namespace Botble\Ecommerce\Forms\Fields;

use Kris\LaravelFormBuilder\Fields\FormField;

class PropertyMultiField extends FormField
{

    /**
     * {@inheritDoc}
     */
    protected function getTemplate()
    {
        return 'plugins/ecommerce::product-properties.partials.properties-multi';
    }
}
