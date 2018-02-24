var currUsername;

function getCurrUser() {
    var urlTokens = (window.location.pathname).split ('/');
    currUsername = urlTokens[2];
}

function getAllEntertainmentTypes() {
    var renderObj = {};

    $.when(entertainmentTypeModelGetAll()).done(function(entTypes){
        renderObj.entTypes = entTypes;
        renderTemplate("entTypeOptionTemplate", renderObj, "entTypeSelect", true);
    });
}

$(document).ready(getCurrUser(), getAllEntertainmentTypes());

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
        data.progress = $('#progressInput').val();

        console.log(data);

        $.when(progressModelCreateProgress(data)).done(function (progress) {
            window.location.href = '/home/' + currUsername;
        });
    }
}