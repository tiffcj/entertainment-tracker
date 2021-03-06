function getLoginInput (isRegister) {
    var username = $("#usernameInput").val().trim();
    var password = $("#passwordInput").val();
    var loginInput = {};

    if (username === "") {
        alert ("Please enter a username.")
    } else if (password === "") {
        alert ("Please enter a password.");
    } else {
        loginInput.username = username;
        loginInput.password = password;

        if (isRegister === false) {
            login(loginInput);
        } else {
            register (loginInput);
        }
    }
}

function login(loginInput) {
    $.when(userModelLogin(loginInput)).done(function(returned){
        if (returned.login === true) {
            window.location.href = '/home/' + loginInput.username;
        } else {
            alert ("Wrong password or user does not exist. Please try again or register.");
            $("#pwInput").val("");
        }
    });
}

function goToRegister() {
    window.location.href = '/register';
}

function register(loginInput) {
    var passwordConfirm = $("#passwordConfirmInput").val();

    if (passwordConfirm !== "") {
        if (passwordConfirm !== loginInput.password) {
            alert ("Please make sure your passwords match.");
        } else {
            $.when(userModelCheckUsername(loginInput.username)).done(function(returned){
                if (returned.usernameNotTaken === true) {
                    $.when(userModelCreateUser(loginInput)).done(function(returned){
                        window.location.href = '/home/' + returned.username;
                    });
                } else {
                    alert ("That username is already taken. Please enter a different one.");
                }
            });
        }
    }
}