package com.pantuflas.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Pantuflas")
public class Pantuflas {

	
	
	//Atribtuos 
	private String color;
	private float nCalzado;
	private String marca;
	private Double precio;
	
	//Crear Pkey y AutoIncrem.
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long Id;
		public long getId() {
			return Id;
		}


		
		  //C. vacio 
		public Pantuflas() {
		 super();
	    }
		
		
		//Get and Set
		public void setId(long id) {
			Id = id;
		}








		public String getColor() {
			return color;
		}








		public void setColor(String color) {
			this.color = color;
		}








		public float getnCalzado() {
			return nCalzado;
		}








		public void setnCalzado(float nCalzado) {
			this.nCalzado = nCalzado;
		}








		public String getMarca() {
			return marca;
		}








		public void setMarca(String marca) {
			this.marca = marca;
		}








		public Double getPrecio() {
			return precio;
		}








		public void setPrecio(Double precio) {
			this.precio = precio;
		}



		
		
}
