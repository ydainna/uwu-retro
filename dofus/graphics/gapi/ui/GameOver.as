class dofus.§\x18\x03\x10§.gapi.ui.GameOver extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameOver";
   function GameOver()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.GameOver.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\n"]});
      this.addToQueue({object:this,method:this["\x18\n\t"]});
   }
   function initTexts()
   {
      this["\x1c\x1e\x07"].text = this.api.lang.getText("REPLAY_WORD");
   }
   function addListeners()
   {
      var ref = this;
      this["\x1c\n\x15"].onRelease = function()
      {
         ref.api.kernel["\x16\x18\x1b"](true);
      };
   }
   function §\x18\t\n§()
   {
      this["\x1d\x05\x11"].contentPath = dofus.Constants["\x18\b\x14"] + "gameover.swf";
   }
   function §\x18\n\t§()
   {
      this["\x1d\r\x10"]._visible = Math.floor(Math.random() * 500) == 100;
      if(this["\x1d\r\x10"]._visible)
      {
         this["\x1d\r\x10"]._x = this["\x1d\x0e\x12"]._x;
         this["\x1d\r\x10"]._y = this["\x1d\x0e\x12"]._y;
      }
   }
   function click(oEvent)
   {
      this["\x16\x15\n"]();
   }
}
