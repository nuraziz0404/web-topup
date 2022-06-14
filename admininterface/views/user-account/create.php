<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\UserAccount */

$this->title = 'Create User Account';
$this->params['breadcrumbs'][] = ['label' => 'User Accounts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-account-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
