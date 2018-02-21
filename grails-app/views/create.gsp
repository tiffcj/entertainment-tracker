<!DOCTYPE html>
<html>
<head>
    <title>Entertainment Tracker - Login</title>

    <!--Online resources-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    <!--CSS-->
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'shared-styles.css')}">

    <!--JS-->
    <script src="${resource(dir: 'js', file: 'navbar.js')}"></script>
    <script src="${resource(dir: 'js', file: 'mustache.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'template.js')}"></script>
    <script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'entertainmentTypeModel.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'entertainmentModel.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'progressModel.js')}"></script>
    <script src="${resource(dir: 'js/controllers', file: 'createController.js')}"></script>

    <!--Mustache templates-->
    <script type="text/html" id="entTypeOptionTemplate">
    {{#entTypes}}
    <option value="{{id}}">{{name}}</option>
    {{/entTypes}}
    </script>

    <script type="text/html" id="createProgressTemplate">
    <form>
        <div class="row form-group">
            <label for="nameSelect" class="control-label col-md-1 text-right">{{entertainmentTypeName}}:</label>
            <div class="col-md-4">
                <select class="form-control" id="nameSelect">
                    <option value="0">Select...</option>
                    {{#entertainments}}
                    <option value="{{id}}">{{name}}</option>
                    {{/entertainments}}
                </select>
            </div>

            <label for="progressInput" class="control-label col-md-1 text-right">Progress:</label>
            <div class="col-md-4">
                <input type="text" class="form-control" id="progressInput">
            </div>

            <div class="col-md-2">
                <button class="btn btn-success" type="button" onclick="createProgress()">
                    <i class="fa fa-plus"></i> Add Progress
                </button>
            </div>
        </div>
    </form>
    </script>
    <!--End of Mustache templates-->
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <ul class="nav navbar-nav navbar-right">
            <li><a type="button" onclick="goToHome()">Home</a></li>
            <li><a type="button" onclick="goToCreate()">Add New Progress</a></li>
            <li><a type="button" onclick="logout()">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="grid container">
    <div class="text-center top">
        <h1>Entertainment Tracker</h1>
        <i class="fa fa-tv fa-2x top-icons"></i>
        <i class="fa fa-book fa-2x top-icons"></i>
        <i class="fa fa-film fa-2x top-icons"></i>
        <i class="fa fa-video-camera fa-2x top-icons"></i>
    </div>

    <div class="well well-lg">
        <form>
            <div class="row form-group">
                <label for="entTypeSelect" class="control-label col-md-4 text-right">Please select an entertainment type:</label>
                <div class="col-md-4">
                    <select class="form-control" id="entTypeSelect" onchange="selectType()">
                        <option value="0">Select...</option>
                    </select>
                </div>
            </div>
        </form>

        <br>

        <div id="createProgressForm"></div>
    </div>

</div>
</body>
</html>