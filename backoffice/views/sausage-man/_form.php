<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\SausageMan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sausage-man-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_account')->textInput() ?>

    <?= $form->field($model, 'purchase')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'method_payment')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'transaction_invoice')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
