function PopulateDays() {
    var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
    var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
    var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
    var y = ddlYear.options[ddlYear.selectedIndex].value;
    var m = ddlMonth.options[ddlMonth.selectedIndex].value != 0;
    if (ddlMonth.options[ddlMonth.selectedIndex].value != 0 && ddlYear.options[ddlYear.selectedIndex].value != 0) {
        var dayCount = 32 - new Date(ddlYear.options[ddlYear.selectedIndex].value, ddlMonth.options[ddlMonth.selectedIndex].value - 1, 32).getDate();
        ddlDay.options.length = 0;
        AddOption(ddlDay, "DD", "0");
        for (var i = 1; i <= dayCount; i++) {
            AddOption(ddlDay, i, i);
        }
    }
}

function AddOption(ddl, text, value) {
    var opt = document.createElement("OPTION");
    opt.text = text;
    opt.value = value;
    ddl.options.add(opt);
}

function Validate(sender, args) {
    var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
    var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
    var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
    args.IsValid = (ddlDay.selectedIndex != 0 && ddlMonth.selectedIndex != 0 && ddlYear.selectedIndex != 0)
}
function Validatefields(sender, args) {
    var roomname = document.getElementById("<%=TextBox1.ClientID%>");
    //args.IsValid = (roomname.textContent != "")
    args.IsValid = false;

}

function Confirm() {
    var confirm_value = document.createElement("INPUT");
    confirm_value.type = "hidden";
    confirm_value.name = "confirm_value";
    if (confirm("Remove this user from room members list?")) {
        confirm_value.value = "Yes";
    } else {
        confirm_value.value = "No";
    }
    document.forms[0].appendChild(confirm_value);
}

function toRedirect() {
    window.location.href = "confirmation.aspx";
}