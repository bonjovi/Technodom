<?php

namespace Botble\Ecommerce\Repositories\Eloquent;

use Botble\Ecommerce\Repositories\Interfaces\PropertyCategoryInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;

class PropertyCategoryRepository extends RepositoriesAbstract implements PropertyCategoryInterface
{
    /**
     * {@inheritDoc}
     */
    public function getAll(array $condition = [])
    {
        $data = $this->model
            ->where($condition)
            ->orderBy('is_featured', 'DESC')
            ->orderBy('name', 'ASC');

        return $this->applyBeforeExecuteQuery($data)->get();
    }
}
