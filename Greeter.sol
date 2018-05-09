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

    function xor(string _str1, string _str2) public constant returns (string) {
        bytes memory b1 = bytes(_str1);
        bytes memory b2 = bytes(_str2);
        for(uint i = 0; i < b1.length; i++) {
            if(b1[i] == b2[i]){
                b1[i] = 0x30;
            }
            else {
                b1[i] = 0x31;
            }
        }
        string memory s = string(b1);
        return s;
   }

   function strconcat(string _str1, string _str2) public constant returns (string) {
       bytes memory str_b1 = bytes(_str1);
       bytes memory str_b2 = bytes(_str2);
       bytes b;
       uint j = str_b1.length;
       for(uint i = 0; i < str_b1.length; i++) {
           b[i] = str_b1[i];
       }
       for(uint k = 0; k < str_b2.length; k++) {
           b[j] = str_b2[k];
           j++;
       }
       string memory s = string(b);
       return s;
   }

}
