package Clases;

public class Encuesta {
	
	private int sonido;
	private int imagen;
	private int facilidad;
	
	public Encuesta( int sonido, int imagen, int facilidad) {
		
		this.sonido = sonido;
		this.imagen = imagen;
		this.facilidad = facilidad;
		
	}
	
	public int getSonido() {
		return sonido;
	}
	
	public int getImagen() {
		return imagen;
	}
	
	public int getFacilidad() {
		return facilidad;
	}
	
	public void setSonido(int sonido) {
		this.sonido = sonido;
	}
	
	public void setImagen(int imagen) {
		this.imagen = imagen;
	}
	
	public void setFacilidad(int facilidad) {
		this.facilidad = facilidad;
	}
	
	public void getMedia(int imagen, int sonido, int facilidad) {
		
	}
	
	public String toString() {
		return "Esta encusta tiene una valoracion en: sonido - "+sonido+" , imagen - "+ imagen +" , facilidad - "+ facilidad +".";
	}
	
    public double calcularMedia() {
        return (sonido + imagen + facilidad) / 3.0;
    }

}
