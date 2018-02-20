package entertainment_tracker

class UserController {
    static responseFormats = ['json']

    def userService

    def addUser() {
        respond userService.addUser(params)
    }

    def checkUsername() {
        respond userService.checkUsername(params)
    }

    def login() {
        respond userService.login(params)
    }
}
