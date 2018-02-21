<!DOCTYPE html>
<html>
<head>
    <title>Entertainment Tracker - Home</title>

    <!--Online resources-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>

    <!--CSS-->
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'shared-styles.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'home.css')}">

    <!--JS-->
    <script src="${resource(dir: 'js', file: 'mustache.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'template.js')}"></script>
    <script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
    <script src="${resource(dir: 'js', file: 'navbar.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'entertainmentModel.js')}"></script>
    <script src="${resource(dir: 'js/models', file: 'progressModel.js')}"></script>
    <script src="${resource(dir: 'js/controllers', file: 'homeController.js')}"></script>

    <!--Online resources-->
    <script type="text/html" id="progressTableTemplate">
    <table class="table table-striped" id="progressTable">
        <thead>
        <tr>
            <th class="col-md-3">Entertainment Name</th>
            <th class="col-md-2">Entertainment Type</th>
            <th class="col-md-4">Progress</th>
            <th class="col-md-3"></th>
        </tr>
        </thead>

        <tbody>
        {{#progress}}
        <tr>
            <td>{{entertainment.name}}</td>
            <td>{{entertainment.entertainmentType.name}}</td>
            <td>{{progress}}</td>
            <td>
                %{--<button class="btn btn-primary" type="button"><i class='fa fa-edit'></i> Edit</button>--}%
                <button class="btn btn-danger" type="button" onclick="deleteProgress({{id}})"><i class='fa fa-trash'></i></button>
            </td>
        </tr>
        {{/progress}}
        </tbody>
    </table>
    </script>
    <!--End of Mustache templates-->
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <ul class="nav navbar-nav navbar-right">
            <li><a type="button" onclick="goToHome()">Home</a></li>
            <li><a type="button" onclick="goToCreate()">Add New Progress</a></li>
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

    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h3>Your Progress List</h3>
        </div>

        <div class="panel-body" id="mainPagePanelBody">
            <div id="progresses"></div>
        </div>
    </div>
</div>
</body>
</html>