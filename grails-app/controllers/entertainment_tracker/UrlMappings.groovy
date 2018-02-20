package entertainment_tracker

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        group("/user") {
            "/login" (controller: "User", action: "login", method: "POST")
            "/addUser" (controller: "User", action: "addUser", method: "POST")
            "/checkUsername" (controller: "User", action: "checkUsername", method:"GET")
        }

        "/"(view:"/login")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/register"(view:"/register")
    }
}
