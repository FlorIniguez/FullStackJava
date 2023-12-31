<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TP 1</title>
    <link rel="stylesheet" href="../style/style.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
  </head>

  <body>
    <header class="container-fluid">
      <div class="row">
        <nav
          class="navbar bg-dark border-bottom border-body navbar-expand-lg"
          data-bs-theme="dark"
        >
          <div class="container">
            <a
              class="navbar-brand"
              href="../index.html
          "
            >
              <img
                src="../imagenes/codoacodo.png"
                alt="logo-codo"
                class="align-text-center logo-codo"
              />
              Conf Bs As
            </a>

            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarScroll"
              aria-controls="navbarScroll"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>

            <div
              class="collapse navbar-collapse text-center text-light"
              id="navbarScroll"
            >
              <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="#">
                    La conferencia
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Los oradores </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" aria-disabled="true"
                    >El lugar y la fecha</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-disabled="true"
                    >Conviertete en orador
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    href="./compra.html"
                    class="nav-link"
                    aria-disabled="true"
                    style="color: rgb(109, 196, 38)"
                  >
                    Comprar tickets</a
                  >
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <div class="container body-compra w-60">
      <main class="container cards mt-5">
        <div class="cards-group d-flex justify-content-center flex-wrap">
          <div
            class="card rounded-0 border-primary mb-3 mx-1 p-2"
            style="max-width: 18rem"
          >
            <div class="card-body text-center">
              <h5 class="card-title">Estudiante</h5>
              <p class="card-text">Tienen un descuento</p>
              <p class="card-text fw-bold">80%</p>
              <p class="card-text">*presentar documentación</p>
            </div>
          </div>

          <div
            class="card rounded-0 border-success mb-3 mx-1 p-2"
            style="max-width: 18rem"
          >
            <div class="card-body text-center">
              <h5 class="card-title">Trainee</h5>
              <p class="card-text">Tienen un descuento</p>
              <p class="card-text fw-bold">50%</p>
              <p class="card-text">*presentar documentación</p>
            </div>
          </div>

          <div
            class="card rounded-0 border-warning mb-3 mx-1 p-2"
            style="max-width: 18rem"
          >
            <div class="card-body text-center">
              <h5 class="card-title">Junior</h5>
              <p class="card-text">Tienen un descuento</p>
              <p class="card-text fw-bold">15%</p>
              <p class="card-text">*presentar documentación</p>
            </div>
          </div>
        </div>
      </main>

      <main class="container mx-auto container-form">
        <div class="texto">
          <p class="text-center">VENTA</p>
          <h2 class="text-center">VALOR DEL TICKET $200</h2>
        </div>

        <div class="row mt-2 mb-3">
          <div class="col">
            <input
              type="text"
              class="form-control"
              placeholder="Nombre"
              aria-label="Nombre"
            />
          </div>

          <div class="col">
            <input
              type="text"
              class="form-control"
              placeholder="Apellido"
              aria-label="Apellido"
            />
          </div>
        </div>

        <div class="col">
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder="Correo"
          />
        </div>

        <div class="row mt-2">
          <div class="col">
            <label for="exampleFormControlInput1" class="form-label"
              >Cantidad</label
            >
            <input
              type="number"
              class="form-control input-cantidad"
              aria-label="Cantiidad"
              placeholder="cantidad"
              min="0" max="100"
            />
          </div>

          <div class="col">
            <label for="exampleFormControlInput1" class="form-label"
              >Categoria</label
            >
            <select id="seleccion" class="form-select" aria-label="Default select example">

              <option value="sinDescuento">Sin categoria</option>
              <option value="estudiante">Estudiante</option>
              <option value="trainee">Trainee</option>
              <option value="junior">Junior</option>
            </select>
          </div>
        </div>

        <div class="col p-1 mt-4">
          <p class="total-pago border-primary rounded bg-primary-subtle text-primary p-3">
            Total a Pagar: $
          </p>
        </div>
        <div class="col p-1 my-3 d-flex justify-content-between contenedor-btns">

          <button type="button" class="btn btn-compra borrar py-2">
            Borrar
          </button>
          <button type="button" class="btn btn-compra resumen py-2">
            Resumen
          </button>
        </div>
      </main>
    </div>

    <footer class="mt-5 footer">
      <div class="row text-light justify-content-evenly aling-items-center">
        <p class="col-md-auto p-3 p-sm-2">
          Preguntas <br />
          frecuentes
        </p>
        <p class="col-md-auto p-3 p-sm-1">Contáctanos</p>
        <p class="col-md-auto p-3 p-sm-1">Prensa</p>
        <p class="col-md-auto p-3 p-sm-1">Conferencias</p>
        <p class="col-md-auto p-3 p-sm-1">Términos y <br />condiciones</p>
        <p class="col-md-auto p-3 p-sm-1">Privacidad</p>
        <p class="col-md-auto p-3 p-sm-1">Estudiantes</p>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
      integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
      crossorigin="anonymous"
    ></script>
    <script src="../js/main.js"></script>
  </body>
</html>

