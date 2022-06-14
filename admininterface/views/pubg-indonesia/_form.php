<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PubgIndonesia */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pubg-indonesia-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_account')->textInput() ?>

    <?= $form->field($model, 'nickname_account')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'purchase')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'method_payment')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'transaction_invoice')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
