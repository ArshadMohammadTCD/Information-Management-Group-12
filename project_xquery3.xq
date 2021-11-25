for $j in
doc ("project_book.xml")/librarybooks/Book/bookdetails
where contains($j/title, "Don Bodewell's Wild Ride")
return
  <title_Don_Bodewell_s_Wild_Ride_corresponds>
  {string($j/title)} is in Stock
</title_Don_Bodewell_s_Wild_Ride_corresponds>