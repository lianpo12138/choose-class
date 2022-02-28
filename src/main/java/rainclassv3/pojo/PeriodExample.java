package rainclassv3.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class PeriodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PeriodExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTermIsNull() {
            addCriterion("term is null");
            return (Criteria) this;
        }

        public Criteria andTermIsNotNull() {
            addCriterion("term is not null");
            return (Criteria) this;
        }

        public Criteria andTermEqualTo(String value) {
            addCriterion("term =", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotEqualTo(String value) {
            addCriterion("term <>", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermGreaterThan(String value) {
            addCriterion("term >", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermGreaterThanOrEqualTo(String value) {
            addCriterion("term >=", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermLessThan(String value) {
            addCriterion("term <", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermLessThanOrEqualTo(String value) {
            addCriterion("term <=", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermLike(String value) {
            addCriterion("term like", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotLike(String value) {
            addCriterion("term not like", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermIn(List<String> values) {
            addCriterion("term in", values, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotIn(List<String> values) {
            addCriterion("term not in", values, "term");
            return (Criteria) this;
        }

        public Criteria andTermBetween(String value1, String value2) {
            addCriterion("term between", value1, value2, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotBetween(String value1, String value2) {
            addCriterion("term not between", value1, value2, "term");
            return (Criteria) this;
        }

        public Criteria andTermStartDateIsNull() {
            addCriterion("term_start_date is null");
            return (Criteria) this;
        }

        public Criteria andTermStartDateIsNotNull() {
            addCriterion("term_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andTermStartDateEqualTo(Date value) {
            addCriterionForJDBCDate("term_start_date =", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("term_start_date <>", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateGreaterThan(Date value) {
            addCriterionForJDBCDate("term_start_date >", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("term_start_date >=", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateLessThan(Date value) {
            addCriterionForJDBCDate("term_start_date <", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("term_start_date <=", value, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateIn(List<Date> values) {
            addCriterionForJDBCDate("term_start_date in", values, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("term_start_date not in", values, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("term_start_date between", value1, value2, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermStartDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("term_start_date not between", value1, value2, "termStartDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateIsNull() {
            addCriterion("term_end_date is null");
            return (Criteria) this;
        }

        public Criteria andTermEndDateIsNotNull() {
            addCriterion("term_end_date is not null");
            return (Criteria) this;
        }

        public Criteria andTermEndDateEqualTo(Date value) {
            addCriterionForJDBCDate("term_end_date =", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("term_end_date <>", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateGreaterThan(Date value) {
            addCriterionForJDBCDate("term_end_date >", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("term_end_date >=", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateLessThan(Date value) {
            addCriterionForJDBCDate("term_end_date <", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("term_end_date <=", value, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateIn(List<Date> values) {
            addCriterionForJDBCDate("term_end_date in", values, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("term_end_date not in", values, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("term_end_date between", value1, value2, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andTermEndDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("term_end_date not between", value1, value2, "termEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateIsNull() {
            addCriterion("choose_start_date is null");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateIsNotNull() {
            addCriterion("choose_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateEqualTo(Date value) {
            addCriterionForJDBCDate("choose_start_date =", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("choose_start_date <>", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateGreaterThan(Date value) {
            addCriterionForJDBCDate("choose_start_date >", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("choose_start_date >=", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateLessThan(Date value) {
            addCriterionForJDBCDate("choose_start_date <", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("choose_start_date <=", value, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateIn(List<Date> values) {
            addCriterionForJDBCDate("choose_start_date in", values, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("choose_start_date not in", values, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("choose_start_date between", value1, value2, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseStartDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("choose_start_date not between", value1, value2, "chooseStartDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateIsNull() {
            addCriterion("choose_end_date is null");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateIsNotNull() {
            addCriterion("choose_end_date is not null");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateEqualTo(Date value) {
            addCriterionForJDBCDate("choose_end_date =", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("choose_end_date <>", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateGreaterThan(Date value) {
            addCriterionForJDBCDate("choose_end_date >", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("choose_end_date >=", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateLessThan(Date value) {
            addCriterionForJDBCDate("choose_end_date <", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("choose_end_date <=", value, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateIn(List<Date> values) {
            addCriterionForJDBCDate("choose_end_date in", values, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("choose_end_date not in", values, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("choose_end_date between", value1, value2, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andChooseEndDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("choose_end_date not between", value1, value2, "chooseEndDate");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}