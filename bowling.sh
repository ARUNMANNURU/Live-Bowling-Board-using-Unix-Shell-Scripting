#!/bin/bash
#!/bin/sh

echo -n "Enter the player name:>"
read name
echo "Please enter your name:"
echo "Hello,$name welcome to bowling game"
TOTAL[0]=0 MAX_SCORE=300 FRAME_SCORE=0 RESULT=0 MAX_RESULT=10 RUNNING_TOTAL[$FRAME_SCORE]=0 FRAME=1 MAX_FRAME=10 BALL1=0 BALL2=0 BALL3=0
while [ $FRAME -le 10 ]
do
echo "FRAME$FRAME"
echo "Enter Ball1 Score:>"
read BALL1
if [ $BALL1 -eq 10 ]
then
echo "Hurrah you got strike:X"
TOTAL[$FRAME-1]=$BALL1
fi
while [ $BALL1 -gt 10 ]
do
echo "Ball Score should be less than ten :"
echo "Enter Balll1 Score:>"
read BALL1
done
if [ $BALL1 -ne 10 ]
then
echo "Enter Ball2 Score:>"
read BALL2
TOTAL[$FRAME-1]=$(($BALL1+$BALL2))
if [ $((BALL1+BALL2)) -eq 10 ] && [ $BALL1 -ne 0 ]
then
echo "Hurrah you got spare:/"
fi
if [ $((BALL1+BALL2)) -eq 10 ] && [ $BALL2 -eq 10 ]
then
echo "Hurrah you got strike:X"
fi
while [ $BALL2 -gt 10 ] || [ $((BALL1+BALL2)) -gt 10 ]
do
echo "Ball/Frame Score should be less than ten:"
echo "Enter Ball2 Score:"
read BALL2
TOTAL[$FRAME-1]=$(($BALL1+$BALL2))
if [ $((BALL1+BALL2)) -eq 10 ] && [ $BALL1 -ne 0 ]
then
echo "Hurrah you got spare:/"
fi
if [ $((BALL1+BALL2)) -eq 10 ] && [ $BALL2 -eq 10 ]
then
echo "Hurrah you got strike:X"
fi
done
fi
if [ $FRAME -eq  $MAX_FRAME ]
then
echo "Echo Ball3 Score:>"
read BALL3
while [ $BALL3 -gt 10 ]
do
echo "Ball Score should be less than ten:>"
echo "Enter Ball3 Score:"
read BALL3
done
fi
if [ $BALL1 -ne 10 ] && [ $(($BALL1+$BALL2)) -ne 10 ]
then  
RUNNING_TOTAL[$FRAME_SCORE]=$((((TOTAL[$FRAME-1]))+$((RUNNING_TOTAL[$FRAME_SCORE]))))
echo "TOTAL FRAME SCORE:"$((TOTAL[$FRAME-1]))
echo "RUNNING TOTAL:"$((RUNNING_TOTAL[$FRAME_SCORE]))
else
FRAME_SCORE=$((FRAME_SCORE+1))
RUNNING_TOTAL[$FRAME_SCORE]=$(($((TOTAL[$FRAME]))+$((RUNNING_TOTAL[$FRAME_SCORE-1]))+$((TOTAL[$FRAME-1]))))
fi
FRAME=$((FRAME+1))
done
