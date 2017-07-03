package mall.bean;

public class ProductBean {
	private String productNo;
	private String productName;
	private String productOrigin;
	private String productCategory;
	private int productPrice;
	private String fileName1;
	private String fileName2;

	public ProductBean() {
		super();
	}

	public ProductBean(String productNo, String productName, String productOrigin, String productCategory,
			int productPrice, String fileName1, String fileName2) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productOrigin = productOrigin;
		this.productCategory = productCategory;
		this.productPrice = productPrice;
		this.fileName1 = fileName1;
		this.fileName2 = fileName2;
	}

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductOrigin() {
		return productOrigin;
	}

	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getFileName1() {
		return fileName1;
	}

	public void setFileName1(String fileName1) {
		this.fileName1 = fileName1;
	}

	public String getFileName2() {
		return fileName2;
	}

	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}

	@Override
	public String toString() {
		return "ProductBean [productNo=" + productNo + ", productName=" + productName + ", productOrigin="
				+ productOrigin + ", productCategory=" + productCategory + ", productPrice=" + productPrice
				+ ", fileName1=" + fileName1 + ", fileName2=" + fileName2 + "]";
	}

}
