pragma solidity ^0.5.0;

contract TodoList{
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("my task");
    }

    function createTask(string memory content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, content, false);
    }
}