<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap4\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\bootstrap4\ActiveForm;
use yii\bootstrap4\Html;

$this->title = 'Admin Login';

?>
<div>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <?php $form = ActiveForm::begin([
                    'id' => 'login-form',
                ]); ?>
                <h1>Admin Login</h1>
                <div>
                    <?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Username'])->label(false) ?>
                </div>
                <div>
                    <?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password'])->label(false) ?>
                </div>
                <div>
                    <?= Html::submitButton('Login', ['class' => 'btn btn-primary submit', 'name' => 'Log in']) ?>
                </div>

                <div class="clearfix"></div>

                <div class="separator">

                    <div class="clearfix"></div>
                    <br />

                    <div>
                        <h1>Admin Zero Store</h1>
                        <p>Only Admin Can Login This Site!</p>
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </section>
        </div>
    </div>
</div>