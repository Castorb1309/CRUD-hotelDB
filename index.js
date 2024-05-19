let mysql = require('mysql')

let conexion = mysql.createConnection({
    host:'',
    database:"hotel",
    user:"root",
    password:"",
});

conexion.connect(function(error){
    if(error) throw error
    else{
        console.log("conexion exitosa");
    }
})

//mostrar
// selecione una tabla de la base de datos
const mostrar = "SELECT * FROM employee";
conexion.connect(mostrar,function(error,lista){
    if(error) throw error
    else{
        console.log(lista);
    }
})

//insertar 
//selecione una tabla para insertar
const insert ="INSERT INTO `employee` (`eid`, `employee_SSN`, `employee_first_Name`, `employee_father_Name`, `employee_family_Name`, `employee_email`, `employee_nationality`, `starting_date`, `salary`, `password`) VALUES (NULL, NULL, 'xd', 'dddddddddd', 'no se', 'nose@gmail.com', 'negro', 'curdate()', '0.10', 'ddddddddddddddddd');"
conexion.connect(insert,function(error,lista){
    if(error) throw error
    else{
        console.log(lista);
    }
})

//actualizar
//selecione una tabla para  actualizar
const update = "UPDATE `employee` SET `salary` = '10000' WHERE `employee`.`eid` = 1004;"
conexion.query(update,function(error,lista){
    if(error) throw error
    else{
        console.log('actualizado');
    }
})
const borrar= "DELETE FROM employee WHERE `employee`.`eid` = 1000";
conexion.query(borrar,function(error,lista){
    if(error) throw error
    else{
        console.log('borrado exitoso');
    }
})
conexion.end();