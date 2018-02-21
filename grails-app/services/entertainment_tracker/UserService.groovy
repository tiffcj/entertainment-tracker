package entertainment_tracker

import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONObject
import java.security.Key
import javax.crypto.Cipher
import javax.crypto.spec.SecretKeySpec

@Transactional
class UserService {

    def createUser(params) {
        User newUser = new User()
        newUser.username = params.username

        String password = new String(params.password)
        newUser.password = encryptString(password)

        try {
            if (!newUser.save(flush:true)) {
                println newUser.errors
                return newUser.errors
            } else {
                return newUser
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
        def result = new JSONObject([
                login: false
        ])

        if (user != null && user.password == encryptString(params.password)) {
            result.login = true
        }

        return result
    }

    def encryptString(String str) {
        String key = "JoTlc4hJou9Is45y"

        Key aesKey = new SecretKeySpec(key.getBytes(), "AES")
        Cipher cipher = Cipher.getInstance("AES")

        cipher.init(Cipher.ENCRYPT_MODE, aesKey)
        byte[] encrypted = cipher.doFinal(str.getBytes())

        return new String(encrypted)
    }
}
