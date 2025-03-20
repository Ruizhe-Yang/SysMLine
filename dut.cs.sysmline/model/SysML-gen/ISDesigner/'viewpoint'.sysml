package 'viewpoint' {
	private import ecore::*;
	public import viewpoint::*;
	public import org.eclipse.emf::*;
	public import description::*;
	public import style::*;
	public import tool::*;
	public import validation::*;
	public import audit::*;
	abstract item def IdentifiedElement {
		attribute uid : EString [1];
	}
	item def DAnalysis :> IdentifiedElement{
		ref item referencedAnalysis : DAnalysis [*];
		attribute semanticResources : ResourceDescriptor [*];
		ref item models : EObject [*];
		item eAnnotations : DAnnotationEntry [*];
		item ownedViews : DView [*];
		ref item selectedViews : DView [*];
		item ownedFeatureExtensions : DFeatureExtension [*];
		attribute version : EString [1];
	}
	abstract item def DFeatureExtension :> IdentifiedElement{
		ref item description : FeatureExtensionDescription [1];
	}
	abstract item def DStylizable;
	abstract item def DRefreshable;
	abstract item def DMappingBased;
	abstract item def DSemanticDecorator :> IdentifiedElement{
		ref item target : EObject [1];
	}
	item def DRepresentationDescriptor :> IdentifiedElement, DModelElement, DocumentedElement{
		attribute name : EString [1];
		ref item description : RepresentationDescription [1];
		ref item target : EObject [1];
		ref item representation : DRepresentation [1];
		attribute repPath : ResourceDescriptor [1];
		attribute changeId : EString [1];
	}
	abstract item def DRepresentation :> IdentifiedElement, DModelElement, DRefreshable{
		ref item ownedRepresentationElements : DRepresentationElement [*];
		ref item representationElements : DRepresentationElement [*];
		item ownedAnnotationEntries : AnnotationEntry [*];
		item uiState : UIState [1];
		attribute name : EString [1];
		attribute documentation : EString [1];
	}
	abstract item def DRepresentationElement :> IdentifiedElement, DMappingBased, DStylizable, DRefreshable, DSemanticDecorator{
		attribute name : EString [1];
		ref item semanticElements : EObject [*];
	}
	item def DView :> IdentifiedElement, DRefreshable{
		ref item 'viewpoint' : Viewpoint [1];
		item ownedRepresentationDescriptors : DRepresentationDescriptor [*];
		item ownedExtensions : MetaModelExtension [1];
		ref item models : EObject [*];
	}
	item def MetaModelExtension :> IdentifiedElement{
		ref item extensionGroup : EObject [1];
	}
	item def Decoration :> IdentifiedElement{
		ref item description : DecorationDescription [1];
	}
	item def DAnalysisCustomData :> IdentifiedElement{
		attribute key : EString [1];
		item data : EObject [1];
	}
	item def LabelStyle :> BasicLabelStyle{
		attribute labelAlignment : LabelAlignment [1];
	}
	enum def FontFormat {
		enum italic;
		enum bold;
		enum underline;
		enum strike_through;
	}
	abstract item def Style :> IdentifiedElement, DRefreshable, Customizable{
		ref item description : StyleDescription [1];
	}
	enum def LabelAlignment {
		enum CENTER;
		enum LEFT;
		enum RIGHT;
	}
	attribute def RGBValues;
	item def DAnalysisSessionEObject {
		attribute open : EBoolean [1];
		attribute resources : EResource [*];
		attribute controlledResources : EResource [*];
		ref item activatedViewpoints : Viewpoint [*];
		ref item analyses : DAnalysis [*];
		attribute synchronizationStatus : SyncStatus [1];
	}
	enum def SyncStatus {
		enum dirty;
		enum sync;
	}
	item def SessionManagerEObject {
		item ownedSessions : DAnalysisSessionEObject [*];
	}
	abstract item def DResource {
		attribute name : EString [1];
		attribute path : EString [1];
	}
	item def DFile :> IdentifiedElement, DResource;
	item def DResourceContainer :> IdentifiedElement, DResource{
		item members : DResource [*];
	}
	item def DProject :> DResourceContainer;
	item def DFolder :> DResourceContainer;
	item def DModel :> DFile;
	item def BasicLabelStyle :> Customizable{
		attribute labelSize : EInt [1];
		attribute labelFormat : FontFormat [0..4];
		attribute showIcon : EBoolean [1];
		attribute iconPath : EString [1];
		attribute labelColor : RGBValues [1];
	}
	abstract item def Customizable :> IdentifiedElement{
		attribute customFeatures : EString [*];
	}
	attribute def ResourceDescriptor;
	item def UIState {
		attribute inverseSelectionOrder : EBoolean [1];
		ref item elementsToSelect : EObject [*];
		attribute decorationImage : EMap [1];
		ref item toolSections : ToolSectionInstance [*];
		attribute subDiagramDecorationDescriptors : EMap [1];
	}
	item def ToolInstance {
		attribute id : EString [1];
		attribute enabled : EBoolean [1];
		attribute visible : EBoolean [1];
		ref item toolEntry : ToolEntry [1];
		attribute filtered : EBoolean [1];
	}
	item def ToolGroupInstance :> ToolInstance{
		item tools : ToolInstance [*];
		item group : EObject [1];
	}
	item def ToolSectionInstance :> ToolInstance{
		item tools : ToolInstance [*];
		ref item section : EObject [1];
		item subSections : ToolSectionInstance [*];
	}
	package description {
		item def Group :> DModelElement, DocumentedElement{
			attribute name : EString [1];
			item ownedViewpoints : Viewpoint [*];
			ref item systemColorsPalette : SytemColorsPalette [1];
			item userColorsPalettes : UserColorsPalette [*];
			attribute version : EString [1];
			item extensions : Extension [*];
		}
		abstract item def Extension;
		abstract item def Component;
		item def Viewpoint :> DocumentedElement, Component, EndUserDocumentedElement, IdentifiedElement{
			attribute modelFileExtension : EString [1];
			item validationSet : ValidationSet [1];
			item ownedRepresentations : RepresentationDescription [*];
			item ownedRepresentationExtensions : RepresentationExtensionDescription [*];
			item ownedJavaExtensions : JavaExtension [*];
			item ownedMMExtensions : MetamodelExtensionSetting [*];
			item ownedFeatureExtensions : FeatureExtensionDescription [*];
			attribute icon : ImagePath [1];
			item ownedTemplates : RepresentationTemplate [*];
			attribute conflicts : URI [*];
			attribute reuses : URI [*];
			attribute customizes : URI [*];
		}
		abstract item def FeatureExtensionDescription;
		abstract item def RepresentationDescription :> DocumentedElement, EndUserDocumentedElement, IdentifiedElement{
			attribute titleExpression : InterpretedExpression [1];
			attribute initialisation : EBoolean [1];
			ref item metamodel : EPackage [*];
			attribute showOnStartup : EBoolean [1];
		}
		abstract item def RepresentationTemplate {
			attribute name : EString [1];
			item ownedRepresentations : RepresentationDescription [*];
		}
		abstract item def RepresentationImportDescription :> RepresentationDescription;
		abstract item def RepresentationExtensionDescription {
			attribute name : EString [1];
			attribute viewpointURI : EString [1];
			attribute representationName : EString [1];
			ref item metamodel : EPackage [*];
		}
		item def MetamodelExtensionSetting {
			ref item extensionGroup : EObject [1];
		}
		item def JavaExtension {
			attribute qualifiedClassName : EString [1];
		}
		abstract item def RepresentationElementMapping :> IdentifiedElement{
			ref item detailDescriptions : RepresentationCreationDescription [*];
			ref item navigationDescriptions : RepresentationNavigationDescription [*];
		}
		abstract item def AbstractMappingImport {
			attribute hideSubMappings : EBoolean [1];
			attribute inheritsAncestorFilters : EBoolean [1];
		}
		abstract item def DocumentedElement {
			attribute documentation : EString [1];
		}
		abstract item def DModelElement {
			item eAnnotations : DAnnotation [*];
		}
		item def DAnnotation :> IdentifiedElement{
			attribute source : EString [1];
			item details : EStringToStringMapEntry [*];
			ref item 'references' : EObject [*];
		}
		abstract item def ConditionalStyleDescription {
			attribute predicateExpression : InterpretedExpression [1];
		}
		attribute def TypeName;
		attribute def InterpretedExpression;
		attribute def FeatureName;
		attribute def ImagePath;
		abstract item def PasteTargetDescription {
			ref item pasteDescriptions : PasteDescription [*];
		}
		item def DecorationDescriptionsSet {
			item decorationDescriptions : DecorationDescription [*];
		}
		abstract item def DecorationDescription {
			attribute name : EString [1];
			attribute position : Position [1];
			attribute distributionDirection : DecorationDistributionDirection [1];
			attribute preconditionExpression : InterpretedExpression [1];
			attribute imageExpression : InterpretedExpression [1];
			attribute tooltipExpression : InterpretedExpression [1];
		}
		enum def Position {
			enum NORTH;
			enum WEST;
			enum SOUTH;
			enum EAST;
			enum NORTH_WEST;
			enum NORTH_EAST;
			enum SOUTH_WEST;
			enum SOUTH_EAST;
			enum CENTER;
		}
		enum def DecorationDistributionDirection {
			enum VERTICAL;
			enum HORIZONTAL;
		}
		item def SemanticBasedDecoration :> DecorationDescription{
			attribute domainClass : TypeName [1];
		}
		item def GenericDecorationDescription :> DecorationDescription;
		item def Customization {
			item vsmElementCustomizations : IVSMElementCustomization [1..*];
		}
		abstract item def IVSMElementCustomization;
		item def VSMElementCustomization :> IVSMElementCustomization{
			attribute predicateExpression : InterpretedExpression [1];
			item featureCustomizations : EStructuralFeatureCustomization [1..*];
		}
		item def VSMElementCustomizationReuse :> IVSMElementCustomization{
			ref item reuse : EStructuralFeatureCustomization [1..*];
			ref item appliedOn : EObject [1..*];
		}
		abstract item def EStructuralFeatureCustomization {
			ref item appliedOn : EObject [*];
			attribute applyOnAll : EBoolean [1];
		}
		item def EAttributeCustomization :> EStructuralFeatureCustomization{
			attribute attributeName : EString [1];
			attribute 'value' : InterpretedExpression [1];
		}
		item def EReferenceCustomization :> EStructuralFeatureCustomization{
			attribute referenceName : EString [1];
			ref item 'value' : EObject [1];
		}
		abstract item def SelectionDescription {
			attribute candidatesExpression : InterpretedExpression [1];
			attribute multiple : EBoolean [1];
			attribute tree : EBoolean [1];
			attribute rootExpression : InterpretedExpression [1];
			attribute childrenExpression : InterpretedExpression [1];
			attribute 'message' : TranslatableMessage [1];
		}
		abstract item def ColorDescription;
		item def SystemColor :> FixedColor{
			attribute name : EString [1];
		}
		item def InterpolatedColor :> ColorDescription, UserColor{
			attribute colorValueComputationExpression : InterpretedExpression [1];
			attribute minValueComputationExpression : InterpretedExpression [1];
			attribute maxValueComputationExpression : InterpretedExpression [1];
			item colorSteps : ColorStep [*];
		}
		item def ColorStep {
			attribute associatedValue : InterpretedExpression [1];
			ref item associatedColor : FixedColor [1];
		}
		item def FixedColor :> ColorDescription{
			attribute red : EInt [1];
			attribute green : EInt [1];
			attribute blue : EInt [1];
		}
		item def UserFixedColor :> FixedColor, UserColor;
		abstract item def UserColor {
			attribute name : EString [1];
		}
		enum def SystemColors {
			enum black;
			enum blue;
			enum red;
			enum green;
			enum yellow;
			enum purple;
			enum orange;
			enum chocolate;
			enum gray;
			enum white;
			enum dark_blue;
			enum dark_red;
			enum dark_green;
			enum dark_yellow;
			enum dark_purple;
			enum dark_orange;
			enum dark_chocolate;
			enum dark_gray;
			enum light_blue;
			enum light_red;
			enum light_green;
			enum light_yellow;
			enum light_purple;
			enum light_orange;
			enum light_chocolate;
			enum light_gray;
		}
		item def Environment {
			item systemColors : SytemColorsPalette [1];
			item defaultTools : ToolEntry [*];
			item labelBorderStyles : LabelBorderStyles [1];
		}
		item def SytemColorsPalette {
			item entries : SystemColor [*];
		}
		item def UserColorsPalette {
			attribute name : EString [1];
			item entries : UserColor [*];
		}
		item def AnnotationEntry :> IdentifiedElement{
			attribute source : EString [1];
			item data : EObject [1];
		}
		abstract item def EndUserDocumentedElement {
			attribute endUserDocumentation : EString [1];
		}
		item def IdentifiedElement {
			attribute name : EString [1];
			attribute label : TranslatableMessage [1];
		}
		item def ComputedColor :> UserColor, ColorDescription{
			attribute red : InterpretedExpression [1];
			attribute green : InterpretedExpression [1];
			attribute blue : InterpretedExpression [1];
		}
		item def DAnnotationEntry :> IdentifiedElement{
			attribute source : EString [1];
			attribute details : EString [*];
		}
		attribute def URI;
		abstract item def AbstractVariable {
			attribute name : EString [1];
		}
		abstract item def SubVariable :> AbstractVariable;
		abstract item def InteractiveVariableDescription {
			attribute userDocumentation : EString [1];
		}
		item def TypedVariable :> InteractiveVariableDescription, SubVariable{
			attribute defaultValueExpression : InterpretedExpression [1];
			ref item valueType : EDataType [1];
		}
		attribute def TranslatableMessage;
		package style {
			abstract item def StyleDescription;
			item def BasicLabelStyleDescription {
				attribute labelSize : EInt [1];
				attribute labelFormat : FontFormat [0..4];
				attribute showIcon : EBoolean [1];
				attribute labelExpression : InterpretedExpression [1];
				ref item labelColor : ColorDescription [1];
				attribute iconPath : ImagePath [1];
			}
			item def LabelStyleDescription :> BasicLabelStyleDescription{
				attribute labelAlignment : LabelAlignment [1];
			}
			item def LabelBorderStyles {
				item labelBorderStyleDescriptions : LabelBorderStyleDescription [*];
			}
			item def LabelBorderStyleDescription {
				attribute id : EString [1];
				attribute name : EString [1];
				attribute cornerHeight : EInt [1];
				attribute cornerWidth : EInt [1];
			}
			item def TooltipStyleDescription {
				attribute tooltipExpression : InterpretedExpression [1];
			}
		}
		package tool {
			abstract item def ToolEntry :> DocumentedElement, IdentifiedElement;
			abstract item def AbstractToolDescription :> ToolEntry{
				attribute precondition : InterpretedExpression [1];
				attribute forceRefresh : EBoolean [1];
				item filters : ToolFilterDescription [*];
				attribute elementsToSelect : InterpretedExpression [1];
				attribute inverseSelectionOrder : EBoolean [1];
			}
			abstract item def MappingBasedToolDescription :> AbstractToolDescription;
			item def ToolDescription :> MappingBasedToolDescription{
				attribute iconPath : ImagePath [1];
				item element : ElementVariable [1];
				item elementView : ElementViewVariable [1];
				item initialOperation : InitialOperation [1];
			}
			item def PasteDescription :> MappingBasedToolDescription{
				item container : DropContainerVariable [1];
				item containerView : ContainerViewVariable [1];
				item copiedView : ElementViewVariable [1];
				item copiedElement : ElementVariable [1];
				item initialOperation : InitialOperation [1];
			}
			item def SelectionWizardDescription :> AbstractToolDescription, SelectionDescription{
				item element : ElementSelectVariable [1];
				item containerView : ContainerViewVariable [1];
				item container : SelectContainerVariable [1];
				item initialOperation : InitialOperation [1];
				attribute iconPath : ImagePath [1];
				attribute windowTitle : TranslatableMessage [1];
				attribute windowImagePath : ImagePath [1];
			}
			item def PaneBasedSelectionWizardDescription :> AbstractToolDescription{
				item element : ElementSelectVariable [1];
				item containerView : ContainerViewVariable [1];
				item container : SelectContainerVariable [1];
				item initialOperation : InitialOperation [1];
				attribute iconPath : ImagePath [1];
				attribute windowTitle : TranslatableMessage [1];
				attribute windowImagePath : ImagePath [1];
				attribute 'message' : TranslatableMessage [1];
				attribute choiceOfValuesMessage : TranslatableMessage [1];
				attribute candidatesExpression : InterpretedExpression [1];
				attribute tree : EBoolean [1];
				attribute rootExpression : InterpretedExpression [1];
				attribute childrenExpression : InterpretedExpression [1];
				attribute selectedValuesMessage : TranslatableMessage [1];
				attribute preSelectedCandidatesExpression : InterpretedExpression [1];
			}
			abstract item def RepresentationCreationDescription :> AbstractToolDescription{
				attribute titleExpression : InterpretedExpression [1];
				attribute browseExpression : InterpretedExpression [1];
				ref item representationDescription : RepresentationDescription [1];
				item initialOperation : InitialOperation [1];
				item containerViewVariable : ContainerViewVariable [1];
				item representationNameVariable : NameVariable [1];
			}
			abstract item def RepresentationNavigationDescription :> AbstractToolDescription{
				attribute browseExpression : InterpretedExpression [1];
				attribute navigationNameExpression : InterpretedExpression [1];
				ref item representationDescription : RepresentationDescription [1];
				item containerViewVariable : ContainerViewVariable [1];
				item containerVariable : ElementSelectVariable [1];
				item representationNameVariable : NameVariable [1];
			}
			abstract item def MenuItemOrRef;
			abstract item def MenuItemDescription :> AbstractToolDescription, MenuItemOrRef;
			item def MenuItemDescriptionReference :> MenuItemOrRef{
				ref item 'item' : MenuItemDescription [1];
			}
			item def OperationAction :> MenuItemDescriptionWithIcon, GroupMenuItem{
				item 'view' : ContainerViewVariable [1];
				item initialOperation : InitialOperation [1];
			}
			item def ExternalJavaAction :> MenuItemDescriptionWithIcon, ContainerModelOperation, GroupMenuItem{
				attribute id : EString [1];
				item parameters : ExternalJavaActionParameter [*];
			}
			item def ExternalJavaActionCall :> MenuItemDescriptionWithIcon, ContainerModelOperation, GroupMenuItem{
				ref item 'action' : ExternalJavaAction [1];
			}
			item def PopupMenu :> AbstractToolDescription, GroupMenuItem{
				item menuItemDescription : MenuItemDescription [1..*];
			}
			abstract item def VariableContainer {
				item subVariables : SubVariable [*];
			}
			item def AcceleoVariable :> VariableContainer, SubVariable{
				attribute computationExpression : InterpretedExpression [1];
			}
			abstract item def DialogVariable :> AbstractVariable{
				attribute dialogPrompt : EString [1];
			}
			item def ElementDropVariable :> AbstractVariable, VariableContainer;
			item def ElementSelectVariable :> AbstractVariable;
			item def ElementVariable :> AbstractVariable, VariableContainer;
			item def ElementViewVariable :> AbstractVariable, VariableContainer;
			item def ElementDeleteVariable :> AbstractVariable, VariableContainer;
			item def DropContainerVariable :> AbstractVariable, VariableContainer;
			item def SelectContainerVariable :> AbstractVariable, VariableContainer;
			item def ContainerViewVariable :> AbstractVariable, VariableContainer;
			item def SelectModelElementVariable :> SubVariable, SelectionDescription, InteractiveVariableDescription;
			item def EditMaskVariables {
				attribute mask : EString [1];
			}
			abstract item def ContainerModelOperation :> ModelOperation{
				item subModelOperations : ModelOperation [*];
			}
			abstract item def ModelOperation;
			item def InitialNodeCreationOperation {
				item firstModelOperations : ModelOperation [1];
			}
			item def InitialOperation {
				item firstModelOperations : ModelOperation [1];
			}
			item def InitEdgeCreationOperation {
				item firstModelOperations : ModelOperation [1];
			}
			item def InitialContainerDropOperation {
				item firstModelOperations : ModelOperation [1];
			}
			item def CreateInstance :> ContainerModelOperation{
				attribute typeName : TypeName [1];
				attribute referenceName : FeatureName [1];
				attribute variableName : EString [1];
			}
			item def ChangeContext :> ContainerModelOperation{
				attribute browseExpression : InterpretedExpression [1];
			}
			item def SetValue :> ContainerModelOperation{
				attribute featureName : FeatureName [1];
				attribute valueExpression : InterpretedExpression [1];
			}
			item def SetObject :> ContainerModelOperation{
				attribute featureName : FeatureName [1];
				ref item object : EObject [1];
			}
			item def Unset :> ContainerModelOperation{
				attribute featureName : FeatureName [1];
				attribute elementExpression : InterpretedExpression [1];
			}
			item def MoveElement :> ContainerModelOperation{
				attribute newContainerExpression : InterpretedExpression [1];
				attribute featureName : FeatureName [1];
			}
			item def RemoveElement :> ContainerModelOperation;
			item def For :> ContainerModelOperation{
				attribute expression : InterpretedExpression [1];
				attribute iteratorName : EString [1];
			}
			enum def DragSource {
				enum DIAGRAM;
				enum PROJECT_EXPLORER;
				enum BOTH;
			}
			item def If :> ContainerModelOperation{
				attribute conditionExpression : InterpretedExpression [1];
			}
			item def DeleteView :> ContainerModelOperation;
			item def NameVariable :> AbstractVariable;
			item def ExternalJavaActionParameter {
				attribute name : EString [1];
				attribute 'value' : InterpretedExpression [1];
			}
			item def ToolFilterDescription {
				attribute precondition : InterpretedExpression [1];
				attribute elementsToListen : InterpretedExpression [1];
				item listeners : FeatureChangeListener [1..*];
			}
			item def FeatureChangeListener {
				attribute domainClass : TypeName [1];
				attribute featureName : FeatureName [1];
			}
			item def Case :> SwitchChild{
				attribute conditionExpression : InterpretedExpression [1];
			}
			abstract item def SwitchChild {
				item subModelOperations : ModelOperation [*];
			}
			item def Default :> SwitchChild;
			item def Switch :> ModelOperation{
				item cases : Case [1..*];
				item 'default' : Default [1];
			}
			item def Let :> ContainerModelOperation{
				attribute variableName : EString [1];
				attribute valueExpression : InterpretedExpression [1];
			}
			item def GroupMenu :> MenuItemDescription{
				attribute locationURI : EString [1];
				ref item popupMenus : PopupMenu [*];
				item itemDescriptions : GroupMenuItem [*];
			}
			abstract item def GroupMenuItem :> AbstractToolDescription;
			abstract item def MenuItemDescriptionWithIcon :> MenuItemDescription{
				attribute icon : ImagePath [1];
			}
		}
		package validation {
			item def ValidationSet :> DocumentedElement{
				attribute name : EString [1];
				item ownedRules : ValidationRule [*];
				ref item reusedRules : ValidationRule [*];
				ref item allRules : ValidationRule [*];
			}
			abstract item def ValidationRule :> IdentifiedElement{
				attribute level : ERROR_LEVEL [1];
				attribute 'message' : InterpretedExpression [1];
				item audits : RuleAudit [*];
				item fixes : ValidationFix [*];
			}
			item def SemanticValidationRule :> ValidationRule{
				attribute targetClass : TypeName [1];
			}
			item def ViewValidationRule :> ValidationRule{
				ref item targets : RepresentationElementMapping [*];
			}
			item def RuleAudit {
				attribute auditExpression : InterpretedExpression [1];
			}
			enum def ERROR_LEVEL {
				enum INFO;
				enum WARNING;
				enum ERROR;
			}
			item def ValidationFix {
				attribute name : EString [1];
				item initialOperation : InitialOperation [1];
			}
		}
		package audit {
			abstract item def InformationSection;
			item def TemplateInformationSection :> InformationSection{
				attribute templatePath : EString [1];
			}
		}
	}
}

