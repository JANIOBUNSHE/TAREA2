<?php require_once('../html/head2.php') ?>




<div class="row">

    <div class="col-lg-8 d-flex align-items-stretch">
        <div class="card w-100">
            <div class="card-body p-4">
                <h5 class="card-title fw-semibold mb-4">Lista GENERAL DE Pacientes</h5>

                <div class="table-responsive">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modal_Pacientes">
                        NUEVO PACIENTE
                    </button>
                    <table class="table text-nowrap mb-0 align-middle">
                        <thead class="text-dark fs-4">
                            <tr>
                                <th class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0">#</h6>
                                </th>
                                <th class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0">Nombres</h6>
                                </th>
                                <th class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0">Fecha_Nacimiento</h6>
                                </th>
                                <th class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0">tipo_enfermedad</h6>
                                
                                <th class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0">Opciones</h6>
                                </th>
                            </tr>
                        </thead>
                        <tbody id="tabla_pacientes">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Ventana Modal-->

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="Modal_pacientes" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" id="form_pacientes">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Pacientes</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="Cédula">Cédula</label>
                        <input type="text" onfocusout="algoritmo_cedula();cedula_repetida();" required class="form-control" id="cedula" name="cedula" placeholder="Cédula">
                        <div class="alert alert-danger d-none" role="alert" id="errorCedula">
                        </div>
                        <div class="alert alert-danger d-none" role="alert" id="CedulaRepetida">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombre">nombre</label>
                        <input type="text" required class="form-control" id="nombre" name="nombre" placeholder="nombre">
                    </div>
                    <div class="form-group">
                        <label for="fecha_nacimiento">fecha_nacimiento </label>
                        <input type="date" required class="form-control" id="fecha_nacimiento" name="fecha_nacimiento" placeholder="fecha_nacimiento">
                    </div>
                    <div class="form-group">
                        <label for="Telefono">genero</label>
                        <input type="text" required class="form-control" id="genero" name="genero" placeholder="genero">
                    </div>
                    <div class="form-group">
                        <label for="tipo_enfermedad">tipo_enfermedad</label>
                        <select name="tipo_enfermedad" id="tipo_enfermedad" class="form-control">
                            <option value="diabetico">diabetico</option>
                            <option value="hipertencion">hipertencion</option>
                            <option value="cancer">cancer</option>
                            <option value="infecciones">infecciones</option>
                            <option value="fracturas">fracturas</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="Correo">Correo</label>
                        <input type="text" required onfocusout="verifica_correo()" class="form-control" id="correo" name="correo" placeholder="Correo">
                        <div class="alert alert-danger d-none" role="alert" id="CorreoRepetido">
                            <input name="test" id="test" value="test" type="hidden" />
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Grabar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php require_once('../html/script2.php') ?>

<script src="pacient.controller.js"></script>
<script src="pacient.model.js"></script>