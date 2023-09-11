import { Network, DeployOptions } from "../types/SphinxClientTypes.sol";
import { DifferentHelloSphinx } from "../DifferentHelloSphinx.sol";

contract DifferentHelloSphinx {
    constructor () {}

    function deploy(uint _myNumber, address _myAddress, DeployOptions memory options) external returns (DifferentHelloSphinx) {
        // Calculate the address of the contract to be deployed and then return it wrapped in a HelloSphinx contract object
    }

    function setNumber(UintInputWithDefault memory _myNumber, ActionOptions memory options) external {}

    function increment(ActionOptions memory options) external {}
}