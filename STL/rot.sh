find . -type d -exec sh -c "python ../scripts/rotstl2.py -d {}/*.stl" \;
rsync -av Sailfin/ ../../Sailfin-Extruder/STL



