package stmarks

class UserController {

    def index() {
        params.max = 2 //params.max is used for per page max data display
        def userList = User.list(params);
        [ulist: userList, totalCount:User.count()]
    }
    def edit(){
        def user = User.get(params.id);
        [userInfo: user]
    }

    def update(){
        def user = User.get(params.id);
        user.username = params.username
        user.password = params.password
        user.userType = params.userType

        if(user.save())
        {
            flash.message = "User updated successfully."
            redirect(action: "index")
        }else
        {
            render (view: "edit", model: [userInfo: user])
        }
    }
    def delete(){
        def user = User.get(params.id);
        if(user){
            user.delete();
            flash.message = "User deleted successfully"
            redirect(action: "index")
        }else
        {
            flash.message = "User does not exist."
            redirect(action: "index")
        }
    }

    def create(){

    }
    def save()
    {
        def user = new User(params);
        if(user.save())
        {
            redirect(action: "index")
        }else
        {
            redirect(action: "create")
        }


/*user.username = params.username;
user.password = params.password;*/

    }
}