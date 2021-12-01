package rainclassv3.pojo;

import java.util.ArrayList;
import java.util.List;

public class CoursesOpenExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CoursesOpenExample() {
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

        public Criteria andCoursesOpenIdIsNull() {
            addCriterion("courses_open_id is null");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdIsNotNull() {
            addCriterion("courses_open_id is not null");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdEqualTo(Integer value) {
            addCriterion("courses_open_id =", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdNotEqualTo(Integer value) {
            addCriterion("courses_open_id <>", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdGreaterThan(Integer value) {
            addCriterion("courses_open_id >", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("courses_open_id >=", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdLessThan(Integer value) {
            addCriterion("courses_open_id <", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdLessThanOrEqualTo(Integer value) {
            addCriterion("courses_open_id <=", value, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdIn(List<Integer> values) {
            addCriterion("courses_open_id in", values, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdNotIn(List<Integer> values) {
            addCriterion("courses_open_id not in", values, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdBetween(Integer value1, Integer value2) {
            addCriterion("courses_open_id between", value1, value2, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesOpenIdNotBetween(Integer value1, Integer value2) {
            addCriterion("courses_open_id not between", value1, value2, "coursesOpenId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdIsNull() {
            addCriterion("courses_id is null");
            return (Criteria) this;
        }

        public Criteria andCoursesIdIsNotNull() {
            addCriterion("courses_id is not null");
            return (Criteria) this;
        }

        public Criteria andCoursesIdEqualTo(Integer value) {
            addCriterion("courses_id =", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdNotEqualTo(Integer value) {
            addCriterion("courses_id <>", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdGreaterThan(Integer value) {
            addCriterion("courses_id >", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("courses_id >=", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdLessThan(Integer value) {
            addCriterion("courses_id <", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdLessThanOrEqualTo(Integer value) {
            addCriterion("courses_id <=", value, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdIn(List<Integer> values) {
            addCriterion("courses_id in", values, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdNotIn(List<Integer> values) {
            addCriterion("courses_id not in", values, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdBetween(Integer value1, Integer value2) {
            addCriterion("courses_id between", value1, value2, "coursesId");
            return (Criteria) this;
        }

        public Criteria andCoursesIdNotBetween(Integer value1, Integer value2) {
            addCriterion("courses_id not between", value1, value2, "coursesId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIsNull() {
            addCriterion("teacher_id is null");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIsNotNull() {
            addCriterion("teacher_id is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherIdEqualTo(Integer value) {
            addCriterion("teacher_id =", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotEqualTo(Integer value) {
            addCriterion("teacher_id <>", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdGreaterThan(Integer value) {
            addCriterion("teacher_id >", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("teacher_id >=", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdLessThan(Integer value) {
            addCriterion("teacher_id <", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdLessThanOrEqualTo(Integer value) {
            addCriterion("teacher_id <=", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIn(List<Integer> values) {
            addCriterion("teacher_id in", values, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotIn(List<Integer> values) {
            addCriterion("teacher_id not in", values, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdBetween(Integer value1, Integer value2) {
            addCriterion("teacher_id between", value1, value2, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotBetween(Integer value1, Integer value2) {
            addCriterion("teacher_id not between", value1, value2, "teacherId");
            return (Criteria) this;
        }

        public Criteria andSchoolYearIsNull() {
            addCriterion("school_year is null");
            return (Criteria) this;
        }

        public Criteria andSchoolYearIsNotNull() {
            addCriterion("school_year is not null");
            return (Criteria) this;
        }

        public Criteria andSchoolYearEqualTo(String value) {
            addCriterion("school_year =", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearNotEqualTo(String value) {
            addCriterion("school_year <>", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearGreaterThan(String value) {
            addCriterion("school_year >", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearGreaterThanOrEqualTo(String value) {
            addCriterion("school_year >=", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearLessThan(String value) {
            addCriterion("school_year <", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearLessThanOrEqualTo(String value) {
            addCriterion("school_year <=", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearLike(String value) {
            addCriterion("school_year like", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearNotLike(String value) {
            addCriterion("school_year not like", value, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearIn(List<String> values) {
            addCriterion("school_year in", values, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearNotIn(List<String> values) {
            addCriterion("school_year not in", values, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearBetween(String value1, String value2) {
            addCriterion("school_year between", value1, value2, "schoolYear");
            return (Criteria) this;
        }

        public Criteria andSchoolYearNotBetween(String value1, String value2) {
            addCriterion("school_year not between", value1, value2, "schoolYear");
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

        public Criteria andTermEqualTo(Boolean value) {
            addCriterion("term =", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotEqualTo(Boolean value) {
            addCriterion("term <>", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermGreaterThan(Boolean value) {
            addCriterion("term >", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermGreaterThanOrEqualTo(Boolean value) {
            addCriterion("term >=", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermLessThan(Boolean value) {
            addCriterion("term <", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermLessThanOrEqualTo(Boolean value) {
            addCriterion("term <=", value, "term");
            return (Criteria) this;
        }

        public Criteria andTermIn(List<Boolean> values) {
            addCriterion("term in", values, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotIn(List<Boolean> values) {
            addCriterion("term not in", values, "term");
            return (Criteria) this;
        }

        public Criteria andTermBetween(Boolean value1, Boolean value2) {
            addCriterion("term between", value1, value2, "term");
            return (Criteria) this;
        }

        public Criteria andTermNotBetween(Boolean value1, Boolean value2) {
            addCriterion("term not between", value1, value2, "term");
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