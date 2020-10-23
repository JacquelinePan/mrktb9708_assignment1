*set working directory 
cd "/Users/jp4096/Documents/RMCodingAssignments/mrktb9708_assignment1"

*read in CSV file 
import delimited "/Users/jp4096/Documents/RMCodingAssignments/mrktb9708_assignment1/Assignment1.csv"

*Label variables 
label variable candidateid "Candidate ID"
label variable calledback "Called Back"
label variable recruiteriswhite "Recruiter is White"
label variable recruiterismale "Recruiter is Male"
label variable malecandidate "Male Candidate"
label variable eliteschoolcandidate "Elite School Candidate"
label variable bigcompanycandidate "Big Company Candidate"

*Run Regression
reg calledback eliteschoolcandidate recruiteriswhite recruiterismale malecandidate bigcompanycandidate 

* Store regression
eststo CallBack

*export to LaTeX
esttab CallBack using Assignment1.tex, $tableoptions keep(eliteschoolcandidate recruiteriswhite recruiterismale malecandidate bigcompanycandidate _cons) star(* 0.10 ** 0.05 *** 0.01) collabels(none) stats(r2 n_ind N, fmt(%9.4f %9.0f %9.0fc) labels("R-squared" "Number of observations")) plain noabbrev nonumbers lines parentheses fragment




