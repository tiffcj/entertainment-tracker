var baseURLUser = "/user";

function userModelLogin(data) {
    return databaseService(baseURLUser+"/login", data, "POST")
}

function userModelAddUser(data) {
    return databaseService(baseURLUser+"/addUser", data, "POST")
}

function userModelCheckUsername(data) {
    return databaseService(baseURLUser+"/checkUsername", data, "GET")
}