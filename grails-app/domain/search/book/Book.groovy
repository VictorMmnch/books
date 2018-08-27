package search.book


import java.sql.Blob

class Book {

	String title
	Blob bookImage
    static belongsTo = [author:Author] 

    static mapping = {
    	bookImage type:"blob", column:"b64"
    }
	

    static constraints = {
    }

}
