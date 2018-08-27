package search.book

class BookController {

	def bookService

    def index() {
       render( view:'search',  model: [books:bookService.getBooksWithImage()])
    }

    def findByAuthorOrBookName(){
    	render (view:'results', model:[books:bookService.findByAuthorOrBookName(params.name, params.author)])
    }


}
