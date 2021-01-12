# Timothy Leong
# 
# The pdb file you wish to label must be the only pdb file loaded into VMD.

set selected_mol [atomselect top all]

for {set i 1} {$i <= [$selected_mol num]} {incr i} {
	set x_value [[atomselect top "serial $i"] get x]
	set y_value [[atomselect top "serial $i"] get y]
	set z_value [[atomselect top "serial $i"] get z]
	# This looks clunky but doing "get {x y z}" returns a list of size 1
	# Which would result in an error with the following draw commmand
	
	set coords [list $x_value $y_value $z_value]
	# graphics [$selected_mol molid] text $coords "$i" size 2.5 thickness 1
	draw text $coords "$i"
	puts $i
}	


