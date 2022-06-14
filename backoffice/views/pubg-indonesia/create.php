<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PubgIndonesia */

$this->title = 'Create Pubg Mobile Indonesia';
$this->params['breadcrumbs'][] = ['label' => 'Pubg Mobile Indonesia', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pubg-indonesia-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
