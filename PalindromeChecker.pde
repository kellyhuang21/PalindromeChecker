public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String noSpaces(String sWord){
  String b = new String ("");
  for(int i = 0; i<sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      b = b + sWord.charAt(i);
    }
  }
  return b;      
}

public boolean palindrome(String word)
{
  String noCase = new String();
  for(int i=0;i<word.length();i++){
    if(Character.isLetter(word.charAt(i))){
      noCase = noCase + word.charAt(i);  
      noCase = noCase.toLowerCase();
    }
  }
  if(noCase.equals(reverse(noSpaces(word)))){
    return true;
  }
  return false;  
}
public String reverse(String str)
{   
    
    String sNew = new String();
    for(int i=str.length()-1; i>=0; i--){
      if(Character.isLetter(str.charAt(i))){
         sNew= sNew + str.charAt(i);
      }
    }
    return sNew.toLowerCase();    
}


