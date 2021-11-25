declare function local:checkBigFine($name as xs:string) {
for $w in 
doc("project_fines.xml")/fines/Fine
where contains($w/@owner, $name)
return
<finefindersize>
  {$name},
  {if ($w/amount > 100 and $w/paid = "false")
    then round($w/amount)
  else "Not a big fine"
  }
</finefindersize>
};
for $j in 
doc("project_customer.xml")/customers/Customer
return
<fines>
{local:checkBigFine($j/@name)}
</fines>