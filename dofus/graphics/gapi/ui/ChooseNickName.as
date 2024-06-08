class dofus.§\x18\x03\x10§.gapi.ui.ChooseNickName extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseNickName";
   var §\x18\r\x06§ = false;
   function ChooseNickName()
   {
      super();
   }
   function §\x19\r§(§\x16\x14\n§)
   {
      this["\x1c\x17\x14"]._visible = _loc2_;
      if(_loc2_)
      {
         this.state = 1;
      }
      else
      {
         this.state = 0;
      }
      return this.nickAlreadyUsed;
   }
   function §\x1d\x14§(§\x19\x0e\x1d§)
   {
      this["\x1d\x1d\r"] = _loc2_;
      switch(this["\x1d\x1d\r"])
      {
         case 0:
            this["\x1d\x0e\x01"]._visible = true;
            this["\x1c\x17\x14"]._visible = false;
            this["\x1e\x0e\x12"]._visible = true;
            this["\x1e\x0f\f"]._visible = true;
            this["\x1e\x0f\r"]._visible = false;
            this["\x1e\x0e\x12"].setFocus();
            this["\x1e\x0f\f"].text = this.api.lang.getText("CHOOSE_NICKNAME_HELP");
            break;
         case 1:
            this["\x1d\x0e\x01"]._visible = true;
            this["\x1c\x17\x14"]._visible = true;
            this["\x1e\x0e\x12"]._visible = true;
            this["\x1e\x0f\f"]._visible = true;
            this["\x1e\x0f\r"]._visible = false;
            this["\x1e\x0e\x12"].setFocus();
            this["\x1e\x0f\f"].text = this.api.lang.getText("CHOOSE_NICKNAME_HELP");
            break;
         case 2:
            this["\x1d\x0e\x01"]._visible = false;
            this["\x1c\x17\x14"]._visible = false;
            this["\x1e\x0e\x12"]._visible = false;
            this["\x1e\x0f\f"]._visible = false;
            this["\x1e\x0f\r"]._visible = true;
            this["\x1e\x0f\r"].text = this.api.lang.getText("DO_CHOOSE_NICKNAME",[this["\x1e\x0e\x12"].text]);
      }
      return this["\n\x06"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseNickName.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\n\x05"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function initTexts()
   {
      this._btnOk.label = this.api.lang.getText("OK");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this["\x1c\x17\x14"].text = this.api.lang.getText("NICKNAME_ALREADY_USED");
      this._lblTitle.text = this.api.lang.getText("CHOOSE_NICKNAME");
   }
   function addListeners()
   {
      this._btnOk.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this.api.kernel["\x1b\x0b\f"]["\x19\x1a\x17"]();
   }
   function §\x18\n\x05§()
   {
      this.state = 0;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnOk":
            var _loc3_ = this["\x1e\x0e\x12"].text;
            new org.flashdevelop.utils.FlashConnect.trace(this["\x1e\x0e\x12"].text,"dofus.graphics.gapi.ui.ChooseNickName::click","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/ChooseNickName.as",146);
            if(_loc3_.length > 2)
            {
               new org.flashdevelop.utils.FlashConnect.trace("oua","dofus.graphics.gapi.ui.ChooseNickName::click","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/ChooseNickName.as",149);
               if(_loc3_.toUpperCase() != this.api.datacenter.Player.login.toUpperCase())
               {
                  if(this["\x1d\x1d\r"] == 2)
                  {
                     this.api.network.Account.setNickName(this["\x1e\x0e\x12"].text);
                     return undefined;
                  }
                  this.state = 2;
                  return undefined;
               }
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NICKNAME_EQUALS_LOGIN"),"ERROR_BOX");
            }
            break;
         case "_btnCancel":
            if(this["\x1d\x1d\r"] == 2)
            {
               this.state = 0;
               return undefined;
            }
            this.api.network.disconnect(false,false);
            this.api.kernel.manualLogon();
            this["\x1b\x13\x13"]();
            break;
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" || _loc2_ == "CTRL_STATE_CHANGED_OFF")
      {
         new org.flashdevelop.utils.FlashConnect.trace(this,"dofus.graphics.gapi.ui.ChooseNickName::onShortcut","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/ChooseNickName.as",190);
         this.click({target:this._btnOk});
         return false;
      }
      return true;
   }
}
