<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:max="http://www.umcg.nl/MAX" xmlns:fhir="http://hl7.org/fhir">
    <xsl:output encoding="utf-8" indent="yes" method="xml"/>
    <xsl:variable name="folder">C:/Eclipse Workspace/MedMij-STU3/</xsl:variable>
    <xsl:variable name="profiles">
        <profile filename="zib-AlcoholUse/zib-AlcoholUse.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.3"/>
        <profile filename="zib-Alert/zib-Alert.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.8.3"/>
        <profile filename="zib-AllergyIntolerance/zib-AllergyIntolerance-Reaction-Certainty.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.8.2"/>
        <profile filename="zib-AllergyIntolerance/zib-AllergyIntolerance.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.8.2"/>
        <profile filename="zib-Concern/zib-Concern-ProblemStatusDate.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.5.1"/>
        <profile filename="zib-Concern/zib-Concern.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.5.1"/>
        <profile filename="zib-Contact/zib-Contact.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.15.1"/>
        <profile filename="zib-DietaryRecommendations/zib-DietaryRecommendations-Explanation.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.11"/>
        <profile filename="zib-DietaryRecommendations/zib-DietaryRecommendations.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.11"/>
        <profile filename="zib-DrugUse/zib-DrugUse.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.4"/>
        <profile filename="zib-FunctionalOrMentalStatus/zib-FunctionalOrMentalStatus-MedicalAid.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.4.26"/>
        <profile filename="zib-FunctionalOrMentalStatus/zib-FunctionalOrMentalStatus.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.4.26"/>
        <profile filename="zib-LaboratoryTestResult/zib-LaboratoryTestResult-DiagnosticReport.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.13.1"/>
        <profile filename="zib-LaboratoryTestResult/zib-LaboratoryTestResult-Observation.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.13.1"/>
        <profile filename="zib-LaboratoryTestResult/zib-LaboratoryTestResult-Specimen.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.13.1"/>
        <profile filename="zib-LivingSituation/zib-LivingSituation.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.8"/>
        <profile filename="zib-MedicalAid/zib-MedicalAid-ConcernReference.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.10.1"/>
        <profile filename="zib-MedicalAid/zib-MedicalAid-nl-core-organizationReference.xml" zib="-"/>
        <profile filename="zib-MedicalAid/zib-MedicalAid-nl-core-practitionerReference.xml" zib="-"/>
        <profile filename="zib-MedicalAid/zib-MedicalAid.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.10.1"/>
        <profile filename="zib-MedicalAid/zib-MedicalAidProduct.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.10.1"/>
        <profile filename="zib-Payer/zib-Payer-BankInformation.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.1.1"/>
        <profile filename="zib-Payer/zib-PayerInsurance.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.1.1"/>
        <profile filename="zib-Payer/zib-PayerInsuranceCompany.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.1.1"/>
        <profile filename="zib-Payer/zib-PayerPerson.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.1.1"/>
        <profile filename="zib-Procedure/zib-Procedure-Requester.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.14.1"/>
        <profile filename="zib-Procedure/zib-Procedure.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.14.1"/>
        <profile filename="zib-TobaccoUse/zib-TobaccoUse.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.7.2"/>
        <profile filename="zib-TreatmentInstruction/zib-TreatmentInstruction-TreatmentPermitted.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.2.1"/>
        <profile filename="zib-TreatmentInstruction/zib-TreatmentInstruction-Verification.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.2.1"/>
        <profile filename="zib-TreatmentInstruction/zib-TreatmentInstruction.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.2.1"/>
        <profile filename="zib-Vaccination/zib-Vaccination-DesiredDateForRevaccination.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.11.1"/>
        <profile filename="zib-Vaccination/zib-Vaccination.xml" zib="2.16.840.1.113883.2.4.3.11.60.40.3.11.1"/>
    </xsl:variable>
    <xsl:variable name="zib_datatypes">
        <datatype id="7887" name="TS"/>
        <datatype id="7906" name="CD"/>
        <datatype id="7895" name="ST"/>
        <datatype id="7891" name="PQ"/>
        <datatype id="" name="BL"/>
        <datatype id="" name="INT"/>
        <datatype id="" name="CO"/>
        <datatype id="" name="ED"/>
    </xsl:variable>
    <xsl:variable name="datatype_mapping">
        <mapping zib="reference" fhir="Reference"/>
        <mapping zib="PQ" fhir="Quantity"/>
        <mapping zib="CD" fhir="CodeableConcept"/>
        <mapping zib="ST" fhir="string"/>
        <mapping zib="" fhir=""/>
        <!-- for rootconcept or containers -->
    </xsl:variable>
    <xsl:template match="/">
        <xsl:variable name="zibs" select="//objects/object[stereotype = 'DCM']"/>
        <xsl:variable name="zibels" select="//objects/object[type = 'Class' and tag/@name = 'DCM::DefinitionCode']"/>
        <xsl:variable name="zibgens" select="//relationships/relationship[type = 'Generalization']"/>
        <xsl:variable name="zibaggs" select="//relationships/relationship[type = 'Aggregation']"/>
        <compliance>
            <xsl:for-each select="$profiles//profile">
                <xsl:variable name="filename" select="concat($folder, @filename)"/>
                <xsl:variable name="strucdef" select="document($filename)/fhir:StructureDefinition"/>
                <xsl:variable name="DCMId" select="@zib"/>
                <xsl:variable name="zib" select="$zibs[tag/@value = $DCMId]"/>
                <profile-compliance>
                    <xsl:variable name="zibname" select="$zib/tag[@name = 'DCM::Name']/@value"/>
                    <!-- <uri><xsl:value-of select="$profile/fhir:mapping/fhir:uri/@value"/></uri> -->
                    <xsl:for-each select="$strucdef//fhir:mapping/fhir:map">
                        <xsl:variable name="map_value" select="@value"/>
                        <!-- find object that has DCM::DefinitionCode=...
							NOT!: <xsl:variable name="zibel" select="$zibels[tag/@name='DCM::DefinitionCode' and tag/@value=$map_value]"/> -->
                        <xsl:variable name="dctag" select="$zibels/tag[@name = 'DCM::DefinitionCode' and @value = $map_value]"/>
                        <xsl:variable name="zibel" select="$dctag/.."/>
                        <xsl:variable name="fhir_element" select="../../."/>
                        <xsl:variable name="fhir_kard">
                            <xsl:variable name="fhir_min" select="$fhir_element/fhir:min/@value"/>
                            <xsl:variable name="fhir_max" select="$fhir_element/fhir:max/@value"/>
                            <xsl:choose>
                                <xsl:when test="exists($fhir_min) and exists($fhir_max)">
                                    <xsl:value-of select="concat($fhir_min, '..', $fhir_max)"/>
                                </xsl:when>
                                <xsl:when test="exists($fhir_min)">
                                    <xsl:value-of select="$fhir_min"/>
                                </xsl:when>
                                <xsl:when test="exists($fhir_max)">
                                    <xsl:value-of select="concat('?..', $fhir_max)"/>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:variable name="zib_datatype">
                            <xsl:variable name="zib_datatype_id" select="$zibgens[sourceId = $zibel/id]/destId"/>
                            <xsl:variable name="zib_reference" select="$zibel/tag[@name = 'DCM::ReferencedDefinitionCode']/@value"/>
                            <xsl:choose>
                                <xsl:when test="exists($zib_reference)">reference</xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$zib_datatypes/datatype[@id = $zib_datatype_id]/@name"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:variable name="medmij_datatype" select="$fhir_element/fhir:type/fhir:code/@value"/>
                        <xsl:variable name="equal_datatype">
                            <xsl:choose>
                                <xsl:when test="$zib_datatype != '' or exists($medmij_datatype)">
                                    <xsl:value-of select="exists($datatype_mapping/mapping[@zib = $zib_datatype and @fhir = $medmij_datatype])"/>
                                </xsl:when>
                                <xsl:otherwise>&#160;</xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:variable name="zib_waardelijst" select="$zibel/tag[@name = 'DCM::ValueSet']/@value"/>
                        <xsl:variable name="medmij_waardelijst" select="$fhir_element/fhir:binding/fhir:valueSetReference/fhir:display/@value"/>
                        <xsl:variable name="equal_waardelijst_naam">
                            <xsl:choose>
                                <xsl:when test="exists($zib_waardelijst) or exists($medmij_waardelijst)">
                                    <xsl:value-of select="$zib_waardelijst = $medmij_waardelijst"/>
                                </xsl:when>
                                <xsl:otherwise>&#160;</xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <concept>
                            <xsl:attribute name="zib_naam" select="$zibname"/>
                            <xsl:attribute name="zib_concept" select="$zibel/name"/>
                            <xsl:attribute name="medmij_concept" select="$fhir_element/fhir:alias/@value"/>
                            <xsl:attribute name="equal_concept_naam" select="$zibel/name = $fhir_element/fhir:alias/@value"/>
                            <xsl:attribute name="zib_kard" select="$zibaggs[sourceId = $zibel/id]/sourceCard"/>
                            <xsl:attribute name="medmij_kard" select="$fhir_kard"/>
                            <xsl:attribute name="zib_stereotype" select="$zibel/stereotype"/>
                            <xsl:attribute name="medmij_naam" select="$fhir_element/fhir:path/@value"/>
                            <xsl:attribute name="medmij_id" select="$map_value"/>
                            <xsl:attribute name="zib_datatype" select="$zib_datatype"/>
                            <xsl:attribute name="medmij_datatype" select="$medmij_datatype"/>
                            <xsl:attribute name="equal_datatype" select="$equal_datatype"/>
                            <xsl:attribute name="zib_waardelijst" select="$zib_waardelijst"/>
                            <xsl:attribute name="medmij_waardelijst" select="$medmij_waardelijst"/>
                            <xsl:attribute name="equal_waardelijst_naam" select="$equal_waardelijst_naam"/>
                        </concept>
                    </xsl:for-each>
                </profile-compliance>
            </xsl:for-each>
        </compliance>
        <!--<dcms>
            <xsl:for-each select="//objects/object/tag[@name = 'DCM::Id']">
                <dcm>
                    <xsl:attribute name="zib" select="@value"/>
                    <xsl:attribute name="name" select="../name"/>
                </dcm>
            </xsl:for-each>
        </dcms>-->
    </xsl:template>
</xsl:stylesheet>
