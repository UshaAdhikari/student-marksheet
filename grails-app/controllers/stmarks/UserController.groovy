package stmarks

class UserController extends BaseController{

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
        }else {
            flash.message = "Update failed..Please try again..!!"
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
    def save() {
        def user = new User(params);
        if (user.save()) {
            flash.message = "User added successfully"
            redirect(action: "index")
        } else {
            flash.message = "Operation failed..Please try again..!!"
            redirect(action: "create")
        }
    }
    def search() {
        if (params.keyword){
            params.max = 2
            def userList = User.findAllByUsernameIlikeOrUserTypeIlike(params.keyword+"%", params.keyword+"%", params);
            def userCount = User.findAllByUsernameIlikeOrUserTypeIlike(params.keyword+"%", params.keyword+"%", params);
            render (view: "index", model: [ulist: userList, totalCount: userCount, params: params])
        }else {
            redirect(action: "index")
        }
    }

/*user.username = params.username;
user.password = params.password;*/

}
