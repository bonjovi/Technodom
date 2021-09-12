<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Forms\PropertyCategoryForm;
use Botble\Ecommerce\Http\Requests\PropertyCategoryRequest;
use Botble\Ecommerce\Repositories\Interfaces\PropertyCategoryInterface;
use Botble\Ecommerce\Tables\PropertyCategoryTable;
use Exception;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Throwable;

class PropertyCategoryController extends BaseController
{
    /**
     * @var PropertyCategoryInterface
     */
    protected $propertyCategoryRepository;

    /**
     * PropertyCategoryController constructor.
     * @param PropertyCategoryInterface $propertyCategoryRepository
     */
    public function __construct(PropertyCategoryInterface $propertyCategoryRepository)
    {
        $this->propertyCategoryRepository = $propertyCategoryRepository;
    }

    /**
     * @param PropertyCategoryTable $dataTable
     * @return Factory|View
     * @throws Throwable
     */
    public function index(PropertyCategoryTable $dataTable)
    {
        page_title()->setTitle(trans('Категории характеристик'));

        return $dataTable->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/ecommerce::propertycategories.create'));

        return $formBuilder->create(PropertyCategoryForm::class)->renderForm();
    }

    /**
     * @param PropertyCategoryRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(PropertyCategoryRequest $request, BaseHttpResponse $response)
    {
        $propertyCategory = $this->propertyCategoryRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(PROPERTYCATEGORY_MODULE_SCREEN_NAME, $request, $propertyCategory));

        return $response
            ->setPreviousUrl(route('propertycategories.index'))
            ->setNextUrl(route('propertycategories.edit', $propertyCategory->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder)
    {
        $propertyCategory = $this->propertyCategoryRepository->findOrFail($id);
        page_title()->setTitle(trans('plugins/ecommerce::propertycategories.edit') . ' "' . $propertyCategory->name . '"');

        return $formBuilder->create(PropertyCategoryForm::class, ['model' => $propertyCategory])->renderForm();
    }

    /**
     * @param int $id
     * @param PropertyCategoryRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, PropertyCategoryRequest $request, BaseHttpResponse $response)
    {
        $propertyCategory = $this->propertyCategoryRepository->findOrFail($id);
        $propertyCategory->fill($request->input());

        $this->propertyCategoryRepository->createOrUpdate($propertyCategory);

        event(new UpdatedContentEvent(PROPERTYCATEGORY_MODULE_SCREEN_NAME, $request, $propertyCategory));

        return $response
            ->setPreviousUrl(route('propertycategories.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param Request $request
     * @param int $id
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $propertyCategory = $this->propertyCategoryRepository->findOrFail($id);
            $this->propertyCategoryRepository->delete($propertyCategory);

            event(new DeletedContentEvent(PROPERTYCATEGORY_MODULE_SCREEN_NAME, $request, $propertyCategory));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $propertyCategory = $this->propertyCategoryRepository->findOrFail($id);
            $this->propertyCategoryRepository->delete(c);
            event(new DeletedContentEvent(PROPERTYCATEGORY_MODULE_SCREEN_NAME, $request, $propertyCategory));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
