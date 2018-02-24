var currUsername;

function getCurrUser() {
    var urlTokens = (window.location.pathname).split ('/');
    currUsername = urlTokens[2];
}

function renderProgresses() {
    var renderObj = {};

    $.when(progressModelGetAllByUser(currUsername)).done(function(progress){
        renderObj.progress = progress;
        renderTemplate("progressTableTemplate", renderObj, "progresses", false);

        $("#progressTable").DataTable({
            "columnDefs": [
                { "orderable": false, "targets": 3 }
            ],
            "order": [[ 1, "asc" ]]
        });
    });
}

function deleteProgress(progressId) {
    var data = { username: currUsername };

    $.when(progressModelDeleteProgress(progressId, data)).done(function(delProgress){
        renderProgresses();
    });
}

function updateProgress(progressId) {
    var data = {
        username: currUsername,
        progress: $('#progressInput' + progressId).val()
    };

    $.when(progressModelUpdateProgress(progressId, data)).done(function(progress){
        window.location.reload();
    });
}

$(document).ready(getCurrUser(), renderProgresses());