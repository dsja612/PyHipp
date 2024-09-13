#!/bin/bash
echo ""

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo ""

echo "#==========================================================="
echo "Start times"

for file in *.out; do
	echo "==> $file <=="
        head -n 1 "$file"
        echo ""
done

echo ""

echo "End times"

for file in *.out; do
        echo "==> $file <=="
        tail -n 4 "$file"
        echo ""
done
echo "#==========================================================="
