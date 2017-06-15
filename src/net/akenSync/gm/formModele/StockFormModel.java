package net.akenSync.gm.formModele;

public class StockFormModel {
	private long id;
	private String code;
	private String label;
	private String description;

	public StockFormModel(long id, String code, String label, String description) {
		super();
		this.id = id;
		this.code = code;
		this.label = label;
		this.description = description;
	}

	public StockFormModel() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "StockFormModel [id=" + id + ", code=" + code + ", label=" + label + ", description=" + description
				+ "]";
	}
	
	

}
