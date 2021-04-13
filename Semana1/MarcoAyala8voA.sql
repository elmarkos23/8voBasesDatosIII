/*
  Autor Marco Ayala
  Curso: 8vo A
  Rebote Semana 1
*/

/*Realizar una consulta que muestre el nombre de departamento, el total de empleados por departamento.*/
select d.nomdep as departamento,count(e.*) as totalEmpleados
from departamento as d
inner join empleado as e on e.dept=d.numdep
group by d.nomdep

/*Realizar una consulta que muestre el nombre de departamento, el total de sueldos pagados*/
select d.nomdep as departamento,sum(e.salario) as salariospagados
from departamento as d
inner join empleado as e on e.dept=d.numdep
group by d.nomdep

/*Actualizar los sueldos de los empleados de "DESARROLLO, SOFTWARE y ADMINISTRACION" subiendo el 10%*/
update empleado set
salario=e.salario+((e.salario*10)/100)
FROM empleado as e
inner join departamento as d on d.numdep=e.dept
where d.nomdep in ('DESARROLLO','ADMINISTRACION','SOFTWARE')

/*Realizar una consulta que muestre el nombre de departamento, el género y el promedio de sueldos pagados*/
select d.nomdep as departamento,e.sexo,AVG(e.salario) as salariospagados
from departamento as d
inner join empleado as e on e.dept=d.numdep
group by d.nomdep,e.sexo 


