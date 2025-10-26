import 'package:todo/features/layout/data/models/values/categories.dart';
import '../classes/task_info.dart';
import 'date_time/dates.dart';

List<TaskMainInfo> outDate(List<TaskMainInfo> tasksList){
  for(int i=0 ; i<tasksList.length ; i++){
    if(DateTime.now().isAfter(AppDate.dateAndTime(tasksList[i].dateTime, tasksList[i].endTime))){
      tasksList[i].taskStatus = categories[3].name;
    }
  }
  return tasksList;
}

