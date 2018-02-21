var baseURLUser = "/user";

function userModelCreateUser(data) {
    return databaseService(baseURLUser, data, "POST")
}

function userModelCheckUsername(username) {
    return databaseService(baseURLUser+"/checkUsername/" + username, null, "GET")
}

function userModelLogin(data) {
    return databaseService(baseURLUser+"/login", data, "POST")
}