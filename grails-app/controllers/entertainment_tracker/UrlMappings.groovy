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
            "/login" (controller: "User", action: "login", method: "POST")
        }

        group("/entertainmentType") {
            "/" (controller: "EntertainmentType", action: "createEntertainmentType", method: "POST")
            "/" (controller: "EntertainmentType", action: "getAllEntertainmentTypes", method: "GET")
        }

        group("/entertainment") {
            "/" (controller: "Entertainment", action: "createEntertainment", method: "POST")
            "/getAll/$entertainmentTypeId" (controller: "Entertainment", action: "getAllByEntertainmentType", method: "GET")
        }

        "/"(view:"/login")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/register"(view:"/register")
        "/startup" (view:"/startup")
    }
}
