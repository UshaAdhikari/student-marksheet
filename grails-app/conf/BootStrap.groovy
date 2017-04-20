import stmarks.User

class BootStrap {

    def init = { servletContext ->
        new User(username: "admin", password: "admin", userType: "admin").save();//it saves the user when u first run the program
        new User(username: "admin1", password: "admin", userType: "admin").save();
        new User(username: "admin2", password: "admin", userType: "admin").save();
        new User(username: "admin3", password: "admin", userType: "admin").save();
        new User(username: "admin4", password: "admin", userType: "admin").save();
    }
    def destroy = {
    }
}
