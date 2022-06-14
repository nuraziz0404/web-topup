<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Reseller */

$this->title = 'Create Reseller';
$this->params['breadcrumbs'][] = ['label' => 'Resellers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="reseller-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
