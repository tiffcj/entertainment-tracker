package entertainment_tracker

import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONObject

@Transactional
class UserService {

    def addUser(params) {
        User newUser = new User()
        newUser.username = params.username
        newUser.password = params.password

        try {
            if (!newUser.save(flush:true)) {
                println newUser.errors
                return newUser.errors
            } else {
                return new JSONObject([
                        username: newUser.username,
                        id: newUser.id
                ])
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

    def checkUsername (params) {
        def user = User.findByUsername(params.username)
        return new JSONObject([
                usernameNotTaken: (user==null)
        ])
    }

    def login(params) {
        def user = User.findByUsername(params.username)
        def result = new JSONObject()

        if (user == null) {
            result.put("login", false)
        } else {
            if (params.password == user.password) {
                result.put("login", true)
            } else {
                result.put("login", false)
            }
        }

        return result
    }
}
