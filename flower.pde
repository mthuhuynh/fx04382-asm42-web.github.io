
noStroke();

void setup()
{
  size(800,500);
  frameRate(30);
}

       /*************
       *OBJECT TYPES
       **************/
      /******************
       *Flower Object Type
       *******************/
      var Flower = function(x, y, height) {
        this.x = x;
        this.y = y;
        this.height = height;
      };

      Flower.prototype.growBy = function(amount) {
        this.height += amount * 2;
      };

      /*****************
       *Tulip Object Type
       ******************/
      var Tulip = function(x, y, height) {
        Flower.call(this, x, y, height);
      };

      Tulip.prototype = Object.create(Flower.prototype);

      Tulip.prototype.draw = function() {
        noStroke();
        fill(16, 122, 12);
        rect(this.x, this.y, 10, -this.height);
        fill(255, 0, 0);
        // petals
        ellipse(this.x + 5, this.y - this.height, 44, 44);
        triangle(this.x - 16, this.y - this.height,
          this.x + 20, this.y - this.height,
          this.x - 20, this.y - this.height - 31);
        triangle(this.x - 14, this.y - this.height,
          this.x + 24, this.y - this.height,
          this.x + 3, this.y - this.height - 39);
        triangle(this.x + -4, this.y - this.height,
          this.x + 26, this.y - this.height,
          this.x + 29, this.y - this.height - 36);
      };

      /*********************
       *Sunflower Object Type
       **********************/
      var Sunflower = function(x, y, height) {
        Flower.call(this, x, y, height);
      };

      Sunflower.prototype = Object.create(Flower.prototype);

      Sunflower.prototype.draw = function() {
        noStroke();
        fill(19, 219, 4);
        rect(this.x, this.y, 10, -this.height);
        // petals
        fill(255, 221, 0);
        ellipse(this.x - 10, this.y - this.height, 20, 18);
        ellipse(this.x + 5, this.y - this.height - 15, 20, 18);
        ellipse(this.x + 5, this.y - this.height + 15, 20, 18);
        ellipse(this.x + 20, this.y - this.height, 20, 18);
        fill(20, 20, 20);
        ellipse(this.x + 5, this.y - this.height, 20, 20);
      };

      /*********************
       *Iris Object Type
       **********************/
      var Iris = function(x, y, height) {
        Flower.call(this, x, y, height);
      };

      Iris.prototype = Object.create(Flower.prototype);

      Iris.prototype.draw = function() {
        fill(83, 163, 68);
        rect(this.x, this.y, 10, -this.height);
        // petals
        fill(10, 106, 150);
        ellipse(this.x + 15, this.y - this.height + 10, 20, 18);
        ellipse(this.x - 7, this.y - this.height - 8, 20, 18);
        ellipse(this.x - 7, this.y - this.height + 8, 20, 18);
        ellipse(this.x + 15, this.y - this.height - 10, 20, 18);
        ellipse(this.x - 10, this.y - this.height, 20, 18);
        ellipse(this.x + 5, this.y - this.height - 15, 20, 18);
        ellipse(this.x + 5, this.y - this.height + 15, 30, 18);
        ellipse(this.x + 20, this.y - this.height, 20, 18);
        fill(255, 255, 255);
        ellipse(this.x + 5, this.y - this.height, 25, 10);
      };

      /*********************
       *Lavender Object Type
       **********************/
      var Lavender = function(x, y, height) {
        Flower.call(this, x, y, height);
      };

      Lavender.prototype = Object.create(Flower.prototype);

      Lavender.prototype.draw = function() {
        fill(61, 204, 33);
        rect(this.x, this.y, 10, -this.height);
        // petals
        fill(255, 8, 255);
        ellipse(this.x - 10, this.y - this.height, 20, 18);
        ellipse(this.x + 5, this.y - this.height - 15, 20, 18);
        ellipse(this.x + 5, this.y - this.height + 15, 30, 48);
        ellipse(this.x + 20, this.y - this.height, 20, 18);
      };

      /*********************
       *Rose Object Type
       **********************/
      var Rose = function(x, y, height) {
        Flower.call(this, x, y, height);
      };

      Rose.prototype = Object.create(Flower.prototype);

      Rose.prototype.draw = function() {
        fill(10, 196, 0);
        rect(this.x, this.y, 10, -this.height);
        // petals
        fill(250, 8, 56);
        ellipse(this.x + 15, this.y - this.height + 10, 20, 18);
        ellipse(this.x - 7, this.y - this.height - 8, 20, 18);
        ellipse(this.x - 7, this.y - this.height + 8, 20, 18);
        ellipse(this.x + 15, this.y - this.height - 10, 20, 18);
        ellipse(this.x - 10, this.y - this.height, 20, 18);
        ellipse(this.x + 5, this.y - this.height - 15, 20, 18);
        ellipse(this.x + 5, this.y - this.height + 15, 20, 18);
        ellipse(this.x + 20, this.y - this.height, 20, 18);
        fill(230, 250, 10);
        ellipse(this.x + 5, this.y - this.height, 20, 20);
      };

      /******************
       *Grass Object Type
       *******************/

      var Grass = function(x1, y1, x2, y2, x3, y3, x4, y4, color) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        this.x3 = x3;
        this.y3 = y3;
        this.x4 = x4;
        this.y4 = y4;
        this.color = color;
      };

      Grass.prototype.draw = function() {
        fill(0, this.color, 0);
        beginShape();
        curveVertex(this.x1, this.y1);
        curveVertex(this.x2, this.y2);
        curveVertex(this.x3, this.y3);
        curveVertex(this.x4, this.y4);
        endShape();
      };

      /**************
       *MAIN PROGRAM
       ***************/

      /** create object instances **/

      //tulip
      var tulipNumber = random(5, 10);

      var tulipArr = new Array;

      for (var i = 0; i < tulipNumber; i++) {
        var tulipNew = new Tulip(random(10, 500), random(400, 500), 150);
        tulipArr.push(tulipNew);
      }

      //sunflower
      var sunflowerNumber = random(5, 10);

      var sunflowerArr = new Array;

      for (var i = 0; i < sunflowerNumber; i++) {
        var sunflowerNew = new Sunflower(random(10, 500), random(400, 500), 100);
        sunflowerArr.push(sunflowerNew);
      }

      //iris
      var irisNumber = random(5, 10);

      var irisArr = new Array;

      for (var i = 0; i < irisNumber; i++) {
        var irisNew = new Iris(random(10, 500), random(400, 500), 70);
        irisArr.push(irisNew);
      }

      //lavender
      var lavenderNumber = random(5, 10);

      var lavenderArr = new Array;

      for (var i = 0; i < lavenderNumber; i++) {
        var lavenderNew = new Lavender(random(10, 500), random(400, 500), 120);
        lavenderArr.push(lavenderNew);
      }

      //rose
      var roseNumber = random(5, 10);

      var roseArr = new Array;

      for (var i = 0; i < roseNumber; i++) {
        var roseNew = new Rose(random(10, 500), random(400, 500), 70);
        roseArr.push(roseNew);
      }

      //grass
      var grassArr = new Array;

      for (var i = 0; i < 500; i++) {
        var grassNew = new Grass(random(0, 800), random(350, 500), random(0, 800), random(350, 500), random(0, 800), random(350, 500), random(0, 800), random(350, 500), random(200, 250));
        grassArr.push(grassNew);
      }

      /** draw scene **/
      var drawScene = function() {
        background(207, 250, 255);
        //sun
        fill(255, 170, 0);
        ellipse(200, 50, 70, 70);
        // clouds
        fill(255, 255, 255);
        // left cloud
        ellipse(100, 100, 126, 97);
        ellipse(160, 110, 90, 60);
        ellipse(20, 120, 70, 60);
        // right cloud
        ellipse(310, 100, 126, 97);
        ellipse(360, 100, 90, 60);
        ellipse(260, 100, 70, 60);
        // fence
        fill(120, 80, 19);
        rect(0, 300, 800, 20);
        rect(0, 250, 800, 20);
        //ground
        fill(0, 255, 0);
        rect(0, 350, 800, 150);
        // grass
        for (var i = 0; i < grassArr.length; i++) {
          grassArr[i].draw();
        }
        // path

        fill(120, 80, 19);
        quad(670, 350, 760, 350, 600, 500, 780, 500);
        // house body
        noStroke();
        fill(255, 255, 179);
        rect(460, 150, 310, 207);
        fill(255, 235, 153);
        rect(460, 280, 310, 77);
        //door
        fill(120, 80, 19);
        rect(680, 250, 70, 100);
        //window
        rect(490, 200, 70, 50);
        rect(580, 200, 70, 50);
        //roof
        fill(255, 0, 47);
        triangle(460, 150, 660, 80, 770, 150);

        //tulip
        for (var i = 0; i < tulipArr.length; i++) {
          tulipArr[i].draw();
        }

        //sunflower
        for (var i = 0; i < sunflowerArr.length; i++) {
          sunflowerArr[i].draw();
        }

        //iris
        for (var i = 0; i < irisArr.length; i++) {
          irisArr[i].draw();
        }

        //lavender
        for (var i = 0; i < lavenderArr.length; i++) {
          lavenderArr[i].draw();
        }

        //rose
        for (var i = 0; i < sunflowerArr.length; i++) {
          roseArr[i].draw();
        }
      };

      /** interactive **/
      mouseClicked = function() {
        //tulip
        for (var i = 0; i < tulipArr.length; i++) {
          tulipArr[i].growBy(10);
        }

        //sunflower
        for (var i = 0; i < sunflowerArr.length; i++) {
          sunflowerArr[i].growBy(5);
        }

        //lavender
        for (var i = 0; i < lavenderArr.length; i++) {
          lavenderArr[i].growBy(8);
        }

        //iris
        for (var i = 0; i < irisArr.length; i++) {
          irisArr[i].growBy(15);
        }

        //rose
        for (var i = 0; i < roseArr.length; i++) {
          roseArr[i].growBy(3);
        }

        drawScene();
      };

      drawScene();
