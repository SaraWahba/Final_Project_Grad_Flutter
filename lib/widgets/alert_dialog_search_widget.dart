import 'package:flutter/material.dart';
typedef SelectCategory<T> = void Function(T value);
class AlertDialogSearchWidget extends StatefulWidget {
  const AlertDialogSearchWidget({super.key, required this.selectCategory,});
final SelectCategory<List<String>>selectCategory;

  @override
  State<AlertDialogSearchWidget> createState() =>
      _AlertDialogSearchWidgetState();
}

class _AlertDialogSearchWidgetState extends State<AlertDialogSearchWidget> {
  List<String> selectCategoryList=[];

  List<String> categoryList = [
    "Accounting",
    "Business",
    "Bance",
    "Design & Art",
    "Development",
    "Marketing",
    "Meditation",
    "Music"
  ];
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height*.7,
width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Category",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {

              bool selecItem=false;

              return StatefulBuilder(builder:(context, ssetState) {
                return CheckboxListTile(
                    value: selecItem,
                    title: Text("${categoryList[index]}"),
                    controlAffinity: ListTileControlAffinity.leading,

                    onChanged: (value) {
                      print(categoryList[index]);
                      selecItem=!selecItem;

                      if(selecItem){
                        selectCategoryList.add(categoryList[index]);
                      }else{
                        selectCategoryList.remove(categoryList[index]);
                      }
                      ssetState(() {

                      });
                    });
              },);
            },
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){
                  widget.selectCategory(selectCategoryList);
                  Navigator.pop(context);
                },
                child: Text("ok",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("cancel",style: TextStyle(fontSize: 20, ),),
              )
            ],
          )
        ],
      ),
    );
  }
}
