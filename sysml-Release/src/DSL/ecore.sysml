package ecore{
	private import ScalarValues::*;
	private import Base::*;
	private import Time::*;
	
	attribute def EBoolean :> Boolean;
	attribute def EByte :> DataValue;
	attribute def EChar :> Anything;
	attribute def EDouble :> Real;
	attribute def EFloat :> Real;
	attribute def EInt :> Integer;
	attribute def ELong :> String;
	attribute def EShort :> String;
	attribute def EByteArray :> String;
	
	
	attribute def EString :> String;
	part def EObject :> Anything;
	attribute def BaseElement :> Anything;
	attribute def EDate :> DateTime;
}
