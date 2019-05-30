delimiter $$
create procedure IDVEHICULO (in ID_vehiculo integer(8) )
begin
select * from vehiculo
where vehiculo.ID_vehiculo = ID_vehiculo ;
end



delimiter $$
create procedure Colores (in Color varchar(30))
begin
select * from vehiculo
where vehiculo.Color = Color;
END



/*para llamar a la funcion*/
/*CALL taller.colores('ROJO');*/

/*borrar un procedure*/
/*drop procedure colores;*/
