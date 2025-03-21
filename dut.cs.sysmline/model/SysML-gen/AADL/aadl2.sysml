package aadl2 {
	private import ecore::*;
	abstract item def Element {
		item ownedElement : Element [*];
		item ownedComment : Comment [*];
	}
	item def Comment :> Element{
		attribute body : String [1];
	}
	attribute def String;
	attribute def Boolean;
	abstract item def Type :> NamedElement;
	abstract item def NamedElement :> Element{
		attribute name : String [1];
		attribute qualifiedName : String [1];
		item ownedPropertyAssociation : PropertyAssociation [*];
	}
	item def PropertyAssociation :> Element{
		ref item property : Property [1];
		item appliesTo : ContainedNamedElement [*];
		ref item inBinding : Classifier [*];
		attribute append : Boolean [1];
		attribute constant : Boolean [1];
		item ownedValue : ModalPropertyValue [1..*];
	}
	item def Property :> BasicProperty, AbstractNamedValue, ArraySizeProperty{
		attribute inherit : Boolean [1];
		item defaultValue : PropertyExpression [1];
		ref item appliesToMetaclass : MetaclassReference [*];
		ref item appliesToClassifier : Classifier [*];
		item appliesTo : PropertyOwner [*];
		attribute emptyListDefault : Boolean [1];
	}
	item def BasicProperty :> TypedElement{
		ref item propertyType : PropertyType [1];
		item ownedPropertyType : PropertyType [1];
	}
	abstract item def TypedElement :> NamedElement{
		ref item type : Type [1];
	}
	abstract item def PropertyType :> Type;
	abstract item def AbstractNamedValue;
	abstract item def ArraySizeProperty;
	abstract item def PropertyExpression :> Element;
	item def MetaclassReference :> PropertyOwner{
		attribute annexName : String [1];
		attribute metaclassName : String [1..*];
	}
	abstract item def PropertyOwner :> Element;
	abstract item def Classifier :> Namespace, Type{
		ref item classifierFeature : ClassifierFeature [*];
		ref item inheritedMember : NamedElement [*];
		ref item generalization : Generalization [*];
		ref item general : Classifier [*];
		item ownedAnnexSubclause : AnnexSubclause [*];
		item ownedPrototype : Prototype [*];
		item ownedPrototypeBinding : PrototypeBinding [*];
		attribute noPrototypes : Boolean [1];
		attribute noAnnexes : Boolean [1];
		attribute noProperties : Boolean [1];
	}
	abstract item def Namespace :> NamedElement{
		item ownedMember : NamedElement [*];
		ref item member : NamedElement [*];
	}
	abstract item def ClassifierFeature :> NamedElement{
		ref item featuringClassifier : Classifier [*];
	}
	abstract item def Generalization :> DirectedRelationship{
		ref item general : Classifier [1];
		ref item specific : Classifier [1];
	}
	abstract item def DirectedRelationship :> Relationship{
		ref item source : Element [1..*];
		ref item target : Element [1..*];
	}
	abstract item def Relationship :> Element{
		ref item relatedElement : Element [1..*];
	}
	abstract item def AnnexSubclause :> ModalElement;
	item def ModalElement :> NamedElement{
		ref item inMode : Mode [*];
	}
	item def Mode :> ModeFeature{
		attribute initial : Boolean [1];
		attribute 'derived' : Boolean [1];
	}
	abstract item def ModeFeature :> ClassifierFeature;
	abstract item def Prototype :> StructuralFeature, CalledSubprogram, FeatureClassifier{
		ref item refined : Prototype [1];
	}
	abstract item def StructuralFeature :> RefinableElement, ClassifierFeature;
	abstract item def RefinableElement :> NamedElement{
		ref item refinementContext : Classifier [1];
		ref item refinedElement : RefinableElement [1];
	}
	abstract item def FeatureClassifier;
	abstract item def CalledSubprogram;
	abstract item def PrototypeBinding :> Element{
		ref item formal : Prototype [1];
	}
	item def ContainedNamedElement :> Element{
		item containmentPathElement : ContainmentPathElement [1..*];
	}
	item def ContainmentPathElement :> Element{
		item arrayRange : ArrayRange [*];
		ref item namedElement : NamedElement [1];
	}
	item def ArrayRange :> Element{
		attribute lowerBound : Integer [1];
		attribute upperBound : Integer [1];
	}
	attribute def Integer;
	item def ModalPropertyValue :> ModalElement{
		item ownedValue : PropertyExpression [1];
	}
	abstract item def BehavioralFeature :> ClassifierFeature;
	attribute def Real;
	item def ArrayDimension :> Element{
		item size : ArraySize [1];
	}
	item def ArraySize :> Element{
		attribute size : Integer [1];
		ref item sizeProperty : ArraySizeProperty [1];
	}
	abstract item def ArrayableElement :> Element{
		item arrayDimension : ArrayDimension [*];
	}
	item def ComponentImplementationReference :> Element{
		ref item implementation : ComponentImplementation [1];
		item ownedPrototypeBinding : PrototypeBinding [*];
	}
	abstract item def ComponentImplementation :> ComponentClassifier{
		ref item type : ComponentType [1];
		item ownedSubcomponent : Subcomponent [*];
		ref item extended : ComponentImplementation [1];
		item ownedFlowImplementation : FlowImplementation [*];
		item ownedConnection : Connection [*];
		item ownedExtension : ImplementationExtension [1];
		item ownedRealization : Realization [1];
		item ownedEndToEndFlow : EndToEndFlow [*];
		item ownedAbstractSubcomponent : AbstractSubcomponent [*];
		item ownedAccessConnection : AccessConnection [*];
		item ownedParameterConnection : ParameterConnection [*];
		item ownedPortConnection : PortConnection [*];
		item ownedFeatureConnection : FeatureConnection [*];
		item ownedFeatureGroupConnection : FeatureGroupConnection [*];
		attribute noSubcomponents : Boolean [1];
		attribute noConnections : Boolean [1];
		attribute noCalls : Boolean [1];
	}
	abstract item def ComponentClassifier :> Classifier, SubcomponentType, FeatureClassifier{
		item ownedMode : Mode [*];
		item ownedModeTransition : ModeTransition [*];
		attribute noFlows : Boolean [1];
		attribute noModes : Boolean [1];
	}
	abstract item def SubcomponentType :> Type;
	item def ModeTransition :> ModeFeature{
		ref item source : Mode [1];
		ref item destination : Mode [1];
		item ownedTrigger : ModeTransitionTrigger [1..*];
	}
	abstract item def ModeTransitionTrigger :> Element;
	abstract item def ComponentType :> ComponentClassifier{
		item ownedFeature : Feature [*];
		ref item extended : ComponentType [1];
		item ownedFlowSpecification : FlowSpecification [*];
		item ownedExtension : TypeExtension [1];
		item ownedFeatureGroup : FeatureGroup [*];
		item ownedAbstractFeature : AbstractFeature [*];
		attribute noFeatures : Boolean [1];
	}
	abstract item def Feature :> StructuralFeature, FeatureConnectionEnd, ArrayableElement{
		ref item prototype : Prototype [1];
		ref item refined : Feature [1];
		ref item classifier : ComponentClassifier [1];
	}
	abstract item def FeatureConnectionEnd :> ConnectionEnd;
	abstract item def ConnectionEnd :> NamedElement;
	item def FlowSpecification :> Flow, ModalPath, FlowElement{
		ref item refined : FlowSpecification [1];
		attribute kind : FlowKind [1];
		item outEnd : FlowEnd [1];
		item InEnd : FlowEnd [1];
	}
	abstract item def Flow :> StructuralFeature;
	abstract item def ModalPath :> ModalElement{
		ref item inModeOrTransition : ModeFeature [*];
	}
	abstract item def FlowElement :> EndToEndFlowElement;
	abstract item def EndToEndFlowElement :> NamedElement;
	enum def FlowKind {
		enum source;
		enum path;
		enum sink;
	}
	item def FlowEnd :> Element{
		ref item context : Context [1];
		ref item feature : Feature [1];
	}
	abstract item def Context :> NamedElement;
	item def TypeExtension :> Generalization{
		ref item extended : ComponentType [1];
	}
	item def FeatureGroup :> DirectedFeature, Context, FeatureGroupConnectionEnd, CallContext{
		attribute inverse : Boolean [1];
		ref item featureType : FeatureType [1];
		ref item featureGroupType : FeatureGroupType [1];
		ref item featureGroupPrototype : FeatureGroupPrototype [1];
	}
	abstract item def CallContext;
	abstract item def DirectedFeature :> Feature{
		attribute direction : DirectionType [1];
	}
	enum def DirectionType {
		enum 'in';
		enum 'out';
		enum inOut;
	}
	abstract item def FeatureGroupConnectionEnd :> ConnectionEnd;
	abstract item def FeatureType;
	item def FeatureGroupType :> Classifier, FeatureType{
		item ownedFeature : Feature [*];
		ref item extended : FeatureGroupType [1];
		ref item inverse : FeatureGroupType [1];
		item ownedExtension : GroupExtension [1];
		item ownedBusAccess : BusAccess [*];
		item ownedDataAccess : DataAccess [*];
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedFeatureGroup : FeatureGroup [*];
		item ownedParameter : Parameter [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
		item ownedAbstractFeature : AbstractFeature [*];
	}
	item def GroupExtension :> Generalization{
		ref item extended : FeatureGroupType [1];
	}
	item def BusAccess :> Access{
		ref item busFeatureClassifier : BusSubcomponentType [1];
	}
	abstract item def Access :> Feature, AccessConnectionEnd{
		attribute kind : AccessType [1];
		attribute category : AccessCategory [1];
	}
	abstract item def AccessConnectionEnd :> ConnectionEnd;
	enum def AccessType {
		enum provided;
		enum required;
	}
	enum def AccessCategory {
		enum bus;
		enum data;
		enum subprogram;
		enum subprogramGroup;
	}
	abstract item def BusSubcomponentType :> Bus, SubcomponentType, FeatureClassifier;
	abstract item def Bus :> NamedElement;
	item def DataAccess :> Access, FlowElement, ParameterConnectionEnd, PortConnectionEnd{
		ref item dataFeatureClassifier : DataSubcomponentType [1];
	}
	abstract item def ParameterConnectionEnd :> ConnectionEnd;
	abstract item def PortConnectionEnd :> ConnectionEnd;
	abstract item def DataSubcomponentType :> Data, SubcomponentType, FeatureClassifier;
	abstract item def Data :> NamedElement;
	item def DataPort :> Port, Context, ParameterConnectionEnd{
		ref item dataFeatureClassifier : DataSubcomponentType [1];
	}
	abstract item def Port :> DirectedFeature, PortConnectionEnd{
		attribute category : PortCategory [1];
	}
	enum def PortCategory {
		enum data;
		enum 'event';
		enum eventData;
	}
	item def EventDataPort :> Port, Context, ParameterConnectionEnd{
		ref item dataFeatureClassifier : DataSubcomponentType [1];
	}
	item def EventPort :> Port;
	item def Parameter :> DirectedFeature, Context, ParameterConnectionEnd{
		ref item dataFeatureClassifier : DataSubcomponentType [1];
	}
	item def SubprogramAccess :> Access, CalledSubprogram{
		ref item subprogramFeatureClassifier : SubprogramSubcomponentType [1];
	}
	abstract item def SubprogramSubcomponentType :> SubcomponentType, Subprogram, FeatureClassifier;
	abstract item def Subprogram :> NamedElement, CalledSubprogram;
	item def SubprogramGroupAccess :> Access, CallContext{
		ref item subprogramGroupFeatureClassifier : SubprogramGroupSubcomponentType [1];
	}
	abstract item def SubprogramGroupSubcomponentType :> SubcomponentType, SubprogramGroup, FeatureClassifier;
	abstract item def SubprogramGroup :> NamedElement;
	item def AbstractFeature :> DirectedFeature{
		ref item featureClassifier : FeatureClassifier [1];
	}
	item def FeatureGroupPrototype :> Prototype, FeatureType{
		ref item constrainingFeatureGroupType : FeatureGroupType [1];
	}
	abstract item def Subcomponent :> StructuralFeature, ModalElement, Context, FlowElement, ArrayableElement{
		ref item subcomponentType : SubcomponentType [1];
		item ownedPrototypeBinding : PrototypeBinding [*];
		ref item prototype : ComponentPrototype [1];
		item ownedModeBinding : ModeBinding [*];
		attribute allModes : Boolean [1];
		item implementationReference : ComponentImplementationReference [*];
		ref item refined : Subcomponent [1];
		ref item classifier : ComponentClassifier [1];
	}
	abstract item def ComponentPrototype :> Prototype, SubcomponentType{
		attribute array : Boolean [1];
		ref item constrainingClassifier : ComponentClassifier [1];
	}
	item def ModeBinding :> Element{
		ref item parentMode : Mode [1];
		ref item derivedMode : Mode [1];
	}
	item def FlowImplementation :> ModalPath, ClassifierFeature{
		attribute kind : FlowKind [1];
		ref item specification : FlowSpecification [1];
		item ownedFlowSegment : FlowSegment [*];
	}
	item def FlowSegment :> Element{
		ref item flowElement : FlowElement [1];
		ref item context : Context [1];
	}
	abstract item def Connection :> StructuralFeature, ModalPath, FlowElement{
		item destination : AbstractConnectionEnd [1];
		item source : AbstractConnectionEnd [1];
		attribute bidirectional : Boolean [1];
		ref item refined : Connection [1];
	}
	abstract item def AbstractConnectionEnd;
	item def ImplementationExtension :> Generalization{
		ref item extended : ComponentImplementation [1];
	}
	item def Realization :> Generalization{
		ref item implemented : ComponentType [1];
	}
	item def EndToEndFlow :> Flow, ModalPath, EndToEndFlowElement{
		ref item refined : EndToEndFlow [1];
		item ownedEndToEndFlowSegment : EndToEndFlowSegment [1..*];
	}
	item def EndToEndFlowSegment :> Element{
		ref item flowElement : EndToEndFlowElement [1];
		ref item context : Context [1];
	}
	item def AbstractSubcomponent :> Subcomponent, Abstract{
		ref item abstractSubcomponentType : AbstractSubcomponentType [1];
	}
	abstract item def Abstract :> NamedElement;
	abstract item def AbstractSubcomponentType :> Abstract, SubcomponentType;
	item def AccessConnection :> Connection{
		attribute accessCategory : AccessCategory [1];
	}
	item def ParameterConnection :> Connection;
	item def PortConnection :> Connection;
	item def FeatureConnection :> Connection;
	item def FeatureGroupConnection :> Connection;
	enum def ComponentCategory {
		enum 'abstract';
		enum bus;
		enum data;
		enum device;
		enum memory;
		enum process;
		enum processor;
		enum subprogram;
		enum subprogramGroup;
		enum system;
		enum thread;
		enum threadGroup;
		enum virtualBus;
		enum virtualProcessor;
	}
	enum def ConnectionKind {
		enum Access;
		enum Feature;
		enum FeatureGroup;
		enum Parameter;
		enum Port;
	}
	item def ConnectedElement :> Element, AbstractConnectionEnd{
		ref item context : Context [1];
		ref item connectionEnd : ConnectionEnd [1];
	}
	item def ElementName :> ConnectionEnd{
		attribute kind : ElementNameKind [1];
	}
	enum def ElementNameKind {
		enum InternalEvent;
		enum ProcessorPort;
		enum ProcessorSubprogram;
	}
	abstract item def AnnexLibrary :> NamedElement;
	item def DefaultAnnexLibrary :> AnnexLibrary{
		attribute sourceText : String [1];
	}
	item def DefaultAnnexSubclause :> AnnexSubclause{
		attribute sourceText : String [1];
	}
	item def TriggerPort :> ModeTransitionTrigger{
		ref item context : Context [1];
		ref item 'port' : Port [1];
	}
	item def PublicPackageSection :> PackageSection{
		ref item privateSection : PrivatePackageSection [1];
	}
	abstract item def PackageSection :> Namespace{
		item ownedPackageRename : PackageRename [*];
		item ownedComponentTypeRename : ComponentTypeRename [*];
		item ownedClassifier : Classifier [*];
		item ownedFeatureGroupTypeRename : FeatureGroupTypeRename [*];
		item ownedAnnexLibrary : AnnexLibrary [*];
		ref item importedUnit : ModelUnit [*];
		attribute noAnnexes : Boolean [1];
		attribute noProperties : Boolean [1];
	}
	item def PackageRename :> NamedElement{
		ref item renamedPackage : AadlPackage [1];
		attribute renameAll : Boolean [1];
	}
	item def AadlPackage :> ModelUnit{
		item ownedPublicSection : PublicPackageSection [1];
		item ownedPrivateSection : PrivatePackageSection [1];
		ref item publicSection : PublicPackageSection [1];
		ref item privateSection : PrivatePackageSection [1];
	}
	abstract item def ModelUnit :> NamedElement;
	item def PrivatePackageSection :> PackageSection{
		ref item publicSection : PublicPackageSection [1];
	}
	item def ComponentTypeRename :> NamedElement{
		attribute category : ComponentCategory [1];
		ref item renamedComponentType : ComponentType [1];
	}
	item def FeatureGroupTypeRename :> NamedElement{
		ref item renamedFeatureGroupType : FeatureGroupType [1];
	}
	item def ComponentPrototypeBinding :> PrototypeBinding{
		item actual : ComponentPrototypeActual [1..*];
	}
	item def ComponentPrototypeActual :> Element{
		attribute category : ComponentCategory [1];
		item 'binding' : PrototypeBinding [*];
		ref item subcomponentType : SubcomponentType [1];
	}
	item def FeatureGroupPrototypeBinding :> PrototypeBinding{
		item actual : FeatureGroupPrototypeActual [1];
	}
	item def FeatureGroupPrototypeActual :> FeaturePrototypeActual{
		item 'binding' : PrototypeBinding [*];
		ref item featureType : FeatureType [1];
	}
	abstract item def FeaturePrototypeActual :> Element;
	item def FeaturePrototype :> Prototype{
		attribute direction : DirectionType [1];
		ref item constrainingClassifier : ComponentClassifier [1];
	}
	item def FeaturePrototypeBinding :> PrototypeBinding{
		item actual : FeaturePrototypeActual [1];
	}
	item def AccessSpecification :> FeaturePrototypeActual{
		attribute kind : AccessType [1];
		attribute category : AccessCategory [1];
		ref item classifier : ComponentClassifier [1];
	}
	item def PortSpecification :> FeaturePrototypeActual{
		attribute direction : DirectionType [1];
		attribute category : PortCategory [1];
		ref item classifier : ComponentClassifier [1];
	}
	item def FeaturePrototypeReference :> FeaturePrototypeActual{
		attribute direction : DirectionType [1];
		ref item prototype : FeaturePrototype [1];
	}
	item def SubprogramCallSequence :> BehavioralFeature, ModalElement{
		item ownedCallSpecification : CallSpecification [*];
	}
	abstract item def CallSpecification :> BehavioralFeature;
	item def ProcessorCall :> CallSpecification{
		attribute subprogramAccessName : EString [1];
	}
	abstract item def BehavioredImplementation :> ComponentImplementation{
		ref item callSpecification : CallSpecification [*];
		item ownedSubprogramCallSequence : SubprogramCallSequence [*];
	}
	item def SubprogramCall :> CallSpecification, Context{
		ref item calledSubprogram : CalledSubprogram [1];
		ref item context : CallContext [1];
	}
	item def AbstractType :> ComponentType, AbstractClassifier, CallContext{
		item ownedBusAccess : BusAccess [*];
		item ownedDataAccess : DataAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedDataPort : DataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	abstract item def AbstractClassifier :> ComponentClassifier, AbstractSubcomponentType, BusSubcomponentType, DataSubcomponentType, DeviceSubcomponentType, MemorySubcomponentType, ProcessorSubcomponentType, ProcessSubcomponentType, SubprogramGroupSubcomponentType, SubprogramSubcomponentType, SystemSubcomponentType, ThreadGroupSubcomponentType, ThreadSubcomponentType, VirtualProcessorSubcomponentType, VitualBusSubcomponentType;
	abstract item def VirtualProcessorSubcomponentType :> SubcomponentType, VirtualProcessor;
	abstract item def VirtualProcessor :> NamedElement;
	abstract item def VitualBusSubcomponentType :> SubcomponentType, VirtualBus;
	abstract item def VirtualBus :> NamedElement;
	abstract item def ThreadGroupSubcomponentType :> SubcomponentType, ThreadGroup;
	abstract item def ThreadGroup :> NamedElement;
	abstract item def ThreadSubcomponentType :> SubcomponentType, Thread;
	abstract item def Thread :> NamedElement;
	abstract item def SystemSubcomponentType :> SubcomponentType, System;
	abstract item def System :> NamedElement;
	abstract item def ProcessSubcomponentType :> Process, SubcomponentType;
	abstract item def Process :> NamedElement;
	abstract item def MemorySubcomponentType :> Memory, SubcomponentType;
	abstract item def Memory :> NamedElement;
	abstract item def DeviceSubcomponentType :> Device, SubcomponentType;
	abstract item def Device :> NamedElement;
	abstract item def ProcessorSubcomponentType :> Processor, SubcomponentType;
	abstract item def Processor :> NamedElement;
	item def AbstractImplementation :> BehavioredImplementation, AbstractClassifier{
		item ownedBusSubcomponent : BusSubcomponent [*];
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedDeviceSubcomponent : DeviceSubcomponent [*];
		item ownedMemorySubcomponent : MemorySubcomponent [*];
		item ownedProcessSubcomponent : ProcessSubcomponent [*];
		item ownedProcessorSubcomponent : ProcessorSubcomponent [*];
		item ownedSystemSubcomponent : SystemSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
		item ownedThreadSubcomponent : ThreadSubcomponent [*];
		item ownedThreadGroupSubcomponent : ThreadGroupSubcomponent [*];
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
		item ownedVirtualProcessorSubcomponent : VirtualProcessorSubcomponent [*];
	}
	item def BusSubcomponent :> Subcomponent, AccessConnectionEnd, Bus{
		ref item busSubcomponentType : BusSubcomponentType [1];
	}
	item def DataSubcomponent :> Subcomponent, AccessConnectionEnd, Data, ParameterConnectionEnd, PortConnectionEnd{
		ref item dataSubcomponentType : DataSubcomponentType [1];
	}
	item def DeviceSubcomponent :> Subcomponent, Device{
		ref item deviceSubcomponentType : DeviceSubcomponentType [1];
	}
	item def MemorySubcomponent :> Subcomponent, Memory{
		ref item memorySubcomponentType : MemorySubcomponentType [1];
	}
	item def ProcessSubcomponent :> Subcomponent, Process{
		ref item processSubcomponentType : ProcessSubcomponentType [1];
	}
	item def ProcessorSubcomponent :> Subcomponent, Processor{
		ref item processorSubcomponentType : ProcessorSubcomponentType [1];
	}
	item def SystemSubcomponent :> Subcomponent, System{
		ref item systemSubcomponentType : SystemSubcomponentType [1];
	}
	item def SubprogramSubcomponent :> Subcomponent, AccessConnectionEnd, Subprogram{
		ref item subprogramSubcomponentType : SubprogramSubcomponentType [1];
	}
	item def SubprogramGroupSubcomponent :> Subcomponent, AccessConnectionEnd, SubprogramGroup, CallContext{
		ref item subprogramGroupSubcomponentType : SubprogramGroupSubcomponentType [1];
	}
	item def ThreadSubcomponent :> Subcomponent, Thread{
		ref item threadSubcomponentType : ThreadSubcomponentType [1];
	}
	item def ThreadGroupSubcomponent :> Subcomponent, ThreadGroup{
		ref item threadGroupSubcomponentType : ThreadGroupSubcomponentType [1];
	}
	item def VirtualBusSubcomponent :> Subcomponent, VirtualBus{
		ref item virtualBusSubcomponentType : VitualBusSubcomponentType [1];
	}
	item def VirtualProcessorSubcomponent :> Subcomponent, VirtualProcessor{
		ref item virtualProcessorSubcomponentType : VirtualProcessorSubcomponentType [1];
	}
	item def AbstractPrototype :> ComponentPrototype, AbstractSubcomponentType, BusSubcomponentType, DataSubcomponentType, DeviceSubcomponentType, MemorySubcomponentType, ProcessorSubcomponentType, ProcessSubcomponentType, SubprogramGroupSubcomponentType, SubprogramSubcomponentType, SystemSubcomponentType, ThreadGroupSubcomponentType, ThreadSubcomponentType, VirtualProcessorSubcomponentType, VitualBusSubcomponentType;
	abstract item def BusClassifier :> ComponentClassifier, BusSubcomponentType;
	item def BusType :> ComponentType, BusClassifier{
		item ownedBusAccess : BusAccess [*];
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
	}
	item def BusImplementation :> ComponentImplementation, BusClassifier{
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
	}
	item def BusPrototype :> ComponentPrototype, BusSubcomponentType;
	abstract item def DataClassifier :> ComponentClassifier, DataSubcomponentType;
	item def DataType :> ComponentType, DataClassifier, CallContext{
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def DataImplementation :> ComponentImplementation, DataClassifier{
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
	}
	item def DataPrototype :> ComponentPrototype, DataSubcomponentType;
	abstract item def DeviceClassifier :> ComponentClassifier, DeviceSubcomponentType;
	item def DeviceType :> ComponentType, DeviceClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedBusAccess : BusAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def DeviceImplementation :> ComponentImplementation, DeviceClassifier{
		item ownedBusSubcomponent : BusSubcomponent [*];
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
	}
	item def DevicePrototype :> ComponentPrototype, DeviceSubcomponentType;
	abstract item def MemoryClassifier :> ComponentClassifier, MemorySubcomponentType;
	item def MemoryType :> ComponentType, MemoryClassifier{
		item ownedBusAccess : BusAccess [*];
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
	}
	item def MemoryImplementation :> ComponentImplementation, MemoryClassifier{
		item ownedBusSubcomponent : BusSubcomponent [*];
		item ownedMemorySubcomponent : MemorySubcomponent [*];
	}
	item def MemoryPrototype :> ComponentPrototype, MemorySubcomponentType;
	abstract item def SubprogramClassifier :> ComponentClassifier, SubprogramSubcomponentType;
	item def SubprogramType :> ComponentType, SubprogramClassifier{
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedParameter : Parameter [*];
		item ownedDataAccess : DataAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def SubprogramImplementation :> BehavioredImplementation, SubprogramClassifier{
		item ownedDataSubcomponent : DataSubcomponent [*];
	}
	item def SubprogramPrototype :> ComponentPrototype, SubprogramSubcomponentType;
	abstract item def SubprogramGroupClassifier :> ComponentClassifier, SubprogramGroupSubcomponentType;
	item def SubprogramGroupType :> ComponentType, SubprogramGroupClassifier, CallContext{
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def SubprogramGroupImplementation :> ComponentImplementation, SubprogramGroupClassifier{
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
	}
	item def SubprogramGroupPrototype :> ComponentPrototype, SubprogramGroupSubcomponentType;
	abstract item def SystemClassifier :> ComponentClassifier, SystemSubcomponentType;
	item def SystemType :> ComponentType, SystemClassifier{
		item ownedBusAccess : BusAccess [*];
		item ownedDataAccess : DataAccess [*];
		item ownedDataPort : DataPort [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedEventPort : EventPort [*];
		item ownedEventDataPort : EventDataPort [*];
	}
	item def SystemImplementation :> ComponentImplementation, SystemClassifier{
		item ownedBusSubcomponent : BusSubcomponent [*];
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedDeviceSubcomponent : DeviceSubcomponent [*];
		item ownedMemorySubcomponent : MemorySubcomponent [*];
		item ownedProcessSubcomponent : ProcessSubcomponent [*];
		item ownedProcessorSubcomponent : ProcessorSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
		item ownedSystemSubcomponent : SystemSubcomponent [*];
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
		item ownedVirtualProcessorSubcomponent : VirtualProcessorSubcomponent [*];
	}
	item def SystemPrototype :> ComponentPrototype, SystemSubcomponentType;
	abstract item def ProcessorClassifier :> ComponentClassifier, ProcessorSubcomponentType;
	item def ProcessorType :> ComponentType, ProcessorClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedBusAccess : BusAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def ProcessorImplementation :> ComponentImplementation, ProcessorClassifier{
		item ownedBusSubcomponent : BusSubcomponent [*];
		item ownedMemorySubcomponent : MemorySubcomponent [*];
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
		item ownedVirtualProcessorSubcomponent : VirtualProcessorSubcomponent [*];
	}
	item def ProcessorPrototype :> ComponentPrototype, ProcessorSubcomponentType;
	abstract item def ProcessClassifier :> ComponentClassifier, ProcessSubcomponentType;
	item def ProcessType :> ComponentType, ProcessClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedDataAccess : DataAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def ProcessImplementation :> ComponentImplementation, ProcessClassifier{
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
		item ownedThreadSubcomponent : ThreadSubcomponent [*];
		item ownedThreadGroupSubcomponent : ThreadGroupSubcomponent [*];
	}
	item def ProcessPrototype :> ComponentPrototype, ProcessSubcomponentType;
	abstract item def ThreadClassifier :> ComponentClassifier, ThreadSubcomponentType;
	item def ThreadType :> ComponentType, ThreadClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedDataAccess : DataAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def ThreadImplementation :> BehavioredImplementation, ThreadClassifier{
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedDataSubcomponent : DataSubcomponent [*];
	}
	item def ThreadPrototype :> ComponentPrototype, ThreadSubcomponentType;
	abstract item def ThreadGroupClassifier :> ComponentClassifier, ThreadGroupSubcomponentType;
	item def ThreadGroupType :> ComponentType, ThreadGroupClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedDataAccess : DataAccess [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def ThreadGroupImplementation :> ComponentImplementation, ThreadGroupClassifier{
		item ownedDataSubcomponent : DataSubcomponent [*];
		item ownedThreadSubcomponent : ThreadSubcomponent [*];
		item ownedThreadGroupSubcomponent : ThreadGroupSubcomponent [*];
		item ownedSubprogramSubcomponent : SubprogramSubcomponent [*];
		item ownedSubprogramGroupSubcomponent : SubprogramGroupSubcomponent [*];
	}
	item def ThreadGroupPrototype :> ComponentPrototype, ThreadGroupSubcomponentType;
	abstract item def VirtualBusClassifier :> ComponentClassifier, VitualBusSubcomponentType;
	item def VirtualBusType :> ComponentType, VirtualBusClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
	}
	item def VirtualBusImplementation :> ComponentImplementation, VirtualBusClassifier{
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
	}
	item def VirtualBusPrototype :> ComponentPrototype, VitualBusSubcomponentType;
	abstract item def VirtualProcessorClassifier :> ComponentClassifier, VirtualProcessorSubcomponentType;
	item def VirtualProcessorType :> ComponentType, VirtualProcessorClassifier{
		item ownedDataPort : DataPort [*];
		item ownedEventDataPort : EventDataPort [*];
		item ownedEventPort : EventPort [*];
		item ownedSubprogramAccess : SubprogramAccess [*];
		item ownedSubprogramGroupAccess : SubprogramGroupAccess [*];
	}
	item def VirtualProcessorImplementation :> ComponentImplementation, VirtualProcessorClassifier{
		item ownedVirtualBusSubcomponent : VirtualBusSubcomponent [*];
		item ownedVirtualProcessorSubcomponent : VirtualProcessorSubcomponent [*];
	}
	item def VirtualProcessorPrototype :> ComponentPrototype, VirtualProcessorSubcomponentType;
	item def BasicPropertyAssociation :> Element{
		ref item property : BasicProperty [1];
		item ownedValue : PropertyExpression [1];
	}
	item def PropertyConstant :> TypedElement, AbstractNamedValue, ArraySizeProperty{
		ref item propertyType : PropertyType [1];
		item ownedPropertyType : PropertyType [1];
		item constantValue : PropertyExpression [1];
	}
	item def StringLiteral :> PropertyValue{
		attribute 'value' : String [1];
	}
	abstract item def PropertyValue :> PropertyExpression;
	abstract item def NumberValue :> PropertyValue{
		ref item unit : UnitLiteral [1];
	}
	item def UnitLiteral :> EnumerationLiteral{
		ref item baseUnit : UnitLiteral [1];
		item factor : NumberValue [1];
	}
	item def EnumerationLiteral :> NamedElement, AbstractNamedValue;
	item def ClassifierValue :> PropertyOwner, PropertyValue{
		ref item classifier : Classifier [1];
	}
	item def ReferenceValue :> ContainedNamedElement, PropertyValue;
	item def BooleanLiteral :> PropertyValue{
		attribute 'value' : Boolean [1];
	}
	item def RangeValue :> PropertyValue{
		item minimum : PropertyExpression [1];
		item maximum : PropertyExpression [1];
		item delta : PropertyExpression [1];
	}
	item def IntegerLiteral :> NumberValue{
		attribute base : Integer [1];
		attribute 'value' : Integer [1];
	}
	item def RealLiteral :> NumberValue{
		attribute 'value' : Real [1];
	}
	item def Operation :> PropertyExpression{
		attribute op : OperationKind [1];
		item ownedPropertyExpression : PropertyExpression [1..*];
	}
	enum def OperationKind {
		enum 'and';
		enum 'or';
		enum 'not';
		enum plus;
		enum minus;
	}
	item def RecordValue :> PropertyValue{
		item ownedFieldValue : BasicPropertyAssociation [*];
	}
	item def ComputedValue :> PropertyValue{
		attribute function : String [1];
	}
	item def ListValue :> PropertyExpression{
		item ownedListElement : PropertyExpression [*];
	}
	item def NamedValue :> PropertyValue{
		ref item namedValue : AbstractNamedValue [1];
	}
	item def PropertySet :> Namespace, ModelUnit{
		item ownedPropertyType : PropertyType [*];
		item ownedProperty : Property [*];
		item ownedPropertyConstant : PropertyConstant [*];
		ref item importedUnit : ModelUnit [*];
	}
	item def GlobalNamespace :> Namespace{
		ref item 'package' : PublicPackageSection [*];
		ref item propertySet : PropertySet [*];
	}
	abstract item def NonListType :> PropertyType;
	item def AadlBoolean :> NonListType;
	item def AadlString :> NonListType;
	item def AadlInteger :> NumberType;
	abstract item def NumberType :> NonListType{
		item ownedUnitsType : UnitsType [1];
		ref item unitsType : UnitsType [1];
		item range : NumericRange [1];
	}
	item def UnitsType :> EnumerationType;
	item def EnumerationType :> Namespace, NonListType{
		item ownedLiteral : EnumerationLiteral [1..*];
	}
	item def NumericRange :> Element{
		item upperBound : PropertyExpression [1];
		item lowerBound : PropertyExpression [1];
	}
	item def AadlReal :> NumberType;
	item def ClassifierType :> NonListType{
		item classifierReference : MetaclassReference [1..*];
	}
	item def RangeType :> NonListType{
		item ownedNumberType : NumberType [1];
		ref item numberType : NumberType [1];
	}
	item def RecordType :> Namespace, NonListType{
		item ownedField : BasicProperty [*];
	}
	item def RecordField :> BasicProperty;
	item def ReferenceType :> NonListType{
		item namedElementReference : MetaclassReference [1..*];
	}
	item def ListType :> PropertyType{
		item ownedElementType : PropertyType [1];
		ref item elementType : PropertyType [1];
	}
	item def ProcessorPort :> NamedElement, ModeTransitionTrigger, AbstractConnectionEnd;
	item def InternalEvent :> NamedElement, ModeTransitionTrigger, AbstractConnectionEnd;
	item def ProcessorSubprogram :> NamedElement, AbstractConnectionEnd;
}

