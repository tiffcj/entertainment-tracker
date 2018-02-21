var currUsername;

function renderProgresses() {
    var urlTokens = (window.location.pathname).split ('/');
    var renderObj = {};

    currUsername = urlTokens[2];

    $.when(progressModelGetAllByUser(currUsername)).done(function(progress){
        renderObj.progress = progress;
        renderTemplate("progressTableTemplate", renderObj, "progresses", false);

        $("#progressTable").DataTable({
            "columnDefs": [
                { "orderable": false, "targets": 3 }
            ]
        });
    });
}

$(document).ready(renderProgresses());