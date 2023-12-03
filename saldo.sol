// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Saldo {

  // Atributo que almacena la dirección de la wallet
  address public walletAddress;

  // Constructor que recibe la dirección de la wallet
  constructor(address wallet) {
    walletAddress = wallet;
  }

  // Función que devuelve el saldo de la wallet
  function getSaldo() public view returns (uint256) {
    // Obtenemos la cuenta de la wallet
    // (La cuenta es un identificador único de la wallet en la blockchain)
    address account = walletAddress;

    // Obtenemos el balance de la cuenta
    // (El balance es la cantidad de tokens que la cuenta tiene)
    uint256 balance = address(account).balance;

    // Devolvemos el balance
    return balance;
  }
}