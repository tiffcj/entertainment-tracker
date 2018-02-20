function databaseService(url, data, requestType) {
    return $.ajax({
        url: url,
        dataType: 'json',
        type: requestType,
        data: data,
        success: function(returnedData) {
            alert (JSON.stringify(returnedData))
        },
        error: function(request, status, error) {
            alert(error) //TODO: add proper error displaying
        }
    });
}