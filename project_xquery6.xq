declare function local:function1() {
  for $w in 
  doc("project_book.xml")/librarybooks/Book/librarydetails/borrowedby
  for $x in 
  doc("project_book.xml")/librarybooks/Book/bookdetails/title
  where contains($w/borrowedby, $x/title)
  return
  <kevslammedhisheadonthekeyboard>
    {$w/borrowedby}
    {$x/title}
  </kevslammedhisheadonthekeyboard>
};
<fines>
  {local:function1()}
</fines>