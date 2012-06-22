<div id="header">
    <div id="logo">
        <a href="<?php echo base_url(); ?>"><img src="<?php base_url();?>images/logo.png" /></a>
    </div>
</div>
<div id="container">
    <div id="validationForm">

        <h1>Just one more step.</h1>
        <h3>An email has been sent to the address you provided, please enter the code you received (or click on the link inside the email.</h3>
        <div class="formErrors">
            <?php echo validation_errors(); ?>
        </div>
        <?php echo form_open('validate') ?>

        <div class="holder">
            <input id="codeInput" class="validationInput" type="input" name="code" />
        </div>
        <input id="submitButton" type="submit" class="submitButton" value="Validate my account." />

        </form>
    </div>
</div>
