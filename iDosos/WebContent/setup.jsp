<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!doctype html>
  <html lang="en">
    <head>
      <meta charset="UTF-8"/>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css"/>
        <title>Arduino Setup</title>
      </head>
      <body class="text-center">
        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
          <header class="masthead mb-auto">
            <div class="inner">
              <h3 class="masthead-brand">UFF</h3>
              <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link" href="temperatura.jsp">Temperatura</a>
                <a class="nav-link" href="luminosidade.jsp">Luminosidade</a>
                <a class="nav-link active" href="setup.jsp">Configurações</a>
              </nav>
            </div>
          </header>

          <main role="main" class="inner cover">
            <div class="form-body mx-auto">
              <h1>Configurações</h1>
              <div class="form text-left">
                <form action="ArduinoDataServlet">
                  <div class="form-group">
                    <label for="origem-select">Origem</label>
                    <select name="origem" id="origem-select" class="form-control" disabled="disabled">
                      <option value="local">Local</option>
                      <option value="remote">Remote</option>
                    </select>
                    <small class="form-text text-muted"></small>
                  </div>
                  <div class="form-group">
                    <label for="porta-input">Porta</label>
                    <input type="text" id="porta-input/" class="form-control">
                      <small class="form-text text-muted">
                      </small></div>
                      <div class="form-group text-right">
                        <input type="reset" value="Limpar" class="btn btn-primary"/>
                        <input type="submit" value="Enviar" class="btn btn-primary"/>
                      </div>
                      </form>
                    </div>
                  </div>
                </main>

                <footer class="mastfoot mt-auto">
                  <p>
                    Desenvolvido para a aula de Computação Ubíqua no IC da UFF no semestre 2018-2.
                  </p>
                </footer>
              </div>
              <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
              <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            </body>
          </html>
