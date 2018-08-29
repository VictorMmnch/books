package search.book


import java.sql.Blob

class Book {
	String title
	Blob bookImage
    static belongsTo = [author:Author] 

	
    static mapping = {
        id generator: 'increment'
        bookImage type:"blob", column:"b64"
        version false
    }
    static constraints = {
    }

}
