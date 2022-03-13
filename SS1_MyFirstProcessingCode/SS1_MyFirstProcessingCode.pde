//My First Processing Code Work by Priya Begum

// this is a comment 

//to make a canvas size use size(width, length);
size(1080, 720);


// to draw a line use line (x1, y1, x2, y2);
strokeWeight(10);
line (600, 80, 900, 600);

// to make a certain shape go to refrence on processing website
fill(#8E1FCB);
stroke(#8AFCA3);
strokeWeight(8);
triangle(40, 90, 60, 50, 90, 90);

//to make a a rectangle you type rect(pointx, pointy, width, height)
//the point is in the top left of the rectangle
//type rectMode(Center); above rect() if you want the pointto be in the center
//to make it as corners you can use rectMode(CORNERS);
//default os rectMode(CORNER);
//rect(x1,y1,x2,y2);
fill(#FA5C35);
stroke(#FF9F5F);
strokeWeight(5);
rect(230, 310, 479, 300);

//make a circle
stroke(#FC8AE2);
fill(#B3B2FF);
strokeWeight(7);
ellipse(200 ,400 ,300, 300);

//stroke is used to color the outline fill is used to color the inside stroke() fill()
//use background() for background color
//type these before typing the shape
//can use noFill() and noStroke()
//can use color seleector tool to help pick color
//strokeWeight() for thickness of lines
