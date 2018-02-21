function databaseService(url, data, requestType) {
    return $.ajax({
        url: url,
        dataType: 'json',
        type: requestType,
        data: data,
        success: function(returnedData) {
            console.log(returnedData);
        },
        error: function(request, status, error) {
            console.log(error); //TODO: add proper error displaying
        }
    });
}