import { Network, DeployOptions } from "../types/SphinxClientTypes.sol";
import { HelloSphinx } from "../HelloSphinx.sol";

contract HelloSphinxClient {
    constructor () {}

    function deploy(uint _myNumber, address _myAddress, DeployOptions memory options) external returns (HelloSphinxClient) {
        // Calculate the address of the contract to be deployed and then return it wrapped in a HelloSphinx contract object
    }

    function setNumber(uint8 _myNumber, ActionOptions memory options) external {
        emit setNumberCalled(_myNumber, options);
    }

    function increment(ActionOptions memory options) external {}
}