<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <ns uri="urn:iso:std:iso:30042:ed:3.0" prefix="tbx" />
    <ns uri="http://www.tbxinfo.net/ns/dct/min" prefix="min" />
    
    <!-- Min Module Rules -->
    <pattern id="module.min.admin">
        <rule context="min:customerSubset">
            <assert test="parent::tbx:termSec or parent::tbx:adminGrp/parent::tbx:termSec">Customer Subset may only appear at the termSec level</assert>
        </rule>
    </pattern>
    <pattern id="module.min.descrip">
        <rule context="min:subjectField" >
            <assert test="parent::tbx:conceptEntry or parent::tbx:descripGrp/parent::tbx:conceptEntry">Subject Field can only appear at conceptEntry level.</assert>
        </rule>
    </pattern>
</schema>