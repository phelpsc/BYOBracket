<div id="header">
    <div id="logo">
        <a href="<?php echo base_url(); ?>"><img src="<?php base_url();?>images/logo.png" /></a>
    </div>
</div>
<div id="container">
    <div id="registrationForm">

        <h1>Join BYOBracket today.</h1>
        <div class="formErrors">
            <?php echo validation_errors(); ?>
        </div>
        <?php echo form_open('register') ?>

        <div class="holder">
            <div class="sideTip">
                <p class="usernameChoose">Choose a username.</p>
                <p class="usernameWarnLength">Username must be longer.</p>
                <p class="usernameWarnUnique">Username not available. :(</p>
                <p class="usernameOk">Username OK!</p>
            </div>
            <input id="usernameInput" class="registrationInput" type="input" name="username" />
        </div>
        <div class="holder">
            <div class="sideTip">
                <p class="emailEnter">Please enter your email address.</p>
                <p class="emailWarnInvalid">Invalid email.</p>
                <p class="emailWarnUnique">Email already in use.</p>
                <p class="emailOk">Email OK!</p>
            </div>
            <input id="emailInput" type="input" class="registrationInput" name="email" />
        </div>
        <div class="holder">
            <div class="sideTip">
                <p class="passwordChoose">Please choose a password.</p>
                <p class="passwordWarnLength">Password must be longer.</p>
                <p class="passwordOk">Password OK!</p>
            </div>
            <input id="passwordFake" type="input" class="registrationInput" name="passwordFake" />
            <input id="passwordInput" type="password" class="registrationInput hidden" name="password" />
        </div>

        <input id="submitButton" type="submit" class="submitButton" value="Register my account." />

        </form>
    </div>
</div>
