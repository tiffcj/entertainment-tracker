var currUsername;

$(document).ready(function() {
    var urlTokens = (window.location.pathname).split ('/');
    currUsername = urlTokens[2];
});

function goToHome() {
    window.location.href = '/home/' + currUsername;
}

function goToCreate() {
    window.location.href = '/create/' + currUsername;
}