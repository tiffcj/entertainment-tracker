var currUsername;

function getAllEntertainmentTypes() {
    var urlTokens = (window.location.pathname).split ('/');
    var renderObj = {};

    currUsername = urlTokens[2];

    $.when(entertainmentTypeModelGetAll()).done(function(entTypes){
        renderObj.entTypes = entTypes;
        renderTemplate("entTypeOptionTemplate", renderObj, "entTypeSelect", true);
    });
}

$(document).ready(getAllEntertainmentTypes());

function selectType() {
    var entTypeId = $("#entTypeSelect").val();
    var renderObj = {};

    if (entTypeId != 0) {
        $.when(entertainmentModelGetAll(entTypeId)).done(function(entertainments){
            if (entertainments.length > 0) {
                $("#createProgressForm").show();

                renderObj.entertainmentTypeName = entertainments[0].entertainmentType.name;
                renderObj.entertainments = entertainments;

                renderTemplate("createProgressTemplate", renderObj, "createProgressForm", false);
            } else {
                $("#createProgressForm").hide();
            }
        });
    }
}

function createProgress() {
    var data = {username: currUsername};
    var entertainmentId = $("#nameSelect").val();

    if (entertainmentId != 0) {
        data.username = currUsername;
        data.entertainment = entertainmentId;
        data.progress = $('#progressInput').val().trim();

        console.log(data);

        $.when(progressModelCreateProgress(data)).done(function (progress) {
            window.location.href = '/home/' + currUsername;
        });
    }
}