function submitForm(formID){
    const confirmation = confirm("Are you sure?");
    if (confirmation) {
        document.getElementById(formID).submit();
    }
}
