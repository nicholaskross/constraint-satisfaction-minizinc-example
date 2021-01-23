enum States = {AL, AZ, AR, CA, CO, CT, DC, DE, FL, GA, 
          ID, IL, IN, IA, KS, KY, LA, ME, MD, 
          MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, 
          NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, 
          SD, TN, TX, UT, VT, VA, WA, WV, WI, WY};

array[States] of var 1..4: colors;

include "all_state_touching_constraints.mzn";

var int: num_colors = max(colors);

solve minimize num_colors;

output [ "\(s) = \(colors[s]);\n" | s in States ];
output [ "We only needed \(num_colors) colors for this problem." ];