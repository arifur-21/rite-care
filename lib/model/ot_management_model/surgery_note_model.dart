
class SurgeryNoteModel {
  dynamic? userId;
  bool? active;
  dynamic? id;
  dynamic? note;
  dynamic? surgeryId;

  SurgeryNoteModel(
      {this.userId, this.active, this.id, this.note, this.surgeryId});

  SurgeryNoteModel.fromJson(Map<dynamic, dynamic> json) {
    userId = json['UserId'];
    active = json['Active'];
    id = json['Id'];
    note = json['Note'];
    surgeryId = json['SurgeryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserId'] = this.userId;
    data['Active'] = this.active;
    data['Id'] = this.id;
    data['Note'] = this.note;
    data['SurgeryId'] = this.surgeryId;
    return data;
  }
}