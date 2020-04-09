#!/bin/bash
make
echo O1 Optimized
./matrixTime_1
./matrixTime200by200_1
./matrixTime2000by2000_1
echo O0 Optimized
./matrixTime_2
./matrixTime200by200_2
./matrixTime2000by2000_2
echo "floop-interchange" Optimized
./matrixTime_3
./matrixTime200by200_3
./matrixTime2000by2000_3