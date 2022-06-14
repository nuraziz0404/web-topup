<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\MobileLegends */

$this->title = 'Create Mobile Legends';
$this->params['breadcrumbs'][] = ['label' => 'Mobile Legends', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mobile-legends-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
