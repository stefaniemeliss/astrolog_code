# set dir
cd Dropbox/ast77src

# determine client initials
initials="SM"

# create folder to save output in
out_dir=$(pwd)"/out/""$initials"
mkdir $out_dir

# define file containing parameters
params="$out_dir""/params.txt"

# Write parameters of current chart to file.
./astrolog -q 11 18 1992 21:45 -zN Wismar -zi Stef Wismar -o  $params # Compute chart for time of day and save
echo "-c Whole -b0 -Yn" >>  $params # 
echo "-R -R East" >>  $params 
#echo "-YJ Mar Sco 0 -YJ Sat Aqu 0 -YJ Jup Pis 0" >>  $params 
echo "-A 24 -Ao Con 8 -Ao Opp 8 -Ao Tri 7 -Ao Squ 7 -Ao Sex 5" >>  $params 
echo "-Am Uran 3 -Am Nept 3 -Am Plut 3 -Am Chir 2 -Am Cere 2 -Am Pall 2 -Am Juno 2 -Am Vest 2 -Am Nort 2 -Am Fort 2 -Am Vert 2" >>  $params 
echo "-Ad Sun 2 -Ad Moon 2 -Ad Jupi 0.5 -Ad Satu 0.5" >>  $params 

source code/run_astrolog_full.sh
source code/run_astrolog_numeric.sh
#source code/run_astrolog_default.sh


# Switches which affect what information is used in a chart:
# -R: Retain non-essential points bodies in displays.
# -R [<obj1> [<obj2> ..]]: Restrict specific bodies from displays.
# -A <0-24>: Specify the number of aspects to use in charts.
#### No. Name     Abbrev. Angle   Orb     Description of glyph
#### 1 Conjunct    (Con)  0  +/- 7  degrees Circle with extending line
#### 2 Opposite    (Opp) 180  +/- 7  degrees Two circles joined by line
#### 3 Square     (Squ) 90  +/- 7  degrees Quadrilateral
#### 4 Trine     (Tri) 120  +/- 7  degrees Triangle
#### 5 Sextile    (Sex) 60  +/- 6  degrees Six pointed asterisk
#### 6 Inconjunct   (Inc) 150  +/- 3  degrees 'K' rotated right
#### 7 SemiSextile  (SSx) 30  +/- 3  degrees 'K' rotated left
#### 8 SemiSquare   (SSq) 45  +/- 3  degrees Acute angle
#### 9 SesquiQuadrate (Ses) 135  +/- 3  degrees Square with extending lines
#### 10 Quintile    (Qui) 72  +/- 2  degrees Letter 'Q'
#### 11 BiQuintile   (BQn) 144  +/- 2  degrees '+' over '-'
#### 12 SemiQuintile  (SQn) 36  +/- 1  degrees '-' over '+'
#### 13 Septile    (Sep) 51.43 +/- 1  degrees Number '7'
#### 14 Novile     (Nov) 40  +/- 1  degrees Number '9'
#### 15 BiNovile    (BNv) 80  +/- 1  degrees '9' under Roman 'II'
#### 16 BiSeptile   (BSp) 102.86 +/- 1  degrees '7' under Roman 'II'
#### 17 TriSeptile   (TSp) 154.29 +/- 1  degrees '7' under Roman 'III'
#### 18 QuatroNovile  (QNv) 160  +/- 1  degrees '9' under Roman 'IV'
#### 19 TreDecile   (TDc) 108  +/- 0.5 degrees '10' under Roman 'III'
#### 20 Undecile    (Un1) 32.73 +/- 0.5 degrees Number '11'
#### 21 BiUndecile   (Un2) 65.45 +/- 0.5 degrees '11' under Roman 'II'
#### 22 TriUndecile  (Un3) 98.18 +/- 0.5 degrees '11' under Roman 'III'
#### 23 QuatroUndecile (Un4) 130.91 +/- 0.5 degrees '11' under Roman 'IV'
#### 24 QuintUndecile (Un5) 163.64 +/- 0.5 degrees '11' under Roman 'V'
# -Ao <aspect> <orb>: Specify maximum orb for an aspect.
# -Am <planet> <orb>: Specify maximum orb allowed to a planet.
# -Ad <planet> <orb>: Specify orb addition given to a planet.

# -Yn: Compute location of true instead of mean nodes and Lilith.
# -YJ <obj> <sign> <cosign>: Set sign planet rules and co-rules: -YJ Mar Sco 0 -YJ Sat Aqu 0 -YJ Jup Pis 0

# Switches which affect how a chart is computed:
# -b0: Display locations and times to the nearest second.
# -c <value>: Select a different system of house division. 
#### 0 = Placidus, 1 = Koch, 2 = Equal, 3 = Campanus, 4 = Meridian, 
#### 5 = Regiomontanus, 6 = Porphyry, 7 = Morinus, 8 = Topocentric, 
#### 9 = Alcabitius, 10 = Krusinski, 11 = Equal (Midheaven), 
#### 12 = Pullen Sinusoidal Ratio, 13 = Pullen Sinusoidal Delta, 
#### 14 = Whole, 15 = Vedic, 16 = Sripati, 17 = Horizon, 18 = APC, 
#### 19 = Carter Poli Equatorial, 20 = Sunshine, 21 = Savard-A, 22 = Null.
