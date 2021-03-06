//
//  RequestGroup.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/RequestGroup) on 2019-05-21.
//  2019, SMART Health IT.
//

import Foundation


/**
A group of related requests.

A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give
this medication after that one".
*/
open class RequestGroup: DomainResource {
	override open class var resourceType: String {
		get { return "RequestGroup" }
	}
	
	/// Proposed actions, if any.
	public var action: [RequestGroupAction]?
	
	/// Device or practitioner that authored the request group.
	public var author: Reference?
	
	/// When the request group was authored.
	public var authoredOn: DateTime?
	
	/// Fulfills plan, proposal, or order.
	public var basedOn: [Reference]?
	
	/// What's being requested/ordered.
	public var code: CodeableConcept?
	
	/// Created as part of.
	public var encounter: Reference?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition.
	public var instantiatesCanonical: [FHIRCanonical]?
	
	/// Instantiates external protocol or definition.
	public var instantiatesUri: [FHIRURL]?
	
	/// Indicates the level of authority/intentionality associated with the request and where the request fits into the
	/// workflow chain.
	public var intent: RequestIntent?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// Indicates how quickly the request should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Why the request group is needed.
	public var reasonCode: [CodeableConcept]?
	
	/// Why the request group is needed.
	public var reasonReference: [Reference]?
	
	/// Request(s) replaced by this request.
	public var replaces: [Reference]?
	
	/// The current state of the request. For request groups, the status reflects the status of all the requests in the
	/// group.
	public var status: RequestStatus?
	
	/// Who the request group is about.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: RequestIntent, status: RequestStatus) {
		self.init()
		self.intent = intent
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: RequestGroupAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		groupIdentifier = createInstance(type: Identifier.self, for: "groupIdentifier", in: json, context: &instCtx, owner: self) ?? groupIdentifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instantiatesCanonical = createInstances(of: FHIRCanonical.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstances(of: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		intent = createEnum(type: RequestIntent.self, for: "intent", in: json, context: &instCtx) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		replaces = createInstances(of: Reference.self, for: "replaces", in: json, context: &instCtx, owner: self) ?? replaces
		status = createEnum(type: RequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesCanonical", using: self.instantiatesCanonical, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesUri", using: self.instantiatesUri, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Proposed actions, if any.

The actions, if any, produced by the evaluation of the artifact.
*/
open class RequestGroupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupAction" }
	}
	
	/// Sub action.
	public var action: [RequestGroupAction]?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: ActionCardinalityBehavior?
	
	/// Code representing the meaning of the action or sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: [RequestGroupActionCondition]?
	
	/// Short description of the action.
	public var description_fhir: FHIRString?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: ActionGroupingBehavior?
	
	/// Who should perform the action.
	public var participant: [Reference]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: ActionPrecheckBehavior?
	
	/// User-visible prefix for the action (e.g. 1. or A.).
	public var prefix: FHIRString?
	
	/// Indicates how quickly the action should be addressed with respect to other actions.
	public var priority: RequestPriority?
	
	/// Relationship to another action.
	public var relatedAction: [RequestGroupActionRelatedAction]?
	
	/// Defines expectations around whether an action is required.
	public var requiredBehavior: ActionRequiredBehavior?
	
	/// The target of the action.
	public var resource: Reference?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: ActionSelectionBehavior?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system.
	public var textEquivalent: FHIRString?
	
	/// When the action should take place.
	public var timingAge: Age?
	
	/// When the action should take place.
	public var timingDateTime: DateTime?
	
	/// When the action should take place.
	public var timingDuration: Duration?
	
	/// When the action should take place.
	public var timingPeriod: Period?
	
	/// When the action should take place.
	public var timingRange: Range?
	
	/// When the action should take place.
	public var timingTiming: Timing?
	
	/// User-visible title.
	public var title: FHIRString?
	
	/// create | update | remove | fire-event.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: RequestGroupAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		cardinalityBehavior = createEnum(type: ActionCardinalityBehavior.self, for: "cardinalityBehavior", in: json, context: &instCtx) ?? cardinalityBehavior
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		condition = createInstances(of: RequestGroupActionCondition.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		documentation = createInstances(of: RelatedArtifact.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		groupingBehavior = createEnum(type: ActionGroupingBehavior.self, for: "groupingBehavior", in: json, context: &instCtx) ?? groupingBehavior
		participant = createInstances(of: Reference.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		precheckBehavior = createEnum(type: ActionPrecheckBehavior.self, for: "precheckBehavior", in: json, context: &instCtx) ?? precheckBehavior
		prefix = createInstance(type: FHIRString.self, for: "prefix", in: json, context: &instCtx, owner: self) ?? prefix
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		relatedAction = createInstances(of: RequestGroupActionRelatedAction.self, for: "relatedAction", in: json, context: &instCtx, owner: self) ?? relatedAction
		requiredBehavior = createEnum(type: ActionRequiredBehavior.self, for: "requiredBehavior", in: json, context: &instCtx) ?? requiredBehavior
		resource = createInstance(type: Reference.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		selectionBehavior = createEnum(type: ActionSelectionBehavior.self, for: "selectionBehavior", in: json, context: &instCtx) ?? selectionBehavior
		textEquivalent = createInstance(type: FHIRString.self, for: "textEquivalent", in: json, context: &instCtx, owner: self) ?? textEquivalent
		timingAge = createInstance(type: Age.self, for: "timingAge", in: json, context: &instCtx, owner: self) ?? timingAge
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingDuration = createInstance(type: Duration.self, for: "timingDuration", in: json, context: &instCtx, owner: self) ?? timingDuration
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		timingRange = createInstance(type: Range.self, for: "timingRange", in: json, context: &instCtx, owner: self) ?? timingRange
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.cardinalityBehavior?.decorate(json: &json, withKey: "cardinalityBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "documentation", using: self.documentation, errors: &errors)
		self.groupingBehavior?.decorate(json: &json, withKey: "groupingBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.precheckBehavior?.decorate(json: &json, withKey: "precheckBehavior", errors: &errors)
		self.prefix?.decorate(json: &json, withKey: "prefix", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedAction", using: self.relatedAction, errors: &errors)
		self.requiredBehavior?.decorate(json: &json, withKey: "requiredBehavior", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.selectionBehavior?.decorate(json: &json, withKey: "selectionBehavior", errors: &errors)
		self.textEquivalent?.decorate(json: &json, withKey: "textEquivalent", errors: &errors)
		self.timingAge?.decorate(json: &json, withKey: "timingAge", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingDuration?.decorate(json: &json, withKey: "timingDuration", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingRange?.decorate(json: &json, withKey: "timingRange", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Whether or not the action is applicable.

An expression that describes applicability criteria, or start/stop conditions for the action.
*/
open class RequestGroupActionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionCondition" }
	}
	
	/// Boolean-valued expression.
	public var expression: Expression?
	
	/// The kind of condition.
	public var kind: ActionConditionKind?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: ActionConditionKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expression = createInstance(type: Expression.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		kind = createEnum(type: ActionConditionKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
	}
}


/**
Relationship to another action.

A relationship to another action such as "before" or "30-60 minutes after start of".
*/
open class RequestGroupActionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionRelatedAction" }
	}
	
	/// What action this is related to.
	public var actionId: FHIRString?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// The relationship of this action to the related action.
	public var relationship: ActionRelationshipType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionId: FHIRString, relationship: ActionRelationshipType) {
		self.init()
		self.actionId = actionId
		self.relationship = relationship
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actionId = createInstance(type: FHIRString.self, for: "actionId", in: json, context: &instCtx, owner: self) ?? actionId
		if nil == actionId && !instCtx.containsKey("actionId") {
			instCtx.addError(FHIRValidationError(missing: "actionId"))
		}
		offsetDuration = createInstance(type: Duration.self, for: "offsetDuration", in: json, context: &instCtx, owner: self) ?? offsetDuration
		offsetRange = createInstance(type: Range.self, for: "offsetRange", in: json, context: &instCtx, owner: self) ?? offsetRange
		relationship = createEnum(type: ActionRelationshipType.self, for: "relationship", in: json, context: &instCtx) ?? relationship
		if nil == relationship && !instCtx.containsKey("relationship") {
			instCtx.addError(FHIRValidationError(missing: "relationship"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actionId?.decorate(json: &json, withKey: "actionId", errors: &errors)
		if nil == self.actionId {
			errors.append(FHIRValidationError(missing: "actionId"))
		}
		self.offsetDuration?.decorate(json: &json, withKey: "offsetDuration", errors: &errors)
		self.offsetRange?.decorate(json: &json, withKey: "offsetRange", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		if nil == self.relationship {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
	}
}

