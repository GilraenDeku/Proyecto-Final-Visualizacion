class TreemapProcessing extends PPainter{


import treemap.*;

Treemap map;

  
void setup()
{
  smooth();
  strokeWeight(0.25f);
  PFont font = createFont("Serif", 10);
  textFont(font);
  size(720,480);



  WordMap mapData = new WordMap();
  

  //Data Box
  
  String[] lines = { 
    ""
  };
    
   //Upload data
  
  lines = loadStrings("zika.csv");

   for(int i=0; i<lines.length; i++)
   {
     String[] list = split(lines[i], ';');
     mapData.addWordValue(list[0],int(list[1]));
   } 

  mapData.finishAdd();
  
  //Create treemap object 
  
  map = new Treemap(mapData, 0, 0, width, height);

  noLoop();
}

 // Draw funtion

void draw()
{
  background(0);
  map.draw();
}




// --------------------------------------------------------------

class WordItem extends SimpleMapItem
{
  String word;
  int value = 255;

  WordItem(String word)
  {
    this.word = word;
  }
  
  // Draw funtion implementations
  void draw()
  {
    fill(value);
    rect(x, y, w, h);

    fill(0);
    if(w>textWidth(word)+6)
    {
      if(h>textAscent()+6)
      {
        textAlign(CENTER, CENTER);
        text(word, x+w/2, y+h/2);
      }
    }
  } 
}

// --------------------------------------------------------------

class WordMap extends SimpleMapModel
{
  HashMap words;

  WordMap()
  {
    words = new HashMap();
  }

  void addWord(String word)
  {
    WordItem item = (WordItem) words.get(word);
    
    //Check if item exist
    if (item == null)
    {
      item = new WordItem(word);
      words.put(word, item);
    }
    item.incrementSize();
  }

  void addWordValue(String word, int Value)
  {
    WordItem item = (WordItem) words.get(word);
    if (item == null)
    {
      item = new WordItem(word);
      words.put(word, item);
    }
    item.incrementSize();
    item.setSize(Value);
  }

  void finishAdd()
  {
    items = new WordItem[words.size()];
    words.values().toArray(items);
  }
}

}