<app>
  <div>
    <h1>APP TAG DEMO</h1>
    <!-- This button toggles the 2 values of State A. -->
    <button type="button" onclick = { toggleStateA }>BUTTON A</button>
    <br><br>
    <!-- This text field updates once user finishes typing. -->
    <input type="text" value="" placeholder="TextInputB" onchange={ updateStateB } ref="textB">
    <br><br>
    <!-- This text area updates live as user types. -->
    <div><textarea rows="3" placeholder="TextAreaC" onkeyup={ updateStateC }></textarea></div>
    <br>
    <!-- This section has radio buttons that allow users to choose 1 option ouf of 4. -->
    <div>
      <label><input type="radio" name=“language” value=”Eng” checked="checked" onclick={ updateStateD }>English</label>
      <label><input type="radio" name=“language” value=”Spa” onclick={ updateStateD }>Spanish</label>
      <label><input type="radio" name=“language” value=”JPN” onclick={ updateStateD }>Chinese</label>
      <label><input type="radio" name=“language” value=”GER” onclick={ updateStateD }>German</label>
    </div>
    <!-- This section records all changes made. -->
    <pre>
      this.stateA = { stateA ? "morning" : "night" }; <!-- 2 values of State A -->
      this.stateB = { stateB } <!-- What user types in TextInput B -->
      this.stateC = { stateC || "no text" }; <!-- What user types in TextArea C or no text-->
      this.stateD = { stateD.toUpperCase() }; <!-- Make all values uppercase -->

      This is an example short sentence.
    </pre>
  </div>

  <script>
    this.stateA = true; // select first value by default
    this.stateB = "default text"
    this.stateC = "";
    this.StateD = "ENG"; // select first value by default

    this.toggleStateA = function(event){
      this.stateA = !this.stateA // change value to the other one when button is clicked
      console.log("Button A clicked");
    };

    this.updateStateB = function(event){
      this.stateB = this.refs.textB.value; // update value to whatever is typed, textB is used as a reference to the DOM input node
    };

    this.updateStateC = function(event){
      this.stateC = event.target.value; // update value to whatever is being typed
    };

    this.updateStateD = function(event){
      this.stateD = event.target.value; // change value to the selected radio button's when it is clicked
    };
  </script>

  <style>
    h1 {
      font-family: Helvetica;
      letter-spacing: 5px;
      color: #AB55E4;
    }
    pre {
      border: 10px solid #988988;
      padding: 10px;
      border-radius: 20px;
      background-color: #B5DEEC;
    }
  </style>
</app>
