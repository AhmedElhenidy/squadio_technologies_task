
import 'package:squadio_technologies_task/domain/model/person_model.dart';

class PersonsResponseModel {
  PersonsResponseModel({
      this.page, 
      this.persons,
      this.totalPages, 
      this.totalResults,});

  PersonsResponseModel.fromJson(dynamic json) {
    persons = [];
    page = json['page'];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        persons?.add(Person.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  int? page;
  List<Person>? persons;
  int? totalPages;
  int? totalResults;
}



