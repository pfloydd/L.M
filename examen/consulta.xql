for $x in doc("info.xml")//empleados/empleado
let $nombre := $x/text()
return
  <usuario nombre="{$nombre}">
  {
    for $actividad in $x/../..
    let $dia := $actividad/tipo/text()
    order by $dia
    return
      <actividad dia="{$dia}">
      {
        for $hora in $actividad/horario/dia/hora1
        return
          <hora>{ $