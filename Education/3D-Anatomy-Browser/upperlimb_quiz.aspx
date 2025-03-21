<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Anatomy Archive</title>
    <style>
      /* CSS styles here */
      body {
        margin: 0;
        font-family: "Montserrat", sans-serif;
        background-color: #303030;
        display: flex;
        height: 100vh;
      }

      main {
        display: flex;
        flex: 1;
      }

      .container {
        flex: 8; /* Take up 80% of the available space */
        position: relative; /* Ensure positioning context for absolutely positioned children */
      }

      #container3D {
        flex: 8; /* Take up 80% of the available space */
        width: 100%;
        height: 100%;
        background-color: #424242; /* Placeholder color for 3D content */
      }

      header {
        margin-top: 3em;
        text-align: center;
        color: white;
      }

      header h1 {
        font-size: 2em;
        font-weight: 900;
        text-align: center;

      }

      #home-button {
        position: absolute;
        bottom: 10px;
        left: 10px;
        background-color: #239b55;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        text-decoration: none; /* Remove underline for anchor element */
        z-index: 9999; /* Make sure it's on top of other elements */

      }

      #container3D canvas {
        width: 100vw !important;
        height: 100vh !important;
        position: absolute;
        top: 0;
        left: 0;
      }

      #loading-bar {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 20px;
        background-color: #364b91;
      }

      #loading-progress {
        height: 100%;
        background-color: #239b55;
        width: 0;
      }

      #model-select {
        position: absolute;
        top: calc(10px + 100px + 20px); /* Adjust to position below the logo */
        left: 10px; /* Align with the left side */
        z-index: 9999; /* Adjust the value as needed */
        font-size: 26px; /* Increase font size */
        font-family: "Arial", sans-serif; /* Set font family */
        width: 250px;
      }

      #loading-spinner {
        border: 4px solid rgba(0, 0, 0, 0.834);
        border-top: 4px solid #f0e8e8;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        animation: spin 1s linear infinite;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 9999; /* Make sure it's on top of other elements */
      }

      @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
      }

      /* CSS for logo */
      #logo {
        position: absolute;
        top: 10px; /* Adjust as needed */
        left: 60px; /* Adjust as needed */
        width: 120px; /* Adjust the width of the logo */
        height: auto; /* Maintain aspect ratio */
        z-index: 9999; /* Make sure it's on top of other elements */
      }

      #gui-container {
      position: absolute;
      top: calc(10px + 100px + 20px + 50px); /* Below the model-select */
      left: 10px; /* Adjust as needed */
      z-index: 9999; /* Ensure GUI is on top */
    }

    /* CSS styles for Dat.GUI */
    .dg {
      background-color: #222; /* Set background color */
      color: #fff; /* Set text color */
      border: 1px solid #444; /* Set border color */
      font-family: "Arial", sans-serif; /* Set font family */
    }

    .dg .cr {
      background-color: #333; /* Set color for controllers */
      border: 1px solid #555; /* Set border color for controllers */
    }

    .dg .c {
      color: #fff; /* Set text color for controllers */
    }

    .dg .main {
      color: #fff; /* Set text color for main title */
    }

    .dg .close-button {
      color: #fff; /* Set color for close button */
    }
        /* CSS for quiz */
        #quiz {
        flex: 1; /* Take up 20% of the available space */
        background-color: #adadad;
        padding: 20px;
        border-radius: 5px;
        top: 200px;
        box-shadow: 0 0 10px rgba(198, 222, 60, 0.2);
        z-index: 9999;
      }
      #quiz p {
  margin: 2px 0; /* Adjust the margin as needed to reduce spacing between answers */
}

        #question {
  margin-bottom: 20px;
  z-index: 9999;
}

        #options {
  display: grid;
  gap: 10px;
  grid-template-columns: repeat(1, 1fr);
  z-index: 9999;
}

        button {
  display: block;
  margin: 0 auto;
  padding: 10px 20px;
  background-color: #1919ff;
  color: #ffffff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
    z-index: 9999;
}

        button:hover {
  background-color: #f58300;
}

    </style>
  </head>
  <body>
    <header>
      <!-- Logo -->
      <img src="logo/EXAN logo.jpg" alt="Exan Logo Logo" id="logo">

      <!-- Title -->
      <!-- <h1>The Anatomy Archive</h1> -->

      <!-- Home Button -->
      <a id="home-button" href="https://vub.sharepoint.com/sites/3d-anatomy">Home</a>

    </header>

    <main>
        <div class="container">
            <!-- Container for 3D content -->
            <div id="container3D"></div>
        </div>
      <!-- Loading Bar -->
      <div id="loading-bar">
        <div id="loading-progress"></div>
      </div>

      <!-- Dropdown menu for selecting models -->
      
      <select id="model-select">
        <optgroup label="Choose a model">
        <option value="Upperlimb_diffuse_quiz">Diffuse lighting</option>
        </optgroup>

        <!-- Add more options for other models if needed -->
      </select>

      <div id="quiz">
        <h1>Quiz</h1>
        <div id="question"></div>
        <div id="options"></div>
        <!-- <button id="submit">Submit</button> -->
      </div>
    
      <script src="js/upperlimb_quiz.js"></script>
      
      <!-- Loading Spinner -->
      <div id="loading-spinner"></div>

      <!-- Container for GUI -->
      <div id="gui-container"></div>

    </main>

    <script type="module" src="js/main.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.7.7/dat.gui.min.js"></script>
  </body>
</html>
