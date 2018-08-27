package search.book

import models.BookResponse
import java.sql.Blob
import grails.gorm.transactions.Transactional

@Transactional
class BookService {

    def serviceMethod() {

    }

    def searchByNameAndAuthor(){
    	println "llega al service"
    }

    def getBooksWithImage(){
    	def bookList = []
    	Book.list().each{it->
            bookList.add(transformBook(it.title,it.bookImage,it.author.name, it.author.lastName))
    	}
    	bookList
    }

    def findByAuthorOrBookName(String bookTitle, String authorName){
        String query = "select b.title, b.bookImage, a.name, a.lastName  from Book b inner join Author a on a.id= b.author.id and a.name like :authorName where b.title like :bookTitle"
        def response = Book.executeQuery(query, [authorName:"%"+authorName+"%", bookTitle:"%"+bookTitle+"%"])
        List<Book> bookList = new ArrayList()
        response.each{it->
             bookList.add(transformBook(it[0], it[1], it[2], it[3]))
        }
        bookList
    }

    def transformBook(String bookTitle, Blob  bookImage, String authorName, String authorLastName) {
            BookResponse brInstance = new BookResponse();
            brInstance.authors.add(authorName +" "+ authorLastName)
            brInstance.title= bookTitle
            brInstance.image= new String(bookImage.getBytes(1l, (int) bookImage.length()))
            brInstance
    }
}
