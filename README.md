# Live-Bowling-Board-using-Unix-Shell-Scripting

In bowling…the object of the game is to knock down the most pins in 10 frames. A frame is a set of 10 pins.

If all pins are knocked down with the first ball thrown in a frame, it is considered a strike which is symbolized by an “X” symbol.

If all pins are not knocked down with the first ball, the bowler can bowl again to try to knock down the remaining pins with a second ball. If the bowler knocks the remaining pins down, then it is considered a “spare” symbolized by the “/” symbol.

The number of pins knocked down by a bowler with each ball must be captured, because they are used to tally the scores in previous frames.
 
If a bowler gets a strike the next two balls he bowls are counted in the frame in which he got the strike, regardless if those balls are in the next frame or the next two frames )if he throws a second strike after the first).

If a bowler gets a spare the next ball only is counted in the frame in which he got the spare. That ball’s score is also counted in its own frame.

In the tenth frame a bowler can bowl up to three times. If he gets a strike in the first ball in the tenth, he may bowl two more times. If he bowls two strikes in the first two balls of the tenth frame or he gets a spare after the second ball of the tenth frame, he may bowl one more ball. If the bowler does not have a strike or spare after the second ball of the tenth frame then his game is over.

This Bowling Script will consider all rules of bolwing game and return the winner of the game.
