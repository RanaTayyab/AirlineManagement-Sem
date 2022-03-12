     
function validateForm() {
    var w = document.forms["myForm"]["fullname"].value;
     var x = document.forms["myForm"]["password"].value;
      var y = document.forms["myForm"]["email"].value;
       var z = document.forms["myForm"]["confirmpassword"].value;
    if (w === "" || x === "" || y === "" || z === "" ) {
        alert("All the Fields are Required in the form.");
        return false;
    }
}    


     
function validateLoginForm() {
    var w = document.forms["myForm"]["email"].value;
     var x = document.forms["myForm"]["password"].value;
    if (w === "" || x === "" ) {
        alert("All the Fields are Required in the form.");
        return false;
    }
}    


function allnumeric(inputtxt)  
   {  
      var numbers = /^[0-9]+$/;
      if(inputtxt.value.match(numbers))  
      {  
      return true;
      }  
      else  
      {  
      inputtxt.value = "";
       alert('Please input Digits only');
      inputtxt.focus();
      }
      return false;  
   } 
   
        
    function allLetter(inputtxt)  
      {   
      var letters = /^[a-zA-Z\s]*$/; 
      if(inputtxt.value.match(letters))  
      {  
          if(inputtxt.value===' ')
          {  
              inputtxt.value = "";
              alert('No Alphabet character Entered');
              inputtxt.focus();
             return false;
          }
      return true;  
      }  
      else  
      {  
      inputtxt.value = "";
     alert('Please input Alphabet and Space characters only');
      inputtxt.focus();
      }
      return false;
      }
      
    function ValidateEmail(inputText)  
    {  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    if(!(inputText.value.match(mailformat)))  
    {  
      inputText.value = "";
     alert('Email is not valid');
     return false;
    }  
    return true;
    }  