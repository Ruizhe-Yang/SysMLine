package soa {
	private import ecore::*;
	public import environment::*;
	public import metadatadef::*;
	public import technicalid::*;
	item def System :> Namespace{
		item ownedComponents : Component [*];
		item ownedWires : Wire [*];
	}
	item def Component :> ObeoDSMObject{
		item ownedServices : Service [*];
		ref item requiredServices : Service [*];
		ref item providedServices : Service [*];
		item implementations : ImplementationComponent [*];
		attribute name : EString [1];
		item ownedBinding : Binding [*];
		ref item 'block' : TypesDefinition [*];
		attribute URI : EString [1];
		attribute apiVersion : EString [1];
		attribute deprecated : EBoolean [1];
		item securitySchemes : SecurityScheme [*];
		item license : License [1];
		item information : Information [1];
		item contact : Contact [1];
		item servers : Server [*];
	}
	item def Service :> ObeoDSMObject, Securable{
		item ownedInterface : Interface [1];
		attribute synchronization : SynchronizationKind [1];
		attribute kind : InterfaceKind [1];
		ref item referencedInterface : Interface [1];
		ref item bindings : Binding [1];
		attribute name : EString [1];
		ref item usedTypes : Type [*];
		attribute URI : EString [1];
	}
	item def Wire :> ObeoDSMObject{
		ref item source : Service [1];
		ref item dest : Service [1];
	}
	item def Binding :> ObeoDSMObject{
		attribute technology : BindingKind [1];
	}
	item def Interface :> ObeoDSMObject{
		item ownedOperations : Operation [*];
		attribute name : EString [1];
	}
	enum def InterfaceKind {
		enum provided;
		enum required;
	}
	enum def SynchronizationKind {
		enum synchronous;
		enum asynchronous;
	}
	item def Operation :> Action, Securable{
		item input : Parameter [*];
		item output : Parameter [*];
		attribute kind : OperationKind [1];
		attribute 'public' : EBoolean [1];
		item fault : Parameter [*];
		attribute URI : EString [1];
		attribute verb : Verb [1];
		attribute exposition : ExpositionKind [1];
		attribute paged : EBoolean [1];
		item servers : Server [*];
		ref item size : Parameter [1];
		ref item page : Parameter [1];
		ref item paginationExtension : PropertiesExtension [1];
	}
	item def ImplementationComponent :> ObeoDSMObject{
		ref item implement : Interface [1];
		ref item entities : TypesDefinition [1];
	}
	item def Parameter :> ObeoDSMObject, ConstrainableElement{
		ref item type : Type [1];
		item mediaType : MediaType [*];
		attribute name : EString [1];
		attribute multiplicity : MultiplicityKind [1];
		attribute isUnique : EBoolean [1];
		attribute isOrdered : EBoolean [1];
		attribute statusCode : EString [1];
		attribute statusMessage : EString [1];
		item restData : ParameterRestData [1];
	}
	enum def BindingKind {
		enum webservice;
		enum rmi;
		enum corba;
		enum ejb;
		enum java;
	}
	enum def OperationKind {
		enum REQUEST_RESPONSE;
		enum ONE_WAY;
	}
	enum def Verb {
		enum GET;
		enum POST;
		enum PUT;
		enum DELETE;
		enum HEAD;
		enum OPTIONS;
		enum PATCH;
		enum TRACE;
	}
	enum def ParameterPassingMode {
		enum BODY;
		enum PATH;
		enum QUERY;
		enum COOKIE;
		enum HEADER;
	}
	enum def ExpositionKind {
		enum NONE;
		enum REST;
		enum SOAP;
	}
	item def ParameterRestData :> Identifiable{
		attribute passingMode : ParameterPassingMode [1];
		attribute restId : EString [1];
	}
	item def SecurityScheme :> ObeoDSMObject{
		attribute key : EString [1];
		attribute type : SecuritySchemeType [1];
		attribute name : EString [1];
		attribute apiKeyLocation : ApiKeyLocation [1];
		attribute connectURL : EString [1];
		item flows : Flow [*];
		attribute httpScheme : HttpScheme [1];
		attribute format : EString [1];
	}
	item def Flow :> ObeoDSMObject{
		attribute flowType : FlowType [1];
		attribute authorizationURL : EString [1];
		attribute tokenURL : EString [1];
		attribute refreshURL : EString [1];
		item scopes : Scope [*];
	}
	enum def SecuritySchemeType {
		enum API_KEY;
		enum HTTP;
		enum OAUTH2;
		enum OPEN_ID_CONNECT;
	}
	enum def ApiKeyLocation {
		enum QUERY;
		enum HEADER;
		enum COOKIE;
	}
	enum def HttpScheme {
		enum BASIC;
		enum BEARER;
	}
	enum def FlowType {
		enum IMPLICIT;
		enum PASSWORD;
		enum CREDENTIALS;
		enum AUTHORIZATIONCODE;
	}
	item def Information :> ObeoDSMObject{
		attribute apiVersion : EString [1];
		attribute termsOfService : EString [1];
	}
	item def Contact :> ObeoDSMObject{
		attribute name : EString [1];
		attribute URL : EString [1];
		attribute email : EString [1];
	}
	item def License :> ObeoDSMObject{
		attribute name : EString [1];
		attribute URL : EString [1];
		attribute identifier : EString [1];
	}
	item def MediaType :> ObeoDSMObject{
		attribute identifier : EString [1];
		item examples : Example [*];
	}
	item def Example :> ObeoDSMObject{
		attribute summary : EString [1];
		attribute 'value' : EString [1];
		attribute name : EString [1];
	}
	item def PropertiesExtension :> Annotation{
		attribute context : EString [1];
	}
	item def Server :> ObeoDSMObject{
		attribute URL : EString [1];
	}
	item def Scope :> ObeoDSMObject{
		attribute name : EString [1];
		attribute summary : EString [1];
	}
	item def SecurityApplication :> Identifiable{
		ref item securityScheme : SecurityScheme [1];
		ref item scopes : Scope [*];
	}
	abstract item def Securable {
		item securityApplications : SecurityApplication [*];
		ref item securitySchemes : SecurityScheme [*];
	}
}

