<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'shared-styles.css')}">

    <script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'userModel.js')}"></script>
    <script src="${resource(dir: 'js/controllers', file: 'loginController.js')}"></script>

    <title>Entertainment Tracker - Login</title>
</head>

<body>
<div class="grid container">
    <div class="text-center top">
        <h1>Entertainment Tracker</h1>
        <i class="fa fa-tv fa-2x top-icons"></i>
        <i class="fa fa-book fa-2x top-icons"></i>
        <i class="fa fa-film fa-2x top-icons"></i>
        <i class="fa fa-video-camera fa-2x top-icons"></i>
    </div>

    <div class="well well-lg">
        <form class="form-horizontal">
            <div class="row form-group">
                <label for="usernameInput" class="control-label col-md-2">Username:</label>
                <div class="col-md-5">
                    <input class="form-control" id="usernameInput">
                </div>
            </div>

            <div class="row form-group">
                <label for="passwordInput" class="control-label col-md-2">Password:</label>
                <div class="col-md-5">
                    <input class="form-control" id="passwordInput" type="password">
                </div>
            </div>

            <div class="row form-group" id="passwordConfirmFormGroup">
                <label for="passwordConfirmInput" class="control-label col-md-2">Confirm Password:</label>
                <div class="col-md-5">
                    <input class="form-control" id="passwordConfirmInput" type="password">
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-offset-2 col-md-10">
                    <button class="btn btn-primary" type="button" onclick="getLoginInput(true)">Register</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>