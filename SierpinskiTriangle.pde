int limit = 1;

public void setup()
{
	size(650, 650);
	background(0, 164, 186);
}
public void draw()
{
	// // background(0, 164, 186);
	
	// rotate(radians(180));
	// sierpinski(0,0,650/3);
	// sierpinski(650/3,0,650/3);

	// int b =0;

	// for(int n=0; n<=650; n+=650/3)
	// 	sierpinski(b+=10,0,n);
	// sierpinski(0,0,650/3);
	// sierpinski(650/3,0,650/3);


	// for(int b =0; b<=650; b+=650/3)
	// 	sierpinski(b, 0, 650/3);

	// for(int b =0; b<=650; b+=650/3){
	// 	translate(b, 0);
	// 	rotate(PI);
	// 	sierpinski(0, 0, 650/3);
	// }


	translate(650,650);
	rotate(PI);
	// fill(setcolor(mouseX,mouseY,mouseX));
	fill((int)Math.random()*100,(int)Math.random()*100, (int)Math.random()*100);
	sierpinski(0,0,650);
	rotate(-PI);
	translate(-650,-650);
	sierpinski(10,0,650/2);
	sierpinski(650/2,0,650/2);

}
public void mouseMoved()//optional
{
	setLimit(mouseX);
	fill(((int)Math.random()*5)+200,((int)Math.random()*40)+160, ((int)Math.random()*50+170));
	// mousePressed();
	// setcolor(mouseX,mouseY,mouseX);
}
// public void mousePressed(){
// 	setcolor( (int)Math.random()* 255, (int)Math.random()* 255,(int)Math.random()* 255);
// }
public void sierpinski(int x, int y, int len) 
{
	
	// stroke(135, 188, 132);
	// fill(135, 188, 132);
	fill(((int)Math.random()*5)+200,((int)Math.random()*40)+160, ((int)Math.random()*50+170));
	if(len <= limit)
		triangle(x, y, x+len/2, y-len/2, x+len, y);
	else {
		sierpinski(x,y,len/2);
		fill(((int)Math.random()*5)+200,((int)Math.random()*40)+160, ((int)Math.random()*50+170));
		sierpinski(x+len/2,y,len/2);
		fill(((int)Math.random()*5)+200,((int)Math.random()*40)+160, ((int)Math.random()*50+170));
		sierpinski(x+len/4,y+len/2,len/2);
	}

}

public void setLimit(int x){limit = x;}



 public void setcolor(int a, int b, int c)
 {
 	fill(a,b,c);
 	stroke(a,b,c);
 }
