<?php

namespace Botble\Ads\Providers;

use AdsManager;
use Botble\Ads\Facades\AdsManagerFacade;
use Botble\Ads\Models\Ads;
use Botble\Ads\Repositories\Caches\AdsCacheDecorator;
use Botble\Ads\Repositories\Eloquent\AdsRepository;
use Botble\Ads\Repositories\Interfaces\AdsInterface;
use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Event;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\ServiceProvider;

class AdsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(AdsInterface::class, function () {
            return new AdsCacheDecorator(new AdsRepository(new Ads));
        });

        Helper::autoload(__DIR__ . '/../../helpers');

        AliasLoader::getInstance()->alias('AdsManager', AdsManagerFacade::class);
    }

    public function boot()
    {
        $this->setNamespace('plugins/ads')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-ads',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/ads::ads.name',
                'icon'        => 'fas fa-bullhorn',
                'url'         => route('ads.index'),
                'permissions' => ['ads.index'],
            ]);
        });

        if (function_exists('shortcode')) {
            add_shortcode('ads', 'Ads', 'Ads', function ($shortcode) {
                if (!$shortcode->key) {
                    return null;
                }

                return AdsManager::displayAds((string)$shortcode->key);
            });
        }
    }
}
