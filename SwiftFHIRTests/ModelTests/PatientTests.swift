//
//  PatientTests.swift
//  PatientTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-26.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class PatientTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Patient? {
		let json = readJSONFile(filename)
		let instance = Patient(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPatient1() {
		let inst = instantiateFrom("patient-example-a.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.contact![0].organization!.display!, "Walt Disney Corporation")	
		XCTAssertEqual(inst!.contact![0].organization!.reference!, "Organization/1")	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/patient-contact-relationship")!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Male")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:0.1.2.3.4.5.6.7")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "usual")	
		XCTAssertEqual(inst!.identifier![0].value!, "654321")	
		XCTAssertEqual(inst!.link![0].other!.reference!, "Patient/pat2")	
		XCTAssertEqual(inst!.link![0].type!, "seealso")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "ACME Healthcare, Inc")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/1")	
		XCTAssertEqual(inst!.name![0].family![0], "Donald")	
		XCTAssertEqual(inst!.name![0].given![0], "Duck")	
		XCTAssertEqual(inst!.name![0].use!, "official")	
		XCTAssertEqual(inst!.photo![0].contentType!, "image/gif")	
		XCTAssertEqual(inst!.photo![0].data!, "R0lGODlhEwARAPcAAAAAAAAA/+9aAO+1AP/WAP/eAP/eCP/eEP/eGP/nAP/nCP/nEP/nIf/nKf/nUv/nWv/vAP/vCP/vEP/vGP/vIf/vKf/vMf/vOf/vWv/vY//va//vjP/3c//3lP/3nP//tf//vf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yH5BAEAAAEALAAAAAATABEAAAi+AAMIDDCgYMGBCBMSvMCQ4QCFCQcwDBGCA4cLDyEGECDxAoAQHjxwyKhQAMeGIUOSJJjRpIAGDS5wCDly4AALFlYOgHlBwwOSNydM0AmzwYGjBi8IHWoTgQYORg8QIGDAwAKhESI8HIDgwQaRDI1WXXAhK9MBBzZ8/XDxQoUFZC9IiCBh6wEHGz6IbNuwQoSpWxEgyLCXL8O/gAnylNlW6AUEBRIL7Og3KwQIiCXb9HsZQoIEUzUjNEiaNMKAAAA7")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Patient Donald DUCK @ Acme Healthcare, Inc. MR = 654321</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient2() {
		let inst = instantiateFrom("patient-example-animal.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.animal!.breed!.coding![0].code!, "58108001")	
		XCTAssertEqual(inst!.animal!.breed!.coding![0].display!, "Golden retriever")
		XCTAssertEqual(inst!.animal!.breed!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.animal!.breed!.coding![1].code!, "gret")	
		XCTAssertEqual(inst!.animal!.breed!.coding![1].display!, "Golden Retriever")
		XCTAssertEqual(inst!.animal!.breed!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/animal-breed")!)	
		XCTAssertEqual(inst!.animal!.genderStatus!.coding![0].code!, "neutered")
		XCTAssertEqual(inst!.animal!.genderStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/animal-genderstatus")!)	
		XCTAssertEqual(inst!.animal!.species!.coding![0].code!, "canislf")	
		XCTAssertEqual(inst!.animal!.species!.coding![0].display!, "Dog")
		XCTAssertEqual(inst!.animal!.species!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/animal-species")!)
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("2010-03-23")!)	
		XCTAssertEqual(inst!.contact![0].name!.family![0], "Chalmers")	
		XCTAssertEqual(inst!.contact![0].name!.given![0], "Peter")	
		XCTAssertEqual(inst!.contact![0].name!.given![1], "James")	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/patient-contact-relationship")!)	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "work")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "(03) 5555 6473")	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "F")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "Maroondah City Council")	
		XCTAssertEqual(inst!.identifier![0].label!, "Dog Tag")
		XCTAssertEqual(inst!.identifier![0].period!.start!, NSDate.dateFromISOString("2010-05-31")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.maroondah.vic.gov.au/AnimalRegFees.aspx")!)	
		XCTAssertEqual(inst!.identifier![0].value!, "1234123")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "Pete's Vetinary Services")	
		XCTAssertEqual(inst!.name![0].given![0], "Kenzi")	
		XCTAssertEqual(inst!.name![0].use!, "usual")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <table>\n        <tbody>\n          <tr>\n            <td>Id</td>\n            <td>Kenzi (Dog: Golden Retriever)</td>\n          </tr>\n          <tr>\n            <td>Owner</td>\n            <td>Peter Chalmers, 534 Erewhon, Pleasantville, Vic, 3999</td>\n          </tr>\n          <tr>\n            <td>Contacts</td>\n            <td>Work: (03) 5555 6473</td>\n          </tr>\n          <tr>\n            <td>Id</td>\n            <td>Dog Tag: 1234123 (Maroondah City Council)</td>\n          </tr>\n        </tbody>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient3() {
		let inst = instantiateFrom("patient-example-b.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Male")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:0.1.2.3.4.5.6.7")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "usual")	
		XCTAssertEqual(inst!.identifier![0].value!, "123456")	
		XCTAssertEqual(inst!.link![0].other!.reference!, "Patient/pat1")	
		XCTAssertEqual(inst!.link![0].type!, "seealso")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "ACME Healthcare, Inc")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/1")	
		XCTAssertEqual(inst!.name![0].family![0], "Donald")	
		XCTAssertEqual(inst!.name![0].given![0], "Duck")	
		XCTAssertEqual(inst!.name![0].given![1], "D")	
		XCTAssertEqual(inst!.name![0].use!, "official")	
		XCTAssertEqual(inst!.photo![0].contentType!, "image/gif")	
		XCTAssertEqual(inst!.photo![0].data!, "R0lGODlhEwARAPcAAAAAAAAA/+9aAO+1AP/WAP/eAP/eCP/eEP/eGP/nAP/nCP/nEP/nIf/nKf/nUv/nWv/vAP/vCP/vEP/vGP/vIf/vKf/vMf/vOf/vWv/vY//va//vjP/3c//3lP/3nP//tf//vf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yH5BAEAAAEALAAAAAATABEAAAi+AAMIDDCgYMGBCBMSvMCQ4QCFCQcwDBGCA4cLDyEGECDxAoAQHjxwyKhQAMeGIUOSJJjRpIAGDS5wCDly4AALFlYOgHlBwwOSNydM0AmzwYGjBi8IHWoTgQYORg8QIGDAwAKhESI8HIDgwQaRDI1WXXAhK9MBBzZ8/XDxQoUFZC9IiCBh6wEHGz6IbNuwQoSpWxEgyLCXL8O/gAnylNlW6AUEBRIL7Og3KwQIiCXb9HsZQoIEUzUjNEiaNMKAAAA7")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Patient Donald D DUCK @ Acme Healthcare, Inc. MR = 123456</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient4() {
		let inst = instantiateFrom("patient-example-dicom.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.gender!.coding![1].code!, "M")
		XCTAssertEqual(inst!.gender!.coding![1].system!, NSURL(string: "http://nema.org/examples/gender")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://nema.org/examples/patients")!)	
		XCTAssertEqual(inst!.identifier![0].value!, "MINT1234")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/1")	
		XCTAssertEqual(inst!.name![0].family![0], "MINT_TEST")	
		XCTAssertEqual(inst!.text!.div!, "<div> Patient MINT_TEST, ID = MINT1234. Age = 56y, Size =\n      1.83m, Weight = 72.58kg </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient5() {
		let inst = instantiateFrom("patient-example-f001-pieter.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.address![0].city!, "Amsterdam")	
		XCTAssertEqual(inst!.address![0].country!, "NLD")	
		XCTAssertEqual(inst!.address![0].line![0], "Van Egmondkade 23")	
		XCTAssertEqual(inst!.address![0].use!, "home")	
		XCTAssertEqual(inst!.address![0].zip!, "1024 RJ")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1944-11-17")!)	
		XCTAssertEqual(inst!.communication![0].coding![0].code!, "nl")	
		XCTAssertEqual(inst!.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst!.communication![0].coding![0].system!, NSURL(string: "urn:ietf:bcp:47")!)	
		XCTAssertEqual(inst!.communication![0].text!, "Nederlands")	
		XCTAssertEqual(inst!.contact![0].name!.family![0], "Abels")	
		XCTAssertEqual(inst!.contact![0].name!.given![0], "Sarah")	
		XCTAssertEqual(inst!.contact![0].name!.use!, "usual")	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].code!, "partner")
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/patient-contact-relationship")!)	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "mobile")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "0690383372")
		XCTAssertFalse(inst!.deceasedBoolean!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Male")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "usual")	
		XCTAssertEqual(inst!.identifier![0].value!, "738472983")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)	
		XCTAssertEqual(inst!.identifier![1].use!, "usual")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "Burgers University Medical Centre")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")	
		XCTAssertEqual(inst!.maritalStatus!.coding![0].code!, "M")	
		XCTAssertEqual(inst!.maritalStatus!.coding![0].display!, "Married")
		XCTAssertEqual(inst!.maritalStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/MaritalStatus")!)	
		XCTAssertEqual(inst!.maritalStatus!.text!, "Getrouwd")
		XCTAssertTrue(inst!.multipleBirthBoolean!)	
		XCTAssertEqual(inst!.name![0].family![0], "van de Heuvel")	
		XCTAssertEqual(inst!.name![0].given![0], "Pieter")	
		XCTAssertEqual(inst!.name![0].suffix![0], "MSc")	
		XCTAssertEqual(inst!.name![0].use!, "usual")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].use!, "mobile")	
		XCTAssertEqual(inst!.telecom![0].value!, "0648352638")	
		XCTAssertEqual(inst!.telecom![1].system!, "email")	
		XCTAssertEqual(inst!.telecom![1].use!, "home")	
		XCTAssertEqual(inst!.telecom![1].value!, "p.heuvel@gmail.com")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: 738472983 (usual), ?? (usual)\n      </p>\n      <p>\n        <b>name</b>: Pieter van de Heuvel \n      </p>\n      <p>\n        <b>telecom</b>: ph: 0648352638(mobile), p.heuvel@gmail.com(home)\n      </p>\n      <p>\n        <b>gender</b>: \n        <span title=\"Codes: {http://hl7.org/fhir/v3/AdministrativeGender M}\">Male</span>\n      </p>\n      <p>\n        <b>birthDate</b>: 17-Nov 1944\n      </p>\n      <p>\n        <b>deceased[x]</b>: false\n      </p>\n      <p>\n        <b>address</b>: Van Egmondkade 23 Amsterdam 1024 RJ NLD (home)\n      </p>\n      <p>\n        <b>maritalStatus</b>: \n        <span title=\"Codes: {http://hl7.org/fhir/v3/MaritalStatus M}\">Getrouwd</span>\n      </p>\n      <p>\n        <b>multipleBirth[x]</b>: true\n      </p>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Relationship</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n          <td>\n            <b>Organization</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/patient-contact-relationship partner}\">Partner</span>\n          </td>\n          <td>Sarah Abels </td>\n          <td>ph: 0690383372(mobile)</td>\n          <td> </td>\n          <td> </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>communication</b>: \n        <span title=\"Codes: {urn:ietf:bcp:47 nl}\">Nederlands</span>\n      </p>\n      <p>\n        <b>managingOrganization</b>: Burgers University Medical Centre\n      </p>\n      <p>\n        <b>active</b>: true\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient6() {
		let inst = instantiateFrom("patient-example-f201-roel.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.address![0].city!, "Amsterdam")	
		XCTAssertEqual(inst!.address![0].country!, "NLD")	
		XCTAssertEqual(inst!.address![0].line![0], "Bos en Lommerplein 280")	
		XCTAssertEqual(inst!.address![0].use!, "home")	
		XCTAssertEqual(inst!.address![0].zip!, "1055RW")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1960-03-13")!)	
		XCTAssertEqual(inst!.communication![0].coding![0].code!, "nl-NL")	
		XCTAssertEqual(inst!.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst!.communication![0].coding![0].system!, NSURL(string: "urn:std:iso:639-1")!)	
		XCTAssertEqual(inst!.contact![0].name!.text!, "Ariadne Bor-Jansma")	
		XCTAssertEqual(inst!.contact![0].name!.use!, "usual")	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].code!, "127850001")	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].display!, "Wife")
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![1].code!, "partner")
		XCTAssertEqual(inst!.contact![0].relationship![0].coding![1].system!, NSURL(string: "http://hl7.org/fhir/patient-contact-relationship")!)	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "home")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "+31201234567")
		XCTAssertFalse(inst!.deceasedBoolean!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "248153007")	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Male")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.gender!.coding![1].code!, "M")	
		XCTAssertEqual(inst!.gender!.coding![1].display!, "Male")
		XCTAssertEqual(inst!.gender!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "BSN")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "123456789")	
		XCTAssertEqual(inst!.identifier![1].label!, "BSN")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)	
		XCTAssertEqual(inst!.identifier![1].use!, "official")	
		XCTAssertEqual(inst!.identifier![1].value!, "123456789")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "AUMC")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f201")	
		XCTAssertEqual(inst!.maritalStatus!.coding![0].code!, "36629006")	
		XCTAssertEqual(inst!.maritalStatus!.coding![0].display!, "Legally married")
		XCTAssertEqual(inst!.maritalStatus!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.maritalStatus!.coding![1].code!, "M")
		XCTAssertEqual(inst!.maritalStatus!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v3/MaritalStatus")!)
		XCTAssertFalse(inst!.multipleBirthBoolean!)	
		XCTAssertEqual(inst!.name![0].family![0], "Bor")	
		XCTAssertEqual(inst!.name![0].given![0], "Roelof Olaf")	
		XCTAssertEqual(inst!.name![0].prefix![0], "Drs.")	
		XCTAssertEqual(inst!.name![0].suffix![0], "PDEng.")	
		XCTAssertEqual(inst!.name![0].text!, "Roel")	
		XCTAssertEqual(inst!.name![0].use!, "official")	
		XCTAssertEqual(inst!.photo![0].contentType!, "image/jpeg")
		XCTAssertEqual(inst!.photo![0].url!, NSURL(string: "binary/@f006")!)	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].use!, "mobile")	
		XCTAssertEqual(inst!.telecom![0].value!, "+31612345678")	
		XCTAssertEqual(inst!.telecom![1].system!, "phone")	
		XCTAssertEqual(inst!.telecom![1].use!, "home")	
		XCTAssertEqual(inst!.telecom![1].value!, "+31201234567")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: BSN = 123456789 (official), BSN = 123456789 (official)\n      </p>\n      <p>\n        <b>name</b>: Roel(official)\n      </p>\n      <p>\n        <b>telecom</b>: ph: +31612345678(mobile), ph: +31201234567(home)\n      </p>\n      <p>\n        <b>gender</b>: \n        <span title=\"Codes: {http://snomed.info/sct 248153007}, {http://hl7.org/fhir/v3/AdministrativeGender M}\">Male</span>\n      </p>\n      <p>\n        <b>birthDate</b>: 13-Mar 1960\n      </p>\n      <p>\n        <b>deceased[x]</b>: false\n      </p>\n      <p>\n        <b>address</b>: Bos en Lommerplein 280 Amsterdam 1055RW NLD (home)\n      </p>\n      <p>\n        <b>maritalStatus</b>: \n        <span title=\"Codes: {http://snomed.info/sct 36629006}, {http://hl7.org/fhir/v3/MaritalStatus M}\">Legally married</span>\n      </p>\n      <p>\n        <b>multipleBirth[x]</b>: false\n      </p>\n      <p>\n        <b>photo</b>: \n      </p>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Relationship</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n          <td>\n            <b>Organization</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 127850001}, {http://hl7.org/fhir/patient-contact-relationship partner}\">Wife</span>\n          </td>\n          <td>Ariadne Bor-Jansma</td>\n          <td>ph: +31201234567(home)</td>\n          <td> </td>\n          <td> </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>communication</b>: \n        <span title=\"Codes: {urn:std:iso:639-1 nl-NL}\">Dutch</span>\n      </p>\n      <p>\n        <b>managingOrganization</b>: AUMC\n      </p>\n      <p>\n        <b>active</b>: true\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient7() {
		let inst = instantiateFrom("patient-example-ihe-pcd.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.identifier![0].label!, "Internal Identifier")	
		XCTAssertEqual(inst!.identifier![0].value!, "AB60001")	
		XCTAssertEqual(inst!.name![0].family![0], "BROOKS")	
		XCTAssertEqual(inst!.name![0].given![0], "ALBERT")	
		XCTAssertEqual(inst!.text!.div!, "<div>Albert Brooks, Id: AB60001</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient8() {
		let inst = instantiateFrom("patient-example-us-extensions.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.address![0].city!, "PleasantVille")	
		XCTAssertEqual(inst!.address![0].line![0], "534 Erewhon St")	
		XCTAssertEqual(inst!.address![0].state!, "Vic")	
		XCTAssertEqual(inst!.address![0].use!, "home")	
		XCTAssertEqual(inst!.address![0].zip!, "3999")	
		XCTAssertEqual(inst!.name![0].family![0], "Chalmers")	
		XCTAssertEqual(inst!.name![0].given![0], "Peter")	
		XCTAssertEqual(inst!.name![0].given![1], "James")	
		XCTAssertEqual(inst!.name![0].use!, "official")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <table>\n        <tbody>\n          <tr>\n            <td>Name</td>\n            <td>Peter James <b>Chalmers</b> (&quot;Jim&quot;)</td>\n          </tr>\n          <tr>\n            <td>Address</td>\n            <td>534 Erewhon, Pleasantville, Orange County, 3999</td>\n          </tr>\n          <tr>\n            <td>Contacts</td>\n            <td>Home: unknown. Work: (03) 5555 6473</td>\n          </tr>\n          <tr>\n            <td>Id</td>\n            <td>MRN: 12345 (Acme Healthcare)</td>\n          </tr>\n        </tbody>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient9() {
		let inst = instantiateFrom("patient-example-xcda.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1932-09-24")!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.19.5")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "usual")	
		XCTAssertEqual(inst!.identifier![0].value!, "12345")	
		XCTAssertEqual(inst!.managingOrganization!.display!, "Good Health Clinic")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/2.16.840.1.113883.19.5")	
		XCTAssertEqual(inst!.name![0].family![0], "Levin")	
		XCTAssertEqual(inst!.name![0].given![0], "Henry")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Henry Levin the 7th</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testPatient10() {
		let inst = instantiateFrom("patient-example-xds.json")
		XCTAssertNotNil(inst, "Must have instantiated a Patient instance")
	
		XCTAssertTrue(inst!.active!)	
		XCTAssertEqual(inst!.address![0].city!, "Metropolis")	
		XCTAssertEqual(inst!.address![0].country!, "USA")	
		XCTAssertEqual(inst!.address![0].line![0], "100 Main St")	
		XCTAssertEqual(inst!.address![0].state!, "Il")	
		XCTAssertEqual(inst!.address![0].zip!, "44130")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1956-05-27")!)	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.2.3.4.5")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "usual")	
		XCTAssertEqual(inst!.identifier![0].value!, "89765a87b")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/2")	
		XCTAssertEqual(inst!.name![0].family![0], "Doe")	
		XCTAssertEqual(inst!.name![0].given![0], "John")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Patient John Doe, M, 27-May 1956. ID: 89765a87b</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
