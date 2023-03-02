for $x in doc("pr.xml")/academia/baile

return concat(data($x/@nombre), " - ", ($x/profesor), " - ", ($x/precio))