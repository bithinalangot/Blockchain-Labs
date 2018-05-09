pragma solidity ^0.4.0;

contract Greeter {

    string greeting;
    uint temp;
    mapping (uint => uint) public f;

    function greet(string _greeting) public constant returns (string) {
        greeting = _greeting;
        return greeting;
    }

    function fib(uint _num) public constant returns (uint) {
        f[0] = 0;
        f[1] = 1;
        for(uint i = 2; i <= _num; i++) {
            f[i] = f[i-1] + f[i-2];
        }
        return f[_num];
    }

    function fib_rev(uint _num) public constant returns (uint) {
        if(_num == 1 || _num == 0) {
            return _num;
        }
        else {
            return fib_rev(_num - 1) + fib_rev(_num - 2);
        }
    }
}
