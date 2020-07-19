pragma solidity ^0.5.9;
contract StateTransV2 
{
    //enums restrict a variable to have one of only a few predefined values
    enum Stage {Init, Reg, Vote, Done}
    Stage public stage;
    uint startTime;
    uint public timeNow;
    
    constructor() public 
    {
        stage = Stage.Init;
        startTime = now;
    }
    
    //Assuming the Stage change has to be enacted APPROX every 1 mintute
    //1 minutes is set to illustrate the working 
    function advanceState () public 
    {
        timeNow = now;
        if (timeNow > (startTime + 1 minutes))
        {
        startTime = timeNow;  
        if (stage == Stage.Init) {stage = Stage.Reg; return;}
        if (stage == Stage.Reg) {stage = Stage.Vote; return;}
        if (stage == Stage.Vote) {stage = Stage.Done; return;}
        return;
        }
    }
}
