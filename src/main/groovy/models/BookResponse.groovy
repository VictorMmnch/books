package models

import java.util.LinkedList

public class BookResponse { 
	String title
	String image
	List<Map> authors

	public BookResponse(){
		authors = new ArrayList()
	}
}