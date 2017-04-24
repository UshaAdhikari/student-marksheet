package stmarks

class SubjectController {

    def index() {
        params.max = 2
        def subjectList = Subject.list(params);
        [sublist: subjectList, totalCount:Subject.count()]
    }

    def edit(){
        def subject = Subject.get(params.id);
        [subjectInfo: subject]
    }

    def update(){
        def subject = Subject.get(params.id);
        subject.subName = params.subName
        subject.totalMarks = Integer.parseInt(params.totalMarks)

        if(subject.save())
        {
            flash.message = "Subject updated successfully"
            redirect(action: "index")
        }else
        {
            flash.message = "Update failed..Please try again..!!"
            render (view: "edit", model: [subjectInfo: subject])
        }
    }
    def search() {
        if (params.keyword){
            params.max = 2
            def subjectList = Subject.findAllBySubNameIlikeOrTotalMarks(params.keyword+"%", params.keyword+"%", params);
            def subjectCount = Subject.findAllBySubNameIlikeOrTotalMarks(params.keyword+"%", params.keyword+"%", params);
            render (view: "index", model: [sublist: subjectList, totalCount: subjectCount, params: params])
        }else {
            redirect(action: "index")
        }
    }
    def delete(){
        def subject = Subject.get(params.id);
        if(subject){
            subject.delete();
            flash.message = "Subject deleted successfully"
            redirect(action: "index")
        }else
        {
            flash.message = "Subject does not exist."
            redirect(action: "index")
        }
    }

    def create() {

    }

    def save() {
        def subject = new Subject(params);
        if (subject.save()) {
            flash.message = "Subject added successfully"
            redirect(action: "index")
        } else {
            flash.message = "Operation failed..Please try again..!!"
            redirect(action: "create")
        }
    }
}