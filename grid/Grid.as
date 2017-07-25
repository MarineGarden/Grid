package grid {
	
	import flash.display.Stage;
	import flash.display.Shape;
	import flash.display.Sprite;

	public class Grid {

		public static const GRID_WIDTH: int = 40;
		public static const GRID_HEIGHT: int = 40;

		public function Grid() {
			// constructor code
		}

		public function show(stage: Stage): Sprite {
			var painter: GridPainter = new GridPainter();
			var result: Sprite = new Sprite();
			var background:GridBackground = new GridBackground(stage);
			result.addChild(background);
			for (var i: int = 0; i <= background.width; i += GRID_WIDTH) {
				var verticalGrid: Shape = painter.drawVerticalGrid(stage);
				verticalGrid.x = i;
				result.addChild(verticalGrid);
			}
			for (var j: int = 0; j <= background.height; j += GRID_HEIGHT) {
				var horizontalGrid: Shape = painter.drawHorizontalGrid(stage);
				horizontalGrid.y = j;
				result.addChild(horizontalGrid);
			}
			return result;
		}

	}

}