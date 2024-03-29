﻿Feature: CreateResourceSuccess
	In order to keep track of a patient
	As a doctor
	I want to be able to create his information as a FHIR record

Scenario Outline: Create Patient
	Given I have the patient "John"
	When I create his FHIR record with Prefer "<prefer>"
	Then I should see a valid response

  Examples:
  | prefer            | 
  |  representation   |  
  |  minimal          |  
  |  OperationOutcome |