({
    doInit : function(component, event, helper) {
        //Get needed records
        helper.doInitHelper(component);

        //FOR BUILD 1: Getting Table Column Values from Custom Label 
		var myTableColumnsValues = $A.get("$Label.c.My_Table_Columns");
        component.set('v.myTableColumns', myTableColumnsValues);
	},
    handleNewClick : function(component, event, helper) {
		//Insert Records
        helper.handleNewClickHelper(component);
	},
    toggleSection : function(component, event, helper) {
        //Toggle for section div
        var sectionAuraId = event.target.getAttribute("data-auraId");
        var sectionDiv = component.find(sectionAuraId).getElement();
        var sectionState = sectionDiv.getAttribute('class').search('slds-is-open'); 
        if(sectionState == -1){
            sectionDiv.setAttribute('class' , 'slds-section slds-is-open');
        }else{
            sectionDiv.setAttribute('class' , 'slds-section slds-is-close');
        }
    }
})