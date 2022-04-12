find . -type d -exec sh -c "python3 ../scripts/rotstl2.py -d {}/*.stl" \;
rsync -av Sailfin/ ../../Sailfin-Extruder/STL



