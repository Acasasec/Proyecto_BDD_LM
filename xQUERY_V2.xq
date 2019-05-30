<html>
  <body>
    <table border="1">
      <tr>
        <td>ID_vehiculo</td>
        <td>Matricula</td>
        <td>Num_Bastidor</td>
        <td>Color</td>
        <td>Num_asientos</td>
        <td>Precio</td>
        <td>ID_Serie</td>
      </tr>   
{
  for $veh in db:open("vehiculos_v2")/vehiculos/vehiculo
  let $id := $veh/ID_vehiculo
  let $matricula := $veh/Matricula
  let $bastidor := $veh/numBastidor
  let $color := $veh/Color
  let $asientos := $veh/numAsientos
  let $precio := $veh/precio
  let $id_serie := $veh/ID_Serie
  order by $veh/ID_vehiculo
  return <tr><td>{data($id)}</td><td>{data($matricula)}</td><td>{data($bastidor)}</td><td>{data($color)}</td><td>{data($asientos)}</td><td>{data($precio)}</td><td>{data($id_serie)}</td></tr>  
}              
     </table>
     
     <p>Total número de vehículos: 
     {
       let $numero_vehiculos := count(db:open("vehiculos_v2")/vehiculos/vehiculo)
       return $numero_vehiculos
     }</p>
  </body>
</html>






