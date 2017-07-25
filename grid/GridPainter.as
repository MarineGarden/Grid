package grid {

	import flash.display.Stage;
	import flash.display.Shape;
	import flash.display.Graphics;

	public class GridPainter {

		public static const BREADTH: int = 2;

		public function GridPainter() {
			// constructor code
		}

		public function drawVerticalGrid(stage: Stage): Shape {
			var result: Shape = new Shape();
			var painter: Graphics = result.graphics;
			painter.beginFill(0x555555);
			painter.drawRect(0, 0, BREADTH, stage.stageHeight * 3);
			painter.endFill();
			return result;
		}

		public function drawHorizontalGrid(stage: Stage): Shape {
			var result: Shape = new Shape();
			var painter: Graphics = result.graphics;
			painter.beginFill(0x555555);
			painter.drawRect(0, 0, stage.stageWidth * 3, BREADTH);
			painter.endFill();
			return result;
		}

	}

}