var currUsername;

function renderProgresses() {
    var urlTokens = (window.location.pathname).split ('/');
    var renderObj = {};

    currUsername = urlTokens[2];

    $.when(progressModelGetAllByUser(currUsername)).done(function(progress){
        renderObj.progress = progress;
        renderTemplate("progressTableTemplate", renderObj, "progresses");

        $("#progressTable").DataTable();
    });
}

$(document).ready(renderProgresses());