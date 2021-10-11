class InfoorgModel {
  late String orgid;
  late String orgname;

  late String createdat;
  late String updatedat;
  InfoorgModel({
    required this.orgid,
    required this.orgname,

    required this.createdat,
    required this.updatedat,
  });
  InfoorgModel.fromJson(Map<String, dynamic> json) {
    orgid = json['ORG_ID'];
    orgname = json['ORG_NAME'];    
    createdat = json['created_at'];
    updatedat = json['updated_at'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ORG_ID'] = this.orgid;
    data['ORG_NAME'] = this.orgname;
   
    data['created_at'] = this.createdat;
    data['updated_at'] = this.updatedat;

    return data;
  }
}
