package PropagationGraph {
	private import ecore::*;
	public import instance::*;
	public import errorModel::*;
	public import aadl2::*;
	item def PropagationGraph {
		attribute name : EString [1];
		attribute description : EString [1];
		ref item components : ComponentInstance [*];
		item propagationGraphPaths : PropagationGraphPath [*];
		ref item connections : ConnectionInstance [*];
		ref item root : ComponentInstance [1];
	}
	item def PropagationGraphPath {
		attribute name : EString [1];
		item pathSrc : PropagationPathEnd [1];
		item pathDst : PropagationPathEnd [1];
		attribute highlight : EBoolean [1];
		attribute type : PropagationType [1];
		ref item 'connection' : ConnectionInstance [1];
	}
	item def PropagationPathEnd {
		ref item connectionInstance : ConnectionInstance [1];
		ref item errorPropagation : ErrorPropagation [1];
		ref item componentInstance : ComponentInstance [1];
		attribute highlight : EBoolean [1];
	}
	enum def PropagationType {
		enum 'connection';
		enum 'binding';
		enum userDefined;
	}
}

