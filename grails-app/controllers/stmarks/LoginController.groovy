package stmarks

class LoginController {

    def index() {}

    def postLogin() {
        if (params.username&&params.password) {
            def user = User.findByUsernameAndPassword(params.username, params.password);
            if (user){
                session.userId = user.id
                session.username = user.username
                redirect(action: "index", controller: "user")
            }else {
                flash.message = "Wrong Username and Password";
                redirect(action: "index")
            }
        }else {
            redirect(action: "index")
        }
    }

    /*def postLogin(){
        if (params.username && params.password){
            def user=User.findByUsernameAndPassword(params.username, params.password);
            if(user){
                session.userId = user.id;
                session.username = user.username;
                redirect(action: "index", controller: "user")
            }
            else
            {
                flash.message = "Invalid Username or Password"
                redirect(action:"index")
            }
        }
        else{
            redirect(action: "index")
        }
    }*/

    def logout()
    {
        if (session.userId){
            session.userId = "";
            session.username = "";
            session.invalidate()
            redirect(action: "index")
        }
    }
}