/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Cristian
 */
public class Retencion {

    private float salarioBruto;
    private float salarioNeto;
    private float retencion;

    public Retencion() {
    }

    public float getSalarioBruto() {
        return salarioBruto;
    }

    public void setSalarioBruto(float salarioBruto) {
        this.salarioBruto = salarioBruto;
        
        if (this.salarioBruto <= 1000) {
            this.retencion = 0;
        } else if (this.salarioBruto > 1000 && this.salarioBruto < 3000) {
            this.retencion = this.salarioBruto / 10;
        } else if (this.salarioBruto >= 3000) {
            this.retencion = this.salarioBruto / 20;
        }
        this.salarioNeto = this.salarioBruto - this.retencion;
    }

    public float getRetencion() {
        return retencion;
    }

    public void setRetencion(float retencion) {
        this.retencion = retencion;
    }

    public float getSalarioNeto() {
        return salarioNeto;
    }

    public void setSalarioNeto(float salarioNeto) {
        this.salarioNeto = salarioNeto;
    }

}
