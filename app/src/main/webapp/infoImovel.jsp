<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./Styles/infoImovel/infoImovel.css">
    <title>Informações do Imóvel</title>
</head>
<body>
    <header>
        <div class="logo">
            <a class="navbar-brand" href="/HomeLogada">
                <img src="./Imagens/logo.png" alt="Logo">
            </a>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </header>

    <br>
    <br>

    <div class="container-table">
        <table class="table-informacoes">
            <c:forEach var="imovel" items="${imovel}">
                <div class="containerIMG-table">
                    <div class="containerIMG">
                        <img src="/img/${imovel.imagens}" class="card-img-top" alt="..." style="width: 600px; height: 320px; object-fit: cover;">
                    </div>
                    <thead>
                        <tr>
                            <th align="center">Imovel</th>
                            <th align="center">Endereco</th>
                            <th align="center">Quartos</th>
                            <th align="center">Banheiros</th>
                            <th align="center">Vagas</th>
                            <th align="center">Valor</th>
                            <th align="center">Observacoes</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <tr>
                            <td align="center">${imovel.tituloImovel}</td>
                            <td align="center">${imovel.endereco}</td>
                            <td align="center">${imovel.numQuartos}</td>
                            <td align="center">${imovel.numBanheiro}</td>
                            <td align="center">${imovel.numVagas}</td>
                            <td align="center">R$ ${imovel.valorNoite}</td>
                            <td align="center">${imovel.obs}</td>
                        </tr>
                    </tbody>
                </div>
            </c:forEach>
        </table>

        <br>
        <br>

        <table class="table-contato">
            <c:forEach var="imovel" items="${imovel}">
                <thead>
                    <tr>
                        <th scope="col">Email de Contato</th>
                        <th scope="col">Telefone de Contato</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <td><a href="mailto:${imovel.email}">${imovel.email}</a></td>
                        <td><a href="tel:${imovel.telefone}">${imovel.telefone}</a></td>
                    </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>

    <footer class="footer" id="footer">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase"><strong>Contatos</strong></h5>
                    <ul>
                        <li>Instagram</li>
                        <li>Facebook</li>
                        <li>X</li>
                        <li>realstateAdm@real.com</li>
                    </ul>
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
            <a class="text-body" href="/HomeLogada">Real.State</a>
        </div>
    </footer>

    <script src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
