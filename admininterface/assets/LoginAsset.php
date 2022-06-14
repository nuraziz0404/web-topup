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
class LoginAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'custom/vendors/bootstrap/dist/css/bootstrap.min.css',
        'custom/vendors/font-awesome/css/font-awesome.min.css',
        'custom/vendors/nprogress/nprogress.css',
        'custom/vendors/animate.css/animate.min.css',
        'custom/build/css/custom.min.css',
    ];
    public $js = [
    ];
    public $depends = [
    ];
}
