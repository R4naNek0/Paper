#!/bin/bash
cd /home/r4nanek0/Documents/Paper/BSDE || exit 1
for attempt in 1 2 3; do
  echo "=== attempt $attempt ===" >>.reading_work/mineru_extract_31.log
  mineru-open-api extract "Reflected Solutions of Backward SDE'S, and Related Obstacle Problems for PDE'S.pdf" -o .reading_work/mineru/ --ocr --language en --timeout 900 >>.reading_work/mineru_extract_31.log 2>&1
  code=$?
  echo "attempt $attempt exit: $code" >>.reading_work/mineru_extract_31.log
  if [ $code -eq 0 ]; then break; fi
  sleep 15
done
