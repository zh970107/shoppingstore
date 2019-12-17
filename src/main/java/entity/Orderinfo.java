package entity;

public class Orderinfo {

    private Integer oId;

    private Integer userid;

    private Integer status;

    private String ordertime;

    private Integer pid;

    private Integer odId;

    private Integer pId;

    private Integer odNum;

    private Integer pCode;

    private String pName;

    private String pType;

    private String brand;

    private String pic;

    private Integer pNum;

    private Double price;

    private Double sale;

    private String intro;

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getOdId() {
        return odId;
    }

    public void setOdId(Integer odId) {
        this.odId = odId;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getOdNum() {
        return odNum;
    }

    public void setOdNum(Integer odNum) {
        this.odNum = odNum;
    }

    public Integer getpCode() {
        return pCode;
    }

    public void setpCode(Integer pCode) {
        this.pCode = pCode;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getpNum() {
        return pNum;
    }

    public void setpNum(Integer pNum) {
        this.pNum = pNum;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getSale() {
        return sale;
    }

    public void setSale(Double sale) {
        this.sale = sale;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    @Override
    public String toString() {
        return "Orderinfo{" +
                "oId=" + oId +
                ", userid=" + userid +
                ", status=" + status +
                ", ordertime='" + ordertime + '\'' +
                ", pid=" + pid +
                ", odId=" + odId +
                ", pId=" + pId +
                ", odNum=" + odNum +
                ", pCode=" + pCode +
                ", pName='" + pName + '\'' +
                ", pType='" + pType + '\'' +
                ", brand='" + brand + '\'' +
                ", pic='" + pic + '\'' +
                ", pNum=" + pNum +
                ", price=" + price +
                ", sale=" + sale +
                ", intro='" + intro + '\'' +
                '}';
    }
}