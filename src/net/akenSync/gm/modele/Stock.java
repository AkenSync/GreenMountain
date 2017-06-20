package net.akenSync.gm.modele;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import net.akenSync.gm.formModele.StockFormModel;

@Entity
@Table(name = "stock")
@SequenceGenerator(name = "sequence_id", sequenceName = "stock_idstock_seq", allocationSize = 1)
@AttributeOverrides({ @AttributeOverride(name = "id", column = @Column(name = "idstock")) })
public class Stock extends BaseModele{
	@Column(name = "name")
	private String name;
	@Column(name = "description")
	private String description;
	@Column(name = "address")
	private String address;
	
	public Stock() {
		super();
	}

	public Stock(StockFormModel stock) {
		super();
		this.setStockName(stock.getName());
		this.setDescription(stock.getName());
		this.setAddress(stock.getAddress());
	}

	public String getStockName() {
		return name;
	}

	public void setStockName(String stockName) {
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

	@Override
	public String toString() {
		return "Stock [stockName=" + name + ", description=" + description + ", address=" + address + "]";
	}
	
	
}
