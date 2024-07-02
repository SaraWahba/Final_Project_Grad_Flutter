class CourseModel {
  final String image;
  final String title;
  final String subTitle;
  final String numberLessons;
  final String numberStudent ;
  final String namePerson;
  final String price;
  final String numberStart;
  final double rate;

  CourseModel(
      {required this.image,
        required  this.title,
        required this.subTitle,
        required this.numberLessons,
        required this.numberStudent,
        required this.namePerson,
        required this.price,
        required  this.numberStart,
        required this.rate});
}
