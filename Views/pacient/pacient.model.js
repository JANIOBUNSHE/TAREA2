
class Pacient_Model {
  constructor(
    UsuarioId,
    cedula,
    nombre,
    fecha_nacimiento,
    genero,
    tipo_enfermedad,
    correo,
    test,
    Ruta
  ) {
    this.UsuarioId = UsuarioId;
    this.cedula = cedula;
    this.nombre = nombre;
    this.fecha_nacimiento = fecha_nacimiento;
    this.genero = genero;
    this.tipo_enfermedad = tipo_enfermedad;
    this.correo = correo;
    this.test = test;
    this.Ruta = Ruta;
  }
  todos() {
    var html = "";
    $.get("../../Controllers/pacient.controller.php?op=" + this.Ruta, (res) => {
      res = JSON.parse(res);
      $.each(res, (index, valor) => {
        var fondo;
        if(valor.tipo_enfermedad == "diabetico") fondo ="bg-secondary"
        else if(valor.tipo_enfermedad == "hipertencion") fondo = "bg-secondary"
        else if(valor.tipo_enfermedad == "cancer") fondo = "bg-secondary"
        else if(valor.tipo_enfermedad == "infecciones") fondo = "bg-secondary"
        else if(valor.tipo_enfermedad == "fracturas") fondo = "bg-secondary"
        html += `<tr>
                <td>${index + 1}</td>
                <td>${valor.nombre}</td>
                <td>${valor.fecha_nacimiento}</td>
                <td><div class="d-flex align-items-center gap-2">
                <span class="badge ${fondo} rounded-3 fw-semibold">${
                  valor.tipo_enfermedad
                }</span>
            </div></td>
            <td>
            <button class='btn btn-success' onclick='editar(${
              valor.usuario_id
            })'>Editar</button>
            <button class='btn btn-danger' onclick='eliminar(${
              valor.usuario_id
            })'>Eliminar</button>
            <button class='btn btn-info' onclick='ver(${
              valor.usuario_id
            })'>Ver</button>
            </td></tr>
                `;
      });
      $("#tabla_pacientes").html(html);
    });
  }

  insertar() {
    var dato = new FormData();
    dato = this.correo;
   $.ajax({
    url: "../../Controllers/pacient.controller.php?op=insertar",
    type: "POST",
    data: dato,
    contentType: false,
    processData: false,
    success: function (res) {
        res = JSON.parse(res);
        if(res === "ok"){
            Swal.fire("pacientes", "Paciente Registrado", "success");
            todos_controlador();
        }else{
            Swal.fire("Error", res, "error"); 
        }
    }
   });
   this.limpia_Cajas();    
  }

  cedula_repetida(){
    var Cedula = this.Cedula;
    $.post("../../Controllers/pacient.controller.php?op=cedula_repetida", {Cedula: Cedula}, (res) => {
        res = JSON.parse(res);
        if( parseInt(res.cedula_repetida) > 0){
            $('#CedulaRepetida').removeClass('d-none');
            $('#CedulaRepetida').html('La cédula ingresa, ya exite en la base de datos');
            $('button').prop('disabled', true);
        }else{
            $('#CedulaRepetida').addClass('d-none');
            $('button').prop('disabled', false);
        }

    })
  }

  verifica_correo(){
    var Correo = this.Correo;
    $.post("../../Controllers/pacient.controller.php?op=verifica_correo", {Correo: Correo}, (res) => {
        res = JSON.parse(res);
        if( parseInt(res.cedula_repetida) > 0){
            $('#CorreoRepetido').removeClass('d-none');
            $('#CorreoRepetido').html('El correo ingresado, ya exite en la base de datos');
            $('button').prop('disabled', true);
        }else{
            $('#CorreoRepetido').addClass('d-none');
            $('button').prop('disabled', false);
        }
    })
  }

  limpia_Cajas(){
    document.getElementById("cedula").value = "";
    document.getElementById("nombre").value = "";  
    document.getElementById("fecha_nacimiento").value = "";
    document.getElementById("genero").value = "";
    document.getElementById("tipo_enfermedad").value = "";
    document.getElementById("correo").value = "";
    document.getElementById("test").value = "";
    $("#Modal_pacientes").modal("hide");
  }
}
