package br.com.uff.compubiq.model;

import java.util.HashMap;

public abstract class ArduinoConnector {
	private String port;
	private String source;
	
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	
	public abstract HashMap<String,Double> getData();

}
