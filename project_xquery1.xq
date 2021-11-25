for $j in doc("project_book.xml")/librarybooks/Book/bookdetails/author 
return
("Book", $j)