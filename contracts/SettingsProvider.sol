pragma solidity ^0.4.15;


contract SettingsProvider  {
    mapping(string => uint256) private settings;

    function getSetting(string _name) public view onlyPermitted returns(uint256) {
        return settings[_name];
    }

    function getSettingAddress(string _name) public view onlyPermitted returns(address) {
        return address(getSetting(_name));
    }

    function setSetting(string _name, uint256 _value) public onlyPermitted returns (uint256) {
        settings[_name] = _value;
        return settings[_name];
    }
}

