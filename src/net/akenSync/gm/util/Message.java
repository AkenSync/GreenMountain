package net.akenSync.gm.util;

public class Message {
	private int typeMessage;
	private String action;
	private String message;
	public Message(int i, String string) {
		if(i==1) setMessage(string+" effectuée");
		setTypeMessage(i);
	}
	public int getTypeMessage() {
		return typeMessage;
	}
	public void setTypeMessage(int typeMessage) {
		this.typeMessage = typeMessage;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
