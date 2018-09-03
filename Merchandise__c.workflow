<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Email_to_Manager</fullName>
        <description>Send Email to Manager</description>
        <protected>false</protected>
        <recipients>
            <recipient>harikrishna.maddela_lightning@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Out_Of_Stock</template>
    </alerts>
    <alerts>
        <fullName>Stock_Information</fullName>
        <description>Stock Information</description>
        <protected>false</protected>
        <recipients>
            <recipient>harikrishna.maddela_lightning@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Out_Of_Stock</template>
    </alerts>
    <rules>
        <fullName>Merchandise in Low Quality</fullName>
        <actions>
            <name>Send_Email_to_Manager</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Merchandise__c.Quantity__c</field>
            <operation>lessOrEqual</operation>
            <value>10</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
