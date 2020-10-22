*set working directory 
cd "/Users/jp4096/Documents/PhD Classes/FALL 2020/Research Methods/Projects/Coding Assignments"

*read in CSV file 
import delimited "/Users/jp4096/Documents/PhD Classes/FALL 2020/Research Methods/Projects/Coding Assignments/Assignment1.csv"

*Label variables 
label variable candidateid "Candidate ID"
label variable calledback "Called Back"
label variable recruiteriswhite "Recruiter is white"
label variable recruiterismale "Recruiter is Male"
label variable malecandidate "Male Candidate"
label variable eliteschoolcandidate "Elite School Candidate"
label variable bigcompanycandidate "Big Company Candidate"

*Run Regression
reg calledback eliteschoolcandidate recruiteriswhite recruiterismale malecandidate bigcompanycandidate 

* Store regression
eststo regression1

*export to LaTeX
esttab regression1 using Assignment1.tex, $tableoptions keep(eliteschoolcandidate) 

*Export to LaTeX
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) prehead(\begin{tabular}{l*{14}{c}}) postfoot(\end{tabular}) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
