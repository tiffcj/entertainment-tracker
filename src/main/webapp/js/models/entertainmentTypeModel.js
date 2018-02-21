var baseURLEntertainmentType = "/entertainmentType";

function entertainmentTypeModelCreate(data) {
    return databaseService(baseURLEntertainmentType, data, "POST")
}

function entertainmentTypeModelGetAll () {
    return databaseService(baseURLEntertainmentType, null, "GET")
}
