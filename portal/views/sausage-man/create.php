<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SausageMan */

$this->title = 'Create Sausage Man';
$this->params['breadcrumbs'][] = ['label' => 'Sausage Men', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sausage-man-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
