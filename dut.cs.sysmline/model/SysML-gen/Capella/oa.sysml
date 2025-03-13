package oa {
	private import ecore::*;
	public import ctx::*;
	public import capellacommon::*;
	public import cs::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import epbs::*;
	public import capellacore::*;
	public import la::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import behavior::*;
	public import activity::*;
	public import pa::*;
	item def OperationalAnalysis :> BlockArchitecture{
		item ownedRolePkg : RolePkg [1];
		item ownedEntityPkg : EntityPkg [1];
		item ownedConceptPkg : ConceptPkg [1];
		ref item containedOperationalCapabilityPkg : OperationalCapabilityPkg [1];
		ref item containedOperationalActivityPkg : OperationalActivityPkg [1];
		ref item allocatingSystemAnalyses : SystemAnalysis [*];
	}
	abstract item def OperationalScenario :> NamedElement{
		attribute context : EString [1];
		attribute objective : EString [1];
	}
	item def OperationalActivityPkg :> FunctionPkg{
		item ownedOperationalActivities : OperationalActivity [*];
		item ownedOperationalActivityPkgs : OperationalActivityPkg [*];
	}
	item def OperationalActivity :> AbstractFunction{
		item ownedOperationalActivityPkgs : OperationalActivityPkg [*];
		ref item activityAllocations : ActivityAllocation [*];
		ref item ownedSwimlanes : Swimlane [*];
		ref item ownedProcess : OperationalProcess [*];
		ref item allocatorEntities : Entity [*];
		ref item realizingSystemFunctions : SystemFunction [*];
		ref item allocatingRoles : Role [*];
		ref item containedOperationalActivities : OperationalActivity [*];
		ref item childrenOperationalActivities : OperationalActivity [*];
	}
	item def OperationalProcess :> FunctionalChain{
		ref item involvingOperationalCapabilities : OperationalCapability [*];
	}
	item def Swimlane :> NamedElement, {
		ref item representedEntity : Entity [1];
	}
	item def OperationalCapabilityPkg :> AbstractCapabilityPkg{
		item ownedOperationalCapabilities : OperationalCapability [*];
		item ownedOperationalCapabilityPkgs : OperationalCapabilityPkg [*];
		item ownedCapabilityConfigurations : CapabilityConfiguration [*];
		item ownedConceptCompliances : ConceptCompliance [*];
	}
	item def OperationalCapability :> AbstractCapability, Namespace{
		ref item compliances : ConceptCompliance [*];
		ref item configurations : CapabilityConfiguration [*];
		item ownedEntityOperationalCapabilityInvolvements : EntityOperationalCapabilityInvolvement [*];
		ref item realizingCapabilities : Capability [*];
		ref item involvedEntities : Entity [*];
	}
	item def ActivityAllocation :> Allocation{
		ref item role : Role [1];
		ref item activity : OperationalActivity [1];
	}
	item def RolePkg :> Structure{
		item ownedRolePkgs : RolePkg [*];
		item ownedRoles : Role [*];
	}
	item def Role :> AbstractInstance{
		item ownedRoleAssemblyUsages : RoleAssemblyUsage [*];
		item ownedActivityAllocations : ActivityAllocation [*];
		ref item roleAllocations : RoleAllocation [*];
		ref item activityAllocations : ActivityAllocation [*];
		ref item allocatingEntities : Entity [*];
		ref item allocatedOperationalActivities : OperationalActivity [*];
	}
	item def RoleAssemblyUsage :> NamedElement{
		ref item child : Role [1];
	}
	item def RoleAllocation :> Allocation{
		ref item role : Role [1];
		ref item entity : Entity [1];
	}
	item def EntityPkg :> ComponentPkg{
		item ownedEntities : Entity [*];
		item ownedEntityPkgs : EntityPkg [*];
		item ownedLocations : Location [*];
		item ownedCommunicationMeans : CommunicationMean [*];
	}
	item def Entity :> AbstractConceptItem, , InvolvedElement{
		ref item roleAllocations : RoleAllocation [*];
		ref item organisationalUnitMemberships : OrganisationalUnitComposition [*];
		ref item actualLocation : Location [1];
		ref item subEntities : Entity [*];
		item ownedEntities : Entity [*];
		item ownedCommunicationMeans : CommunicationMean [*];
		item ownedRoleAllocations : RoleAllocation [*];
		ref item allocatedOperationalActivities : OperationalActivity [*];
		ref item allocatedRoles : Role [*];
		ref item involvingOperationalCapabilities : OperationalCapability [*];
		ref item realizingSystemComponents : SystemComponent [*];
	}
	item def ConceptPkg :> Structure{
		item ownedConceptPkgs : ConceptPkg [*];
		item ownedConcepts : Concept [*];
	}
	item def Concept :> NamedElement{
		ref item compliances : ConceptCompliance [*];
		item compositeLinks : ItemInConcept [*];
	}
	item def ConceptCompliance :> Relationship{
		ref item complyWithConcept : Concept [1];
		ref item compliantCapability : OperationalCapability [1];
	}
	item def ItemInConcept :> NamedElement{
		ref item concept : Concept [1];
		ref item item : AbstractConceptItem [1];
	}
	abstract item def AbstractConceptItem :> Component{
		ref item composingLinks : ItemInConcept [*];
	}
	item def CommunityOfInterest :> NamedElement{
		item communityOfInterestCompositions : CommunityOfInterestComposition [*];
	}
	item def CommunityOfInterestComposition :> NamedElement{
		ref item communityOfInterest : CommunityOfInterest [1];
		ref item interestedOrganisationUnit : OrganisationalUnit [1];
	}
	item def OrganisationalUnit :> NamedElement{
		item organisationalUnitCompositions : OrganisationalUnitComposition [*];
		ref item communityOfInterestMemberships : CommunityOfInterestComposition [*];
	}
	item def OrganisationalUnitComposition :> NamedElement{
		ref item organisationalUnit : OrganisationalUnit [1];
		ref item participatingEntity : Entity [1];
	}
	item def Location :> AbstractConceptItem{
		attribute locationDescription : EString [1];
		ref item locatedEntities : Entity [*];
	}
	item def CapabilityConfiguration :> AbstractConceptItem{
		ref item configuredCapability : OperationalCapability [1];
	}
	item def CommunicationMean :> NamedRelationship, ComponentExchange{
		ref item sourceEntity : Entity [1];
		ref item targetEntity : Entity [1];
	}
	item def EntityOperationalCapabilityInvolvement :> Involvement{
		ref item entity : Entity [1];
		ref item capability : OperationalCapability [1];
	}
}

