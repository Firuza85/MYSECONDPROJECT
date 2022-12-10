({
    doInitHelper: function(component) {
        var action = component.get("c.getInitRecords");
        action.setParams({
            "recordId": component.get("v.recordId")
        });
        action.setCallback(this, function(response) {
            if(response.getState() == "SUCCESS") {
                var myReturnValues = response.getReturnValue();
            }
            else {
                console.log("failed");
            }
        });
        $A.enqueueAction(action);
    },
    handleNewClickHelper: function(component) {
        //TODO
        //There are many options to create records in Lightning components.
        //Update to insert a opportunity on the account. 
    }
})