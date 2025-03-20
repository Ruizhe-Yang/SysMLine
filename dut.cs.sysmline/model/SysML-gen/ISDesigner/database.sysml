package database {
	private import ecore::*;
	public import typeslibrary::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	abstract item def NamedElement :> DatabaseElement{
		attribute name : EString [1];
	}
	item def DataBase :> TableContainer, TypesLibraryUser{
		attribute url : EString [1];
		item schemas : Schema [*];
		item defines : UserDefinedTypesLibrary [*];
	}
	abstract item def AbstractTable :> NamedElement{
		ref item owner : TableContainer [1];
	}
	item def Column :> NamedElement{
		attribute nullable : EBoolean [1];
		attribute defaultValue : EString [1];
		ref item indexes : Index [*];
		ref item indexElements : IndexElement [*];
		ref item primaryKey : PrimaryKey [1];
		ref item foreignKeys : ForeignKey [*];
		ref item foreignKeyElements : ForeignKeyElement [*];
		item type : Type [1];
		ref item sequence : Sequence [1];
		ref item owner : Table [1];
		attribute autoincrement : EBoolean [1];
		attribute inPrimaryKey : EBoolean [1];
		attribute inForeignKey : EBoolean [1];
		attribute unique : EBoolean [1];
	}
	item def Index :> NamedElement{
		attribute qualifier : EString [1];
		item elements : IndexElement [*];
		attribute unique : EBoolean [1];
		attribute cardinality : EInt [1];
		attribute indexType : EString [1];
		ref item owner : Table [1];
	}
	item def View :> AbstractTable{
		attribute query : EString [1];
		item columns : ViewColumn [*];
		item tables : ViewTable [*];
	}
	item def Table :> AbstractTable{
		item primaryKey : PrimaryKey [1];
		item foreignKeys : ForeignKey [*];
		item constraints : Constraint [*];
		item indexes : Index [*];
		item columns : Column [*];
	}
	item def PrimaryKey :> NamedElement{
		ref item columns : Column [*];
		ref item owner : Table [1];
	}
	item def ForeignKey :> NamedElement{
		item elements : ForeignKeyElement [*];
		ref item owner : Table [1];
		ref item target : Table [1];
	}
	item def ForeignKeyElement :> DatabaseElement{
		ref item fkColumn : Column [1];
		ref item pkColumn : Column [1];
	}
	item def IndexElement :> DatabaseElement{
		ref item column : Column [1];
		attribute asc : EBoolean [1];
	}
	item def Constraint :> NamedElement{
		attribute expression : EString [1];
		ref item owner : Table [1];
	}
	abstract item def DatabaseElement :> ObeoDSMObject{
		attribute ID : EString [1];
		attribute comments : EString [1];
		attribute techID : EString [1];
	}
	item def Schema :> TableContainer;
	item def Sequence :> NamedElement{
		attribute start : EBigInteger [1];
		attribute increment : EBigInteger [1];
		attribute minValue : EBigInteger [1];
		attribute maxValue : EBigInteger [1];
		attribute cacheSize : EBigInteger [1];
		attribute cycle : EBoolean [1];
		ref item columns : Column [*];
	}
	abstract item def TableContainer :> NamedElement{
		item tables : AbstractTable [*];
		item sequences : Sequence [*];
	}
	item def ViewElement {
		attribute name : EString [1];
		attribute 'alias' : EString [1];
	}
	item def ViewColumn :> ViewElement{
		ref item 'from' : ViewTable [1];
	}
	item def ViewTable :> ViewElement;
}

