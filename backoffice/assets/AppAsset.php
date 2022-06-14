<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'custom/vendors/switchery/dist/switchery.min.css',
        'custom/build/css/custom.min.css',
        'custom/vendors/iCheck/skins/flat/green.css',
    ];
    public $js = [
        'custom/vendors/switchery/dist/switchery.min.js',
    ];
    public $depends = [
        'yiister\gentelella\assets\ThemeAsset',
        'yiister\gentelella\assets\ExtensionAsset',
    ];
}
