var x = document.getElementById("") ;
function deleteStudent(){
    if (confirm("Are sure want to delete!") == true) {
           x = "OK!";
           
     } else {
           x = "Cancel!";
     }
     
     if(x.equls("OK!")){
		x.href = "deleteStudent?student_rollno=${student.STU_ROLLNO}";
	 }
         
}

