<?php

namespace Botble\Ecommerce\Repositories\Caches;

use Botble\Ecommerce\Repositories\Interfaces\PropertyCategoryInterface;
use Botble\Support\Repositories\Caches\CacheAbstractDecorator;

class PropertyCategoryCacheDecorator extends CacheAbstractDecorator implements PropertyCategoryInterface
{
    /**
     * {@inheritDoc}
     */
    public function getAll(array $condition = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
