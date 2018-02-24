package entertainment_tracker

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        group("/user") {
            "/" (controller: "User", action: "createUser", method: "POST")
            "/checkUsername/$username" (controller: "User", action: "checkUsername", method:"GET")
            "/login" (controller: "User", action: "login", method: "GET")
        }

        group("/entertainmentType") {
            "/" (controller: "EntertainmentType", action: "createEntertainmentType", method: "POST")
            "/" (controller: "EntertainmentType", action: "getAllEntertainmentTypes", method: "GET")
        }

        group("/entertainment") {
            "/" (controller: "Entertainment", action: "createEntertainment", method: "POST")
            "/getAll/$entertainmentTypeId" (controller: "Entertainment", action: "getAllByEntertainmentType", method: "GET")
        }

        group("/progress") {
            "/" (controller: "Progress", action: "createProgress", method: "POST")
            "/getAll/$username" (controller: "Progress", action: "getAllByUser", method: "GET")
            "/delete/$id" (controller: "Progress", action: "deleteProgress", method: "POST")
            "/$id" (controller: "Progress", action: "updateProgress", method: "PUT")
        }

        "/"(view:"/login")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/login"(view:"/login")
        "/register"(view:"/register")
        "/startup" (view:"/startup")
        "/home/$username"(view:"/home")
        "/create/$username"(view:"/create")
    }
}
