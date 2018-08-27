package search.book

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/book/search", controller:'book', action:'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
