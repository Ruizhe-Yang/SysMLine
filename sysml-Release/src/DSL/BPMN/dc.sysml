package dc {
	private import ecore::*;
	part def Font {
		attribute name [1] : EString;
		attribute size [1] : EFloat;
		attribute isBold [1] : EBoolean;
		attribute isItalic [1] : EBoolean;
		attribute isUnderline [1] : EBoolean;
		attribute isStrikeThrough [1] : EBoolean;
	}
	part def Point {
		attribute x [1] : EFloat;
		attribute y [1] : EFloat;
	}
	part def Bounds {
		attribute x [1] : EFloat;
		attribute y [1] : EFloat;
		attribute width [1] : EFloat;
		attribute height [1] : EFloat;
	}
}

