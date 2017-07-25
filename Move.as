package {

	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	public class Move {

		private var exertedObject: Sprite = new Sprite();
		private var isClicking: Boolean = false;
		private var nowWhere: Point = new Point();

		public function Move(exertedObject: Sprite) {
			// constructor code
			this.exertedObject = exertedObject;
			if (!exertedObject.hasEventListener(MouseEvent.MOUSE_DOWN)) {
				exertedObject.addEventListener(MouseEvent.MOUSE_DOWN, onClick);
			}
			if (!exertedObject.hasEventListener(MouseEvent.MOUSE_UP)) {
				exertedObject.addEventListener(MouseEvent.MOUSE_UP, offClick);
			}
			if (!exertedObject.hasEventListener(MouseEvent.MOUSE_MOVE)) {
				exertedObject.addEventListener(MouseEvent.MOUSE_MOVE, onMove);
			}
		}

		private function onClick(in1: MouseEvent): void {
			isClicking = true;
			var originalPlace:Point = new Point(exertedObject.x, exertedObject.y);
			nowWhere = new Point(in1.stageX, in1.stageY);
			nowWhere = nowWhere.subtract(originalPlace);
		}

		private function offClick(in1: MouseEvent): void {
			isClicking = false;
		}

		private function onMove(in1: MouseEvent): void {
			if (isClicking) {
				var newPlace: Point = new Point(in1.stageX, in1.stageY).subtract(nowWhere);
				exertedObject.x = newPlace.x;
				exertedObject.y = newPlace.y;
			}
		}

	}

}