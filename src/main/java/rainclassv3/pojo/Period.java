package rainclassv3.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Period {
    private Integer id;

    private String term;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date termStartDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date termEndDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date chooseStartDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date chooseEndDate;

    private String remark;

    public Period(Integer id, String term, Date termStartDate, Date termEndDate, Date chooseStartDate, Date chooseEndDate, String remark) {
        this.id = id;
        this.term = term;
        this.termStartDate = termStartDate;
        this.termEndDate = termEndDate;
        this.chooseStartDate = chooseStartDate;
        this.chooseEndDate = chooseEndDate;
        this.remark = remark;
    }

    public Period() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term == null ? null : term.trim();
    }

    public Date getTermStartDate() {
        return termStartDate;
    }

    public void setTermStartDate(Date termStartDate) {
        this.termStartDate = termStartDate;
    }

    public Date getTermEndDate() {
        return termEndDate;
    }

    public void setTermEndDate(Date termEndDate) {
        this.termEndDate = termEndDate;
    }

    public Date getChooseStartDate() {
        return chooseStartDate;
    }

    public void setChooseStartDate(Date chooseStartDate) {
        this.chooseStartDate = chooseStartDate;
    }

    public Date getChooseEndDate() {
        return chooseEndDate;
    }

    public void setChooseEndDate(Date chooseEndDate) {
        this.chooseEndDate = chooseEndDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}