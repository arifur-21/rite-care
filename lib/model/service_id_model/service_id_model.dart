class ServiceIdModel {
  dynamic? setviceId;


  ServiceIdModel(
      {this.setviceId, });

  ServiceIdModel.fromJson(Map<String, dynamic> json) {
    setviceId = json['service_id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service_id'] = this.setviceId;

    return data;
  }

}