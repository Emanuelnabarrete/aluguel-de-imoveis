package br.com.imoveisservlet.model;

public class LoginDTO {

    private boolean logged;
    private String identificacao;


    public LoginDTO(boolean logged, String identificacao) {
        this.logged = logged;
        this.identificacao = identificacao;
    }

    public boolean isLogged() {
        return logged;
    }

    public String getIdentificacao() {
        return identificacao;
    }
}
