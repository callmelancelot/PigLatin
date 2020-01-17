public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	int x = -1;
  String y = "eaiou";
  for(int i = 0; i<sWord.length();i++){
    for(int t = 0; t<y.length();t++){
      if(sWord.charAt(i) == y.charAt(t)){
        x=i;
        break;
      }
    }
    if(x == i ){
      break;
    }
  }
  return x;
  
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  String x = sWord;
	if(findFirstVowel(sWord) == -1)
	{
		x = x + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		x =  x + "way"; 
	}
  if(findFirstVowel(sWord) > 0)
  {
    x = sWord.substring(findFirstVowel(sWord, 
  
}
