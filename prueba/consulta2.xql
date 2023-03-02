for $x in doc("pr.xml")/academia/baile
where $x/sala=2 and $x/precio<35
return $x