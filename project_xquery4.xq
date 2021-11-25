declare function local:customersFines() {
  for $w in 
  doc("project_fines.xml")/fines/Fine
  for $x in 
  doc("project_customer.xml")/customers/Customer
  where contains($x/@name, $w/@owner)
  return
  <finesOwed>
      {$x/@name}
    {$x/Account.email}
      You have a fine total of {round($w/amount)}
    {$w/dueBy}
  </finesOwed>
};
<fines>
  {local:customersFines()}
</fines>