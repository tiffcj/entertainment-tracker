package entertainment_tracker

class UserController {
    static responseFormats = ['json']

    def userService

    def createUser() {
        respond userService.createUser(params)
    }

    def checkUsername() {
        respond userService.checkUsername(params)
    }

    def login() {
        respond userService.login(params)
    }
}
