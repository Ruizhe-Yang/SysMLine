package dc {
	private import ecore::*;
	part def Font {
		attribute name : EString [1];
		attribute size : EFloat [1];
		attribute isBold : EBoolean [1];
		attribute isItalic : EBoolean [1];
		attribute isUnderline : EBoolean [1];
		attribute isStrikeThrough : EBoolean [1];
	}
	part def Point {
		attribute x : EFloat [1];
		attribute y : EFloat [1];
	}
	part def Bounds {
		attribute x : EFloat [1];
		attribute y : EFloat [1];
		attribute width : EFloat [1];
		attribute height : EFloat [1];
	}
}

