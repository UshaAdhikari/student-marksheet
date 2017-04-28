package stmarks

class BaseController {

    def beforeInterceptor = [action: this.&auth];
    //before calling the beforeInterceptor method this method searchs for the auth method

    def auth() {
        if (!session.userId) {
            redirect(action: "index", controller: "login")
        }
    }
}
