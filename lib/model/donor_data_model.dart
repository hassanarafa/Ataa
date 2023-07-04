class ClientDatoModel {
  ClientDatoModel({
    required this.client_nationality_id,
    required this.name,
    required this.age,
    required this.address,
    required this.project_name,
    required this.project_details,
    required this.number_of_factory_or_company_workers,
    required this.the_expected_amount_of_financing,
    required this.expected_profit,
  });
  late final int? client_nationality_id;
  late final String? name;
  late final int? age;
  late final String? address;
  late final String? project_name;
  late final String? project_details;
  late final int? number_of_factory_or_company_workers;
  late final int? the_expected_amount_of_financing;
  late final int? expected_profit;

  ClientDatoModel.fromJson(Map<String, dynamic> json) {
    client_nationality_id = json['client_nationality_id'];
    name = json['name'];
    age = json['age'];
    address = json['address'];
    project_name = json['project_name'];
    project_details = json['project_details'];
    number_of_factory_or_company_workers =
        json['number_of_factory_or_company_workers'];
    the_expected_amount_of_financing = json['the_expected_amount_of_financing'];
    expected_profit = json['expected_profit'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['client_nationality_id'] = client_nationality_id;
    _data['name'] = name;
    _data['age'] = age;
    _data['address'] = address;
    _data['project_name'] = project_name;
    _data['project_details'] = project_details;
    _data['number_of_factory_or_company_workers'] =
        number_of_factory_or_company_workers;
    _data['the_expected_amount_of_financing'] =
        the_expected_amount_of_financing;
    _data['expected_profit'] = expected_profit;
    return _data;
  }
}

class Links {
  Links({
    required this.rel,
    required this.href,
  });
  late final String rel;
  late final String href;

  Links.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rel'] = rel;
    _data['href'] = href;
    return _data;
  }
}
