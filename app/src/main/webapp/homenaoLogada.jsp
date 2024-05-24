<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./Styles/Home/home.css">
    <style>


        .navbar{
         background-image: url('./Imagens/maresias.jpg');

             background-size: cover;
             background-position: top;
             height: 90vh;
             display: block;
             justify-content: center;
             align-items: center;
             position: relative;

        }
        h1 {
            text-align: center;
        }

        .popup {
          display: none; /* Oculta o pop-up por padrão */
          position: fixed;
          z-index: 9999;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background-color: rgba(0,0,0,0.5);
        }

        .popup-content {
          background-color: #fefefe;
          margin: 20% auto; /* Centraliza o pop-up verticalmente */
          padding: 20px;
          border: 1px solid #888;
          width: 80%;
          max-width: 400px;
        }

        .close {
          color: #aaa;
          float: right;
          font-size: 28px;
          font-weight: bold;
        }

        .close:hover,
        .close:focus {
          color: black;
          text-decoration: none;
          cursor: pointer;
        }

    </style>
    <meta charset="UTF-8">
    <title>Cadastro</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="/HomeNaoLogada"><img src="./Imagens/logo.png"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#footer"><strong>Sobre nos</strong></a>
                    </li>

                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link special-link" href="/cadastrouser">Cadastro</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link special-link" href="/login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- Pop-up de aviso -->
<div id="popup" class="popup">
  <div class="popup-content">
    <span class="close" onclick="fecharPopup()">&times;</span>
    <p>Por favor, faça login antes de continuar.</p>
  </div>
</div>

<h1>Grandes Oportunidades</h1>
<div class="row justify-content-center">

  <c:forEach var="imovel" items="${imoveis}" varStatus="loop">
      <div class="col-md-3 mb-4">
          <div class="card" style="width: 15rem;">
              <div class="card-body text-center">
                  <img src="/img/${imovel.imagens}" class="card-img-top" alt="...">
                  <h5 class="card-title">${imovel.tituloImovel}</h5>
                  <p class="card-text">R$ ${imovel.valorNoite}</p>
                  <!-- Botão com a cor personalizada -->
                  <button onclick="mostrarPopup()" style="background-color: #D2A93F; color: white;">X</button>
              </div>
          </div>
      </div>
      <c:if test="${loop.index % 4 == 3 || loop.last}">
          <div class="row justify-content-center"> <!-- Abre uma nova linha centralizada -->
      </c:if>
  </c:forEach>

</div>

<footer class="footer" id = "footer">

 <div class="container p-4">

   <div class="row">

     <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
       <h5 class="text-uppercase"><strong>Contatos</strong></h5>

       <p>
         <ul>
         <li>Istagram</li>

         <li>Facebook</li>

         <li>X</li>

         <li>realstateAdm@real.com</li>
         </ul>
       </p>
     </div>

     <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
       <h5 class="text-uppercase"><strong>Sobre Nosso Site</strong></h5>

        <p>
                                              Somos uma plataforma dedicada a conectar proprietarios de imoveis com pessoas em busca de lugares incriveis para viver suas experiencias unicas. Com uma vasta gama de opcoes, desde apartamentos acolhedores ate casas luxuosas a beira-mar, estamos aqui para ajuda-lo a encontrar o lar perfeito para suas necessidades.

                                              Navegue pelo nosso site para descobrir uma variedade de opcoes de aluguel, explore os detalhes de cada propriedade e encontre aquela que se encaixa perfeitamente no seu estilo de vida. Com um processo simples e seguro, estamos comprometidos em tornar a busca e a reserva do seu proximo lar uma experiencia tranquila e satisfatoria.

                                              No Real State, acreditamos que cada pessoa merece encontrar um lugar que possa chamar de lar, e estamos aqui para tornar esse sonho uma realidade. Comece sua jornada conosco hoje e encontre o espaco que voce sempre sonhou!
                          </p>
     </div>

   </div>

 </div>

 <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
    2024 Copyright: Real State
   <a class="text-body" href="/HomeNaoLogada">Real.State</a>
 </div>

</footer>

<script>
// Função para exibir o pop-up
function mostrarPopup() {
  var popup = document.getElementById("popup");
  popup.style.display = "block";
}

// Função para fechar o pop-up
function fecharPopup() {
  var popup = document.getElementById("popup");
  popup.style.display = "none";
}
</script>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    // Seleciona todos os links que apontam para o rodapé
    var links = document.querySelectorAll('a[href^="#footer"]');

    // Adiciona um evento de clique em cada link
    links.forEach(function (link) {
      link.addEventListener('click', function (event) {
        event.preventDefault(); // Impede o comportamento padrão do link
        var target = document.getElementById('footer'); // Obtém o elemento de destino (o rodapé)
        target.scrollIntoView({ behavior: 'smooth', block: 'start' }); // Rola a página até o rodapé
      });
    });
  });
</script>

<script src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
