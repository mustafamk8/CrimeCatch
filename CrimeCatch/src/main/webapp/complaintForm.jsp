<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="extraFiles/complaintFormStyle.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>

    <title>Report Crime</title>
</head>
<body>
  <div class="container">
  <p>Report a Crime Anonymously</p>
  
  <form method="post" action="ComplaintFormCtrl" enctype="multipart/form-data">
    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="sel1">Select the crime that happened:</label>
        <div class="card-body">
          <select class="form-control card-text" name="crimeType" id="sel1" onchange="other(this);">
            <option value="select">---Select---</option>
            <option value="kidnapping">Kidnapping</option>
            <option value="childAbuse">Child Abuse</option>
            <option value="drug">Drug trafficking</option>
            <option value="rape">Rape and sexual offences</option>
            <option value="murder">Murder</option>
            <option value="other">Other crime</option>
          </select>
      <!--     <div id="ifYes" style="display: none;">
            <label >Mention here</label> <input type="text" id="other" name="other" /><br />
          </div>     --> 
        </div>
      </div>     
    </div>

    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="sel1">When it happened ?</label>
        <div class="card-body">        
            <label class="radio-inline mx-3"><input type="radio" name ="time" value="" class="ttime">Morning</label>
            <label class="radio-inline mx-3" ><input type="radio" name ="time" value="" class="ttime">Afternoon</label>
            <label class="radio-inline mx-3"><input type="radio" name ="time" value="" class="ttime">Night</label>
        </div>
      </div>     
    </div>

    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="people">Number of people involved (approx)</label>
        <div class="card-body">        
          <input class="form-control" type="number" name="noOfPeople"></input>
        </div>
      </div>     
    </div>

    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="crimePlace">Where did the crime or incident take place? (Mention the area name)</label>
        <div class="card-body">        
          <textarea class="form-control" name="location" rows="2" id="comment"></textarea>
        </div>
      </div>     
    </div>

    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="info">Tell us more about the crime: what you heard, saw or know about.</label>
        <div class="card-body">        
          <textarea class="form-control" name="description" rows="5" id="comment"></textarea>
        </div>
      </div>     
    </div>



    <div class="form-group">
      <div class="card mx-auto">
        <label class="card-header" for="pic">Capture the photo of crime</label>

        <div class="card-body imgCapture">        
          
            <div >
              <div class="col-md-6">
                <div id="my_camera"></div>
                <br />
                <input type="button" class="my-1 snap" value="Take Snapshot" onClick="take_snapshot(10,10000000)" /><br>
                
              </div>
              <div class="col-md-6">
                <div id="results" class="my-3">Your captured image will appear here...</div>
                <input type="file" class="py-2" name="image" />
                <input type="file" class="py-2" name="image2" />
                <input type="file" class="py-2" name="image3" />
              </div>
            </div>
            
            <input type="text" name="latitude" id="locationInput" >
        <div class="card-body">        
          <input type="button"  class="btn btn-primary" >
        </div>
        
       
        <button type="submit" name="submit"  > Submit </button>
            
            
          
        </div>
        <button type="submit" class="form__button mx-auto">Submit</button>
      </div>     

    </div>

    
  </form>
</div>

<script language="JavaScript">
  Webcam.set({
    width: 490,
    height: 390,
    image_format: "jpeg",
    jpeg_quality: 100,
  });

  Webcam.attach("#my_camera");

      // TAKE A SNAPSHOT.
      take_snapshot = function (min,max) {
          Webcam.snap(function (data_uri) {

            let file_name= Math.floor(Math.random() * (max - min)) + min +".jpeg";	    	            

            downloadImage(file_name,data_uri)

            console.log("File = "+data_uri);

          });    	        
      }          

      // DOWNLOAD THE IMAGE.
      downloadImage = function (name, datauri) {

        var a = document.createElement('a'); 
          a.setAttribute('download', name);
          a.setAttribute('href', datauri);
          a.click();   
}
           
</script>

<script>


const options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0,
};

function success(pos) {
  const crd = pos.coords;

  console.log("Your current position is:");
  console.log(`Latitude : ${crd.latitude}`);
  console.log(`Longitude: ${crd.longitude}`);
  console.log(`More or less ${crd.accuracy} meters.`);
}

function error(err) {
  console.warn(`ERROR(${err.code}): ${err.message}`);
}

navigator.geolocation.getCurrentPosition(success, error, options);


        function getLocation() {
        	
    navigator.geolocation.getCurrentPosition(position =>{
      const { latitude, longitude } = position.coords;
      const url = `https://nominatim.openstreetmap.org/reverse?format=json&lat=${latitude}&lon=${longitude}`;
      fetch(url).then(res=> res.json()).then(data=>{
        console.table(data.address);
        
        console.table(data.address.postcode);
    //    document.querySelector('.myForm input[name ="latitude"]').value = data.address.postcode;
        const location = document.getElementById("locationInput");
        location.value = data.address.postcode;
      }).catch(()=>{
        console.log("error occured");
      });
    });
}
    </script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>




