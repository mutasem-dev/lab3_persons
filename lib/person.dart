class Person {
  String _name;
  String _id;
  String _address;
  String _phoneNo;


  Person(this._name, this._id, this._address, this._phoneNo);

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


  String get address => _address;

  set address(String value) {
    _address = value;
  }


  @override
  String toString() {
    return '_name: $_name\n_id: $_id\n_address: $_address\n_phoneNo: $_phoneNo';
  }

  String get phoneNo => _phoneNo;

  set phoneNo(String value) {
    _phoneNo = value;
  }
}