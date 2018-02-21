var baseURLProgress = "/progress";

function progressModelCreate(data) {
    return databaseService(baseURLProgress, data, "POST")
}

function progressModelGetByUser(username) {
    return databaseService(baseURLProgress + "/getAll/" + username, null, "GET")
}

function progressModelDeleteProgress(data) {
    return databaseService(baseURLProgress + "/delete", data, "POST")
}