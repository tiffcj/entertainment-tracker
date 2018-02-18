package entertainment_tracker

class User {
    String username
    String password

    static constraints = {
        username unique: true
    }

    static mapping = {
        id generator: 'sequence', params: [sequence: 'USER_SEQUENCE']
        version false
    }
}
