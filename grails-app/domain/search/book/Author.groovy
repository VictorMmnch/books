package search.book

class Author {
    String name
    String lastName

    static hasMany = [books: Book]

    static mapping = {
        id generator: 'increment'
        version false
    }

    static constraints = {
        name nullable:false, blank:false
        lastName nullable:false, blank:false
    }
}
