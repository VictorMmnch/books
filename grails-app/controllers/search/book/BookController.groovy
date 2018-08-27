package search.book

class BookController {

	def bookService

    def index() {
       render( view:'list',  model: [books:bookService.getBooksWithImage()])
    }
    
    def showView(){
    	render (view:'results', model:[books:[]])
    }

    def findByAuthorOrBookName(){
    	render (view:'results', model:[books:bookService.findByAuthorOrBookName(params.name, params.author)])
    }


}
