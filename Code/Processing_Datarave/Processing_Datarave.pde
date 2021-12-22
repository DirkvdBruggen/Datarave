import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

Robot robot;

Table table;
int roodGehalte;
int groenGehalte;
int blauwGehalte;
float helderheid;
float leeftijd;

int windSnelheid;
int windRichting;

int delete=900;
void setup() {
  size(400, 400);
  //background(0); 
  size(400, 400);
  fill(0);
  rect(30, 80, 340, 70, 15);
  textSize(22);
  fill(255);
  text("START COLLABRATIVE ROBOT", 38, 120);

  try { 
    robot = new Robot();
  } 
  catch (AWTException e) {
    e.printStackTrace();
    exit();
  }
  table = loadTable("gegevensInsta.csv", "header");
  println(table.getRowCount() + " total rows in table");

  for (TableRow row : table.rows()) {
    roodGehalte = row.getInt("Rood");
    groenGehalte = row.getInt("Groen");
    blauwGehalte = row.getInt("Blauw");
    helderheid = row.getInt("Helderheid");
    leeftijd = row.getInt("Leeftijd");

    println("Rood:" + roodGehalte + " Groen:" + groenGehalte + " Blauw:" + blauwGehalte);
    println("Helderheid:" + helderheid);
    println("Leeftijd:" + leeftijd);
    println("--------------------------------");
  }
}

void draw() { 
  if (mousePressed) {
    delay(5000);
    robot.keyPress(KeyEvent.VK_F11);
    robot.keyRelease(KeyEvent.VK_F11);
   
    delay(32000);// Tijd geven om cursor naar sonic pi programma te verplaatsen

    for (int i = 0; i<table.getRowCount() - 1; i++) {
      roodGehalte=(table.getInt(i, "Rood"));
      groenGehalte=(table.getInt(i, "Groen"));
      blauwGehalte=(table.getInt(i, "Blauw"));
      leeftijd=(table.getInt(i, "Leeftijd"));
      helderheid=(table.getInt(i, "Helderheid"));
      //
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd < 25)) {
        println("trap live trap | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 60) && (leeftijd < 25)) {
        println("trap glitch trap | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      // ----------------------------------------------------------------------------------------------------------------------
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 25 && leeftijd < 35)) {
        println("live live live  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 25 && leeftijd < 35)) {
        println("live trap live  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 25 && leeftijd < 35)) {
        println("live glitch live  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      //-------------------------------------------------------------------------------------------------------------------------------------------
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd >= 35)) {
        println("glitch glitch glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid );  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 35)) {
        println("glitch trap glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid );  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 35)) {
        println("glitch live glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid );  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }
      // ------------------------------------------------------------------------------------------------------------------
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 25 && leeftijd < 35)) {
        println("trap trap live | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 35)) {
        println("trap trap glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }
      // ------------------------------------------------------------------------------------------------------------------
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd < 25)) {
        println("live live trap  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 35)) {
        println("live live glitch  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      // ------------------------------------------------------------------------------------------------------------------
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd < 25)) {
        println("glitch glitch trap | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid );  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd >= 25 && leeftijd < 35)) {
        println("glitch glitch live | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid );  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      // TLL TGG
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 25 && leeftijd < 35)) {
        println("trap live live | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd >= 35)) {
        println("trap glitch glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);
        for (int j = 0; j<delete; j++) {//verwijderen tekens in sonic pi
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2);
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }    
      // GTT GLL
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd < 25)) {
        println("glitch trap trap  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }
      if (((groenGehalte > roodGehalte) && (groenGehalte> blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 25 && leeftijd < 35)) {
        println("glitch live live  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      // LTT LGG
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 25 && leeftijd < 35)) {
        println("live trap trap  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd >= 35)) {
        println("live glitch glitch  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }

      // TLG TGL ------------------------------------------------------------------------------------------------------------------
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd >= 35)) {
        println("trap live glitch | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte );
        for (int j = 0; j<delete; j++) {//verwijderen 500 tekens
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2); 
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      } 
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 60 && helderheid < 100) && (leeftijd >= 25 && leeftijd < 35)) {
        println("trap glitch live | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte );
        for (int j = 0; j<delete; j++) {//verwijderen 500 tekens
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F2); 
        robot.keyRelease(KeyEvent.VK_F2);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }  
      // LTG LGT
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 35)) {
        println("live trap glitch  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F10); 
        robot.keyRelease(KeyEvent.VK_F10);
      }
      if (((blauwGehalte > roodGehalte) && (blauwGehalte> groenGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd < 25)) {
        println("live glitch trap  | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte + " H:"+helderheid + " L:"+leeftijd);  
        for (int j = 0; j<delete; j++) {
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F3); 
        robot.keyRelease(KeyEvent.VK_F3);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F7); 
        robot.keyRelease(KeyEvent.VK_F7);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }
      // GLT GTL
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 40 && helderheid < 60) && (leeftijd < 25)) {
        println("glitch live trap | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte );
        for (int j = 0; j<delete; j++) {//verwijderen 500 tekens
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F6); 
        robot.keyRelease(KeyEvent.VK_F6);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F8); 
        robot.keyRelease(KeyEvent.VK_F8);
      }  
      if (((roodGehalte > groenGehalte) && (roodGehalte > blauwGehalte)) && (helderheid >= 10 && helderheid < 40) && (leeftijd >= 35)) {
        println("glitch trap live | "+ "R:" + roodGehalte + " G:" + groenGehalte + " B:" + blauwGehalte );
        for (int j = 0; j<delete; j++) {//verwijderen 500 tekens
          robot.keyPress(KeyEvent.VK_BACK_SPACE); 
          robot.keyRelease(KeyEvent.VK_BACK_SPACE);
        }
        robot.keyPress(KeyEvent.VK_F4); 
        robot.keyRelease(KeyEvent.VK_F4);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F5); 
        robot.keyRelease(KeyEvent.VK_F5);
        delay(8000);
        robot.keyPress(KeyEvent.VK_F9); 
        robot.keyRelease(KeyEvent.VK_F9);
      }

      delay(20000);

      robot.keyPress(KeyEvent.VK_CONTROL);
      robot.keyPress(KeyEvent.VK_ENTER);
      robot.keyRelease(KeyEvent.VK_CONTROL);
      robot.keyRelease(KeyEvent.VK_ENTER);
      delay(5000);
    }
  }
}
