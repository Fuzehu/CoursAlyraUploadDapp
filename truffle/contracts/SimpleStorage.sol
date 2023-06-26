// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
  uint256 value;
  string greeter;

  event valueChange(uint _val);
  event textChange(string _text);

  function read() public view returns (uint256) {
    return value;
  }

  function write(uint256 newValue) public {
    value = newValue;
    emit valueChange(newValue);
  }

  function greet() public view returns (string memory) {
    return greeter;
  }

  function setGreet(string calldata newText) public {
    greeter = newText;
    emit textChange(newText);
  }
}
