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
public class BD {
    private static ArrayList<Clientes> clientes;
    public static ArrayList<Clientes> getClientes(){
        if(clientes==null){
            clientes = new ArrayList<>();            
            }
        return clientes;
    }
 
    private static ArrayList<Fornecedores> fornecedores;
    public static ArrayList<Fornecedores> getFornecedores(){
        if(fornecedores==null){
            fornecedores = new ArrayList<>();
            
        }
        return fornecedores;
    }
}
