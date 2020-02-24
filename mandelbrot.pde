
float ca = 0.8;
float cb = 0.15;

int max_iter = 100;
void setup(){
  size(600,600);
  //background(0);
  colorMode(HSB,100);
}

void draw(){
  for(int i = 0 ; i < width ; i++){
    for(int j = 0 ; j < height ; j++){
      float x0 = map(i,0,width,-1.5,1.5);
      float y0 = map(j,0,height,-1.5,1.5);
      float x = 0.0;
      float y = 0.0;
      int n = 0;
      while(n < max_iter && x*x + y*y <= 8){
        float xtemp = x*x - y*y + x0;
        y = 2 * x * y + y0;
        x = xtemp;
        n++;
      }
      float b;
      if(n==100){
        b = 0;
      }else{
        b = map(n,0,max_iter,0,255);
      }
      set(i,j,color(0,0,b));
      
    } 
  }
}
