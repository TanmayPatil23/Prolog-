teaches_sub(t1, ode).
teaches_sub(t2, ode).
teaches_sub(t3, dsa).
teaches_sub(t4, ppl).
teaches_sub(t5, dld).
teaches_sub(t6, dtl).
teaches_sub(t7, fcs).

dept_has_sub(math, ode).
dept_has_sub(comp, dsa).
dept_has_sub(comp, ppl).
dept_has_sub(comp, dtl).
dept_has_sub(comp, dld).
dept_has_sub(extc, fcs).

dept_has_st(comp, s1).
dept_has_st(comp, s2).

dept_has_faculty(DEPT,FAC) :- teaches_sub(FAC, SUB), dept_has_sub(DEPT, SUB).
studies(ST, SUB) :- dept_has_sub(DEPT, SUB), dept_has_st(DEPT, ST).
st_has_faculty(ST, FAC) :- dept_has_sub(DEPT, SUB), dept_has_st(DEPT, ST), teaches_sub(FAC, SUB).