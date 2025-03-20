package dbevolution {
	private import ecore::*;
	public import database::*;
	public import org.eclipse.emf::*;
	public import typeslibrary::*;
	public import compare::*;
	public import environment::*;
	public import technicalid::*;
	item def DatabaseChangeSet :>;
	abstract item def TableChange :> DBDiff{
		ref item table : Table [1];
	}
	item def AddTable :> TableChange;
	item def RemoveTable :> TableChange;
	item def AlterTable :> TableChange;
	item def RenameTableChange :> TableChange{
		ref item newTable : Table [1];
	}
	item def UpdateTableCommentChange :> TableChange{
		ref item newTable : Table [1];
	}
	abstract item def ColumnChange :> DBDiff{
		ref item column : Column [1];
	}
	item def AddColumnChange :> ColumnChange;
	item def RemoveColumnChange :> ColumnChange;
	item def RenameColumnChange :> ColumnChange{
		ref item newColumn : Column [1];
	}
	item def UpdateColumnChange :> ColumnChange;
	item def UpdateColumnCommentChange :> ColumnChange;
	abstract item def PrimaryKeyChange :> DBDiff{
		ref item primaryKey : PrimaryKey [1];
	}
	item def AddPrimaryKey :> PrimaryKeyChange;
	item def RemovePrimaryKey :> PrimaryKeyChange;
	item def UpdatePrimaryKey :> PrimaryKeyChange{
		ref item newPrimaryKey : PrimaryKey [1];
	}
	abstract item def IndexChange :> DBDiff{
		ref item index : Index [1];
	}
	item def AddIndex :> IndexChange;
	item def RemoveIndex :> IndexChange;
	item def UpdateIndex :> IndexChange{
		ref item newIndex : Index [1];
	}
	abstract item def ForeignKeyChange :> DBDiff{
		ref item foreignKey : ForeignKey [1];
	}
	item def AddForeignKey :> ForeignKeyChange;
	item def RemoveForeignKey :> ForeignKeyChange;
	item def UpdateForeignKey :> ForeignKeyChange{
		ref item newForeignKey : ForeignKey [1];
	}
	abstract item def ConstraintChange :> DBDiff{
		ref item 'constraint' : Constraint [1];
	}
	item def AddConstraint :> ConstraintChange;
	item def RemoveConstraint :> ConstraintChange;
	item def UpdateConstraint :> ConstraintChange{
		ref item newConstraint : Constraint [1];
	}
	abstract item def SequenceChange :> DBDiff{
		ref item sequence : Sequence [1];
	}
	item def AddSequence :> SequenceChange;
	item def RemoveSequence :> SequenceChange;
	item def UpdateSequence :> SequenceChange{
		ref item newSequence : Sequence [1];
	}
	item def SchemaChange :> DBDiff{
		ref item schema : Schema [1];
	}
	item def AddSchema :> SchemaChange;
	item def RemoveSchema :> SchemaChange;
	item def AlterSchema :> SchemaChange;
	item def RenameSchemaChange :> SchemaChange{
		ref item newSchema : Schema [1];
	}
	item def UpdateSchemaCommentChange :> SchemaChange{
		ref item newSchema : Schema [1];
	}
	abstract item def DBDiff :> {
		ref item target : EObject [1];
	}
	abstract item def ViewChange :> DBDiff{
		ref item 'view' : View [1];
	}
	item def AddView :> ViewChange;
	item def RemoveView :> ViewChange;
	item def AlterView :> ViewChange;
	item def RenameViewChange :> ViewChange{
		ref item newView : View [1];
	}
	item def UpdateViewCommentChange :> ViewChange{
		ref item newView : View [1];
	}
	item def UpdateViewQueryChange :> ViewChange{
		ref item newView : View [1];
	}
}

