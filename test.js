const boton = document.getElementById("boton")

boton.addEventListener("click",()=>{
    let user = document.getElementById("user").value
    let pss = document.getElementById("psswrd").value
    
    const corre ={
        correo:user
    }

    const contra = {
        psswrd:pss
    }

    console.log(JSON.stringify(corre));

    var opciones = {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
          },
        body: JSON.stringify(corre)
      };

    fetch("http://localhost:3000/api/login",opciones).then(response => response.json())
    .then(data => {
      console.log(data);
    })
    .catch(error => {
      console.error("Error:", error);
    });
  
      

})