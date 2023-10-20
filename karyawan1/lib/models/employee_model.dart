class EmployeeModel{
  String id;
  String employeeName;
  String employeePosition;
  String employeeAge;
  String profileImage;

  EmployeeModel({
    required this.id,
    required this.employeeName,
    required this.employeePosition,
    required this.employeeAge,
    required this.profileImage
  });
  
  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
    id: json['id'],
    employeeName: json['employee_name'],
    employeePosition: json['employee_position'],
    employeeAge: json['employee_age'],
    profileImage: json['profile_image']
  );
}