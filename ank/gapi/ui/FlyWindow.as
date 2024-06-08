class ank.gapi.ui.FlyWindow extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x03§
{
   static var §\x16\x1b\x10§ = "FlyWindow";
   function FlyWindow()
   {
      super();
   }
   function §\x1e\r§(sTitle)
   {
      this.addToQueue({object:this,method:function()
      {
         this._winBackground.title = sTitle;
      }});
      return this["\f\x02"]();
   }
   function §\f\x02§()
   {
      return this._winBackground.title;
   }
   function §\x11\b§(sContentPath)
   {
      this.addToQueue({object:this,method:function()
      {
         this._winBackground.contentPath = sContentPath;
      }});
      return this["\x1e\x16\x16"]();
   }
   function §\x1e\x16\x16§()
   {
      return this._winBackground.contentPath;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.ui.FlyWindow.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._winBackground.addEventListener("complete",this);
   }
   function complete(oEvent)
   {
      this.addToQueue({object:this,method:this["\x18\n\x16"]});
   }
}
