package rainclassv3.pojo;

import java.util.ArrayList;
import java.util.List;

public class CoursesChooseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CoursesChooseExample() {
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

        public Criteria andStudentNumberIsNull() {
            addCriterion("student_number is null");
            return (Criteria) this;
        }

        public Criteria andStudentNumberIsNotNull() {
            addCriterion("student_number is not null");
            return (Criteria) this;
        }

        public Criteria andStudentNumberEqualTo(String value) {
            addCriterion("student_number =", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberNotEqualTo(String value) {
            addCriterion("student_number <>", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberGreaterThan(String value) {
            addCriterion("student_number >", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberGreaterThanOrEqualTo(String value) {
            addCriterion("student_number >=", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberLessThan(String value) {
            addCriterion("student_number <", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberLessThanOrEqualTo(String value) {
            addCriterion("student_number <=", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberLike(String value) {
            addCriterion("student_number like", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberNotLike(String value) {
            addCriterion("student_number not like", value, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberIn(List<String> values) {
            addCriterion("student_number in", values, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberNotIn(List<String> values) {
            addCriterion("student_number not in", values, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberBetween(String value1, String value2) {
            addCriterion("student_number between", value1, value2, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andStudentNumberNotBetween(String value1, String value2) {
            addCriterion("student_number not between", value1, value2, "studentNumber");
            return (Criteria) this;
        }

        public Criteria andPerformanceIsNull() {
            addCriterion("performance is null");
            return (Criteria) this;
        }

        public Criteria andPerformanceIsNotNull() {
            addCriterion("performance is not null");
            return (Criteria) this;
        }

        public Criteria andPerformanceEqualTo(Integer value) {
            addCriterion("performance =", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceNotEqualTo(Integer value) {
            addCriterion("performance <>", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceGreaterThan(Integer value) {
            addCriterion("performance >", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceGreaterThanOrEqualTo(Integer value) {
            addCriterion("performance >=", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceLessThan(Integer value) {
            addCriterion("performance <", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceLessThanOrEqualTo(Integer value) {
            addCriterion("performance <=", value, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceIn(List<Integer> values) {
            addCriterion("performance in", values, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceNotIn(List<Integer> values) {
            addCriterion("performance not in", values, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceBetween(Integer value1, Integer value2) {
            addCriterion("performance between", value1, value2, "performance");
            return (Criteria) this;
        }

        public Criteria andPerformanceNotBetween(Integer value1, Integer value2) {
            addCriterion("performance not between", value1, value2, "performance");
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