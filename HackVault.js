const Web3 = require('web3');
const rpc = 'https://ropsten.infura.io/v3/4723644fef534b01b9fbf52d7eb2fc1e';

const web3 = new Web3(rpc);

web3.eth.getStorageAt('0x1b471bd307f2efbdb700ee1af6852d080bd3f1a7', 1, (err, res) => {
  console.log(web3.utils.isHex(res));
  //console.log(web3.utils.hexToBytes(res));
  console.log(res);
});