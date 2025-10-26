class AppText{
  static String upperCase(String text){
    return text.toUpperCase();
  }

  static String lowerCase(String text){
    return text.toLowerCase();
  }

  static String firstCharacterUpperCase(String text){
    return text.replaceFirst(text[0], text[0].toUpperCase());
  }

  static String nonFirstCharacterUpperCase(String text){
    String result="";
    for(int index=0 ; index<text.length ; index++){
      if(index==0){
        result+=text[index];
      }
      else{
        result+=text[index].toUpperCase();
      }
    }
    return result;
  }

  static String firstCharactersUpperCase(String text){
    List<String> stringList = text.split(" ");
    String result = "" ;
    for(int index=0 ; index<stringList.length ; index++){
      result += " ${firstCharacterUpperCase(stringList[index])}";
    }
    return result;
  }
}