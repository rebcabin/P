//Interfaces and model types

type ITimer(ITimerClient) = { eStartTimer, eCancelTimer };
type ITimerClient() = { eTimeOut, eCancelSuccess, eCancelFailure }; 
model type TimerPtr = machine;

// events from client to timer
event eStartTimer: int;
event eCancelTimer;
// events from timer to client
event eTimeOut: TimerPtr;
event eCancelSuccess: TimerPtr;
event eCancelFailure: TimerPtr;

//Function declarations
extern fun StartTimer(timer: TimerPtr, time: int);
extern fun CancelTimer(timer: TimerPtr);
extern fun CreateTimer 
creates Timer;
(owner: machine): TimerPtr;