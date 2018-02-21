var baseURLEntertainment = "/entertainment";

function entertainmentModelCreate(data) {
    return databaseService(baseURLEntertainment, data, "POST")
}

function entertainmentModelGetAll(entertainmentTypeId) {
    return databaseService(baseURLEntertainment + "/getAll/" + entertainmentTypeId, null, "GET")
}