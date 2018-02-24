var currUsername;

function getCurrUser() {
    var urlTokens = (window.location.pathname).split ('/');
    currUsername = urlTokens[2];
}

$(document).ready(getCurrUser());

function goToHome() {
    window.location.href = '/home/' + currUsername;
}

function goToCreate() {
    window.location.href = '/create/' + currUsername;
}

function logout() {
    window.location.href = '/login';
}