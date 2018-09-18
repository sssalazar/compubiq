package br.com.uff.compubiq.model;

import br.pro.turing.javino.*;
import java.util.HashMap;

public class LocalArduinoConnector extends ArduinoConnector{	
	private Javino javino;
	
	public LocalArduinoConnector(String port) {
		// TODO Auto-generated constructor stub
		setPort(port);
	}
	
	@Override
	public HashMap<String, Double> getData() {
		// TODO Auto-generated method stub
		HashMap<String, Double> data = new HashMap<String, Double>();
		data.put("temperatura", getTemp());
		data.put("luminosidade", getLuminosity());
		return data;
		
	}
	public double getTemp() {
        String ask = "temperatura";
        if (javino.requestData(getPort(), ask)){
            return Double.parseDouble(javino.getData());
        } else{
            System.err.println("No TEMP data available");
            return 0;
        }
	}
	
    public double getLuminosity() {
        String ask = "luminosidade";
        if (javino.requestData(getPort(), ask)){
            return Double.parseDouble(javino.getData());
        } else{
            System.err.println("No LUMINOSITY data available");
            return 0;
        }

    }
	
}
