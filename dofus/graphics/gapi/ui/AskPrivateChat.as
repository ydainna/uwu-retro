class dofus.§\x18\x03\x10§.gapi.ui.AskPrivateChat extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskPrivateChat";
   function AskPrivateChat()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.AskPrivateChat.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = false;
   }
   function destroy()
   {
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = true;
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_["\x1e\x0f\x12"].maxChars = dofus.Constants["\x18\x1a\x15"];
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnAddFriend.label = this.api.lang.getText("ADD_TO_FRIENDS");
      _loc2_._btnSend.label = this.api.lang.getText("SEND");
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_._btnAddFriend.addEventListener("click",this);
      _loc2_._btnSend.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      Selection.setFocus(_loc2_["\x1e\x0f\x12"]._tText);
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.click({target:this._winBackground.content._btnSend});
         return false;
      }
      if(_loc2_ == "NEXTTURN")
      {
         return false;
      }
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnCancel":
            this["\x17\x07\x19"]({type:"cancel",params:this.params});
            this["\x1b\x13\x13"]();
            break;
         case "_btnSend":
            var _loc3_ = this._winBackground.content["\x1e\x0f\x12"].text;
            _loc3_ = new ank.utils.ExtendedString(_loc3_)["\x1a\r\n"](String.fromCharCode(13)," ");
            this["\x17\x07\x19"]({type:"send",message:_loc3_,params:this.params});
            this["\x1b\x13\x13"]();
            break;
         case "_btnAddFriend":
            this["\x17\x07\x19"]({type:"addfriend",params:this.params});
      }
   }
}
