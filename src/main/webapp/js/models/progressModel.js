var baseURLProgress = "/progress";

function progressModelCreateProgress(data) {
    return databaseService(baseURLProgress, data, "POST")
}

function progressModelGetAllByUser(username) {
    return databaseService(baseURLProgress + "/getAll/" + username, null, "GET")
}

function progressModelDeleteProgress(progressId, data) {
    return databaseService(baseURLProgress + "/delete/" + progressId, data, "POST")
}