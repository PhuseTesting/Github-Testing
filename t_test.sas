data efh;
   input cond $ test msat;
   label cond = 'Experimental condition';
   label test = 'Fraction correct on post-test';
   label msat = 'Math SAT score';
   datalines;
A       0.71    650
A       0.82    710
A       0.82    510
A       0.76    590
A       0.76    500
A       0.71    730
A       0.71    570
A       0.82    780
B       0.65    690
B       0.53    710
B       0.88    780
B       0.59    690
B       0.76    730
B       0.59    700
B       0.65    740
;
 
proc print data=efh;
run;
 
/*comment*/

proc ttest data=efh;
   class cond;
   var test;
run; 
