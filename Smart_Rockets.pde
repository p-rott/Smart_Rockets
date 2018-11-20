float mutationChance = 0.005;
int parentChance = 20;
int rocketAmount = 100;
int rocketFrames = 300;
boolean simulate = true;

RocketSystem rs;
PVector start, goal;


void setup()
{
  size(800, 800);
  start = new PVector(width/2, height - 20);
  goal = new PVector(width/2, 50);
  rs = new RocketSystem(rocketAmount, rocketFrames, start, goal, parentChance, mutationChance);
  rs.addObstacle(width/2, height/2, 200);
  rs.addObstacle(width/6, height/6, 100);
  rs.addObstacle(5 * width/6, height/6, 100);
}


void draw()
{
  if (simulate)
  {
    rs.update();    
  }
  rs.show();
}

void mouseClicked()
{
  rs.addObstacle(mouseX, mouseY, 100);
}

void keyPressed()
{
  simulate = !simulate;
}