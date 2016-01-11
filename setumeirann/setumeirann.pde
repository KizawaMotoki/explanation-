//説明欄を担当します鬼澤元気です。

void setup () {
  size(600, 400);
  for(int i=0; i<30; i++ ){
  mx [i] = 0;
  my [i] = 0;
  }
}



int mx [] = new int [30];
int my [] = new int [30];


void draw () {
  background(0);
  
  //フレームごとに現在のマウスの位置を保存
  mx[29] = mouseX;
  my[29] = mouseY;
  for(int i=1; i<30; i++ ){
    
    mx[i-1] = mx[i];
    my[i-1] = my[i];
    
  }
  
  if (dist(mouseX, mouseY, ボタンの中心の座標  ) >　ボタンの半径　) {

    if (mx[0]==mx[29] && my[0]==my[29]) {       //30フレーム前と現在のフレームのマウスの位置の比較(0.5秒前)
                                                  //(等しいならマウスは動いていないと判断)
      expl(説明欄の場所指定(ボタンの右下など));        //説明欄の関数
    }

    if (mousePressed && (mouseButton == LEFT) && dist(mouseX, mouseY, ボタンの中心の座標  ) >　ボタンの半径) {
    fill(200,20,20);
    ellipse(a+97, b+72);
      exam(例を示す欄の場所指定);                      //例の関数
      }
  } 


  void expl (int a, int b ) {        //a,bは説明欄が出てくる座標
    fill(30, 30, 30);
    rect(a, b, a+100, b+75);              //欄を作る
    
    fill(0);
    textSize(2);
    text("そのボタンの説明", a+2, b+2);   //説明文
    
    fill(100, 10, 10);
    ellipse(a+97, b+72);
    fill(0);
    textSize(2);
    text("Ex", a+95, b+72);                //押す例が示されるボタン      
  }    



 void exam (int c, int d ){             //c,dは例が出てくる座標
   fill(255);
   rect(c,d,c+75, d+100 );                  //欄を作る
   
   fill(0);
    textSize(2);
    text("そのボタンの説明", a+2, b+2);   //説明文
   
 }
 

