pragma solidity ^0.7.0;

contract Token {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    //checks the balance of an user
    //param: _owner(The address of an user)
    //return: balance(uint256, balance of the user)
    function balanceOf(address _owner) external view returns (uint256 balance);

    //sends tokens to a user (from `msg.sender`)
    //param: _to(address, of the recipient), _value(uint256, The amount of token to be transferred)
    //return: success(bool, Whether the transfer was successful or not)
    function transfer(address _to, uint256 _value)  external returns (bool success);

    //sends tokens from one user to another, provided it is approved by the sender
    //param: _from (address of the sender), _to(address of the recipient), _value(token amount to be transferred)
    //return: success(bool, Whether the transfer was successful or not)
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);

    //checks to see if a spender has enough tokens to spend/transfer
    //_spender(address, of the account trying spend), _value(uint256, amount of tokens to spend)
    //success(bool, whether the owner has enough)
    function approve(address _spender  , uint256 _value) external returns (bool success);

    /// @param _owner The address of the account owning tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @return remaining Amount of remaining tokens allowed to spent
    function allowance(address _owner, address _spender) external view returns (uint256 remaining);

    
}