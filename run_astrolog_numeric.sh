# NATAL chart #
out_file="$out_dir""/astrolog_numeric.txt"

# ./astrolog -i SM_params.txt -R -Yn
# Switches which affect how the chart parameters are obtained:
# -i <file>: Compute chart based on info in file.

# Switches which determine the type of chart to display:
# -v: Display list of object positions.
# -v3 [0-9]: Display decan or other information alongside positions. (needs -b0)
#### 1 = Decan Ruler by Triplicity
#### 2 = Decan Sign by Triplicity
#### 3 = Chaldean Decan (The order is: Saturn, Jupiter, Mars, Sun, Venus, Mercury, Moon.) 
# -w [<rows>]: Display chart in a graphic house wheel format.
# -j: Display astrological influences of each object in chart.
# -j0: Like -j but include influences of each zodiac sign as well.
# -g: Display aspect and midpoint grid among planets.
# -ga: Like -g but indicate applying/separating instead of offset orbs.
# -a: Display list of all aspects ordered by influence.
# This chart also will flag notable aspects such as Moon phases 
# (e.g. "Full Moon") and eclipses (if the -Yu switch setting is on)
# -d [<step>]: Print all aspects and changes occurring in a day.
# -D: Like -d but display aspects by influence instead of time.

./astrolog -i  $params -v -X &

echo "-------------------" > "$out_file"
echo "Display chart input" >> "$out_file"
echo "-------------------" >> "$out_file"
echo "" >> "$out_file"
echo "saved in $params" >> "$out_file"
echo "" >> "$out_file"
cat $params >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"

echo "-----------------------------------------------------------" >> "$out_file"
echo "Display list of object positions (Decan Sign by Triplicity)" >> "$out_file"
echo "-----------------------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -v3 2 -w" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -v3 2 -w >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"

echo "-------------------------------------------------------" >> "$out_file"
echo "Display astrological influences of each object in chart" >> "$out_file"
echo "-------------------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -j" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -j >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"

echo "-----------------------------------------------" >> "$out_file"
echo "Display aspect and midpoint grid among planets" >> "$out_file"
echo "-----------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -ga" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -ga >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"
echo "------------------------------------------------" >> "$out_file"
echo "Display list of all aspects ordered by influence" >> "$out_file"
echo "------------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -a -Yu" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -a -Yu >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"

echo "--------------------------------------------------------" >> "$out_file"
echo "Print all aspects and changes occurring in a day by time" >> "$out_file"
echo "--------------------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -d" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -d >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"
echo "-------------------------------------------------------------" >> "$out_file"
echo "Print all aspects and changes occurring in a day by influence" >> "$out_file"
echo "-------------------------------------------------------------" >> "$out_file"
echo "" >> "$out_file"
echo "./astrolog -i  $params -D" >> "$out_file"
echo "" >> "$out_file"
./astrolog -i  $params -D >> "$out_file"
echo "" >> "$out_file"
echo "" >> "$out_file"