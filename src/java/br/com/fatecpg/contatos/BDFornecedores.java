/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.contatos;

import java.util.ArrayList;

/**
 *
 * @author Hayba
 */
public class BDFornecedores {
    private static ArrayList<ContatoFornecedores> contatos;
    public static ArrayList<ContatoFornecedores> getContatos(){
        if(contatos==null){
            contatos = new ArrayList<>();
            ContatoFornecedores c1 = new ContatoFornecedores();
            c1.setCnpj("11111111111111");
            c1.setNome("Primeira Empresa");
            c1.setRazaosocial("Empresa Primeira");
            c1.setEndereco("Primeiro endereço n1");
            c1.setTelefone("1111-1111");
            c1.setEmail("Empresa01@email.com");
            contatos.add(c1);
            
            ContatoFornecedores c2 = new ContatoFornecedores();
            c2.setCnpj("22222222222222");
            c2.setNome("Segunda Empresa");
            c2.setRazaosocial("Empresa Segunda");
            c2.setEndereco("Segundo endereço n2");
            c2.setTelefone("2222-2222");
            c2.setEmail("Empresa02@email.com");
            contatos.add(c2);
        }
        return contatos;
    }
}
