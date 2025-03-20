package cinematic {
	private import ecore::*;
	public import flow::*;
	public import view::*;
	public import toolkits::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	abstract item def CinematicElement :> ObeoDSMObject;
	abstract item def NamedElement :> CinematicElement{
		attribute name : EString [1];
	}
	abstract item def AbstractPackage :> NamedElement{
		item flows : Flow [*];
		item viewContainers : ViewContainer [*];
		item subPackages : Package [*];
	}
	item def Package :> AbstractPackage;
	item def CinematicRoot :> AbstractPackage{
		ref item toolkits : Toolkit [*];
	}
	abstract item def Event :> NamedElement;
	package 'view' {
		abstract item def AbstractViewElement :> NamedElement, BoundableElement{
			ref item widget : Widget [1];
			item actions : ViewAction [*];
			item events : ViewEvent [*];
			attribute label : EString [1];
			item viewStyle : ViewStyle [1];
		}
		item def ViewContainer :> AbstractViewElement{
			item ownedElements : AbstractViewElement [*];
			ref item viewContainers : ViewContainer [*];
			ref item viewElements : ViewElement [*];
			ref item viewContainerReferences : ViewContainerReference [*];
			item layout : Layout [1];
		}
		item def ViewElement :> AbstractViewElement{
			attribute required : EBoolean [1];
			ref item type : Type [1];
			attribute example : EString [1];
		}
		item def ViewAction :> NamedElement;
		item def ViewEvent :> Event{
			ref item type : WidgetEventType [1];
		}
		item def ViewContainerReference :> AbstractViewElement{
			ref item viewContainer : ViewContainer [1];
		}
		enum def LayoutDirection {
			enum VERTICAL;
			enum HORIZONTAL;
		}
		item def Layout {
			attribute x : EInt [1];
			attribute y : EInt [1];
			attribute width : EInt [1];
			attribute height : EInt [1];
			attribute direction : LayoutDirection [1];
			ref item viewElement : AbstractViewElement [1];
			item ownedLayouts : Layout [*];
		}
		item def ViewStyle :> CinematicElement{
			attribute fontSize : EInt [1];
			attribute fontColor : EString [1];
			attribute labelHorizontalAlignment : ViewHorizontalAlignment [1];
		}
		enum def ViewHorizontalAlignment {
			enum DEFAULT;
			enum CENTER;
			enum LEFT;
			enum RIGHT;
		}
	}
	package 'flow' {
		item def Flow :> NamedElement{
			item states : FlowState [*];
			item transitions : Transition [*];
			item events : FlowEvent [*];
		}
		abstract item def NamedFlowState :> FlowState, NamedElement;
		item def Transition :> NamedElement{
			attribute guard : EString [1];
			attribute modal : EBoolean [1];
			ref item 'from' : FlowState [1];
			ref item 'to' : FlowState [1];
			ref item on : Event [*];
		}
		item def ActionState :> NamedFlowState;
		item def ViewState :> NamedFlowState{
			attribute newInstance : EBoolean [1];
			attribute refresh : EBoolean [1];
			ref item viewContainers : ViewContainer [*];
		}
		item def DecisionState :> NamedFlowState;
		item def SubflowState :> FlowState{
			ref item subflow : Flow [1];
			attribute name : EString [1];
		}
		item def AsyncEventState :> NamedFlowState;
		item def InitialState :> NamedFlowState;
		item def AbortState :> NamedFlowState;
		item def FinalState :> NamedFlowState;
		item def FlowAction :> NamedElement{
			ref item calls : ViewAction [*];
			ref item operations : Action [*];
		}
		item def FlowEvent :> Event{
			ref item binds : ViewEvent [*];
		}
		abstract item def FlowState :> CinematicElement{
			item actions : FlowAction [*];
		}
	}
	package toolkits {
		item def Toolkit :> Identifiable{
			item widgets : Widget [*];
			attribute name : EString [1];
		}
		item def Widget :> Identifiable{
			attribute name : EString [1];
			attribute icon : EString [1];
			attribute implementation : EString [1];
			ref item toolkit : Toolkit [1];
			item possibleEvents : WidgetEventType [*];
			attribute isContainer : EBoolean [1];
			item style : Style [1];
			attribute metadataHelp : EString [1];
			attribute summary : EString [1];
			attribute documentation : EString [1];
			item metadataDefinitions : MetaDataDefinition [*];
		}
		item def WidgetEventType :> Identifiable{
			attribute name : EString [1];
		}
		item def Style :> Identifiable{
			attribute decorator : EString [1];
			attribute decoratorPosition : CardinalPosition [1];
			attribute decoratorVFill : EBoolean [1];
			attribute decoratorHFill : EBoolean [1];
			attribute bordered : EBoolean [1];
			attribute roundedCorners : EBoolean [1];
			attribute fontColor : EString [1];
			attribute fontUnderlined : EBoolean [1];
			attribute labelHAlignment : HorizontalAlignment [1];
			attribute defaultWidth : EInt [1];
			attribute defaultHeight : EInt [1];
			attribute exampleExpression : EString [1];
			attribute labelHidden : EBoolean [1];
		}
		enum def CardinalPosition {
			enum WEST;
			enum EAST;
			enum NORTH_WEST;
			enum NORTH_EAST;
		}
		enum def HorizontalAlignment {
			enum CENTER;
			enum LEFT;
			enum RIGHT;
		}
		item def MetaDataDefinition :> Annotation{
			attribute help : EString [1];
		}
		package toolkits {
			item def Toolkit :> Identifiable{
				item widgets : Widget [*];
				attribute name : EString [1];
			}
			item def Widget :> Identifiable{
				attribute name : EString [1];
				attribute icon : EString [1];
				attribute implementation : EString [1];
				ref item toolkit : Toolkit [1];
				item possibleEvents : WidgetEventType [*];
				attribute isContainer : EBoolean [1];
				item style : Style [1];
				attribute metadataHelp : EString [1];
				attribute summary : EString [1];
				attribute documentation : EString [1];
				item metadataDefinitions : MetaDataDefinition [*];
			}
			item def WidgetEventType :> Identifiable{
				attribute name : EString [1];
			}
			item def Style :> Identifiable{
				attribute decorator : EString [1];
				attribute decoratorPosition : CardinalPosition [1];
				attribute decoratorVFill : EBoolean [1];
				attribute decoratorHFill : EBoolean [1];
				attribute bordered : EBoolean [1];
				attribute roundedCorners : EBoolean [1];
				attribute fontColor : EString [1];
				attribute fontUnderlined : EBoolean [1];
				attribute labelHAlignment : HorizontalAlignment [1];
				attribute defaultWidth : EInt [1];
				attribute defaultHeight : EInt [1];
				attribute exampleExpression : EString [1];
				attribute labelHidden : EBoolean [1];
			}
			enum def CardinalPosition {
				enum WEST;
				enum EAST;
				enum NORTH_WEST;
				enum NORTH_EAST;
			}
			enum def HorizontalAlignment {
				enum CENTER;
				enum LEFT;
				enum RIGHT;
			}
			item def MetaDataDefinition :> Annotation{
				attribute help : EString [1];
			}
		}
	}
}

