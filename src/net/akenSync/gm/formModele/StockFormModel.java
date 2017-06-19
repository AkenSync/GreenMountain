package net.akenSync.gm.formModele;

public class StockFormModel {
	private long id;
	private String name;
	private String description;
	private String address;

	public StockFormModel() {
		super();
	}
	
	public StockFormModel(long id, String name, String description, String address) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.address = address;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String stockName) {
		this.name = stockName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


}
