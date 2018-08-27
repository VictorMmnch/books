package search.book

class Author {
    String name
    String lastName

    static hasMany = [books: Book]

    static mapping = {
        
    }

    static constraints = {
        name nullable:false, blank:false
        lastName nullable:false, blank:false
    }
}
