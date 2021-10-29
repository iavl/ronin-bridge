pragma solidity ^0.5.17;

import "./Proxy.sol";
import "./MainchainGatewayStorage.sol";


contract MainchainGatewayProxy is Proxy, MainchainGatewayStorage {
    constructor(address _proxyTo, address _registry)
    public
    Proxy(_proxyTo)
    {
        registry = Registry(_registry);
    }
}