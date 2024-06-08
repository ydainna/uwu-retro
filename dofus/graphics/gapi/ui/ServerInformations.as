if(!dofus.graphics.gapi.ui.ServerInformations)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.graphics.)
   {
      _global.dofus.graphics. = new Object();
   }
   if(!dofus.graphics.gapi)
   {
      _global.dofus.graphics.gapi = new Object();
   }
   if(!dofus.graphics.gapi.ui)
   {
      _global.dofus.graphics.gapi.ui = new Object();
   }
   dofus.graphics.gapi.ui.ServerInformations = function()
   {
      super();
   } extends dofus.graphics.gapi["\x17\x01\x0f"]["\x17\t\n"];
   var _loc1_ = dofus.graphics.gapi.ui.ServerInformations = function()
   {
      super();
   }.prototype;
   _loc1_["\x1c\f"] = function §\x1c\f§(§\x19\x0e\x06§)
   {
      this["\x1d\x1c\x17"] = _loc2_;
      this["\x1e\f\x11"] = _global.api.datacenter.Basics["\x16\x02\x12"].findFirstItem("id",_loc2_).item;
      return this["\b\x18"]();
   };
   _loc1_.init = function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ServerInformations.CLASS_NAME);
   };
   _loc1_.createChildren = function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   };
   _loc1_.addListeners = function addListeners()
   {
      this._mcOk.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this._mcBack.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this._btnMoreInfo.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this["\x1d\x06\x01"].addEventListener("error",this);
      this["\x1d\x06\x01"].addEventListener("initialization",this);
   };
   _loc1_["\x18\n\x14"] = function §\x18\n\x14§()
   {
      this["\x1d\x01\x06"].text = this.api.lang.getText("CHOOSEN_SERVER") + " :";
      this["\x1d\x02\t"].text = this.api.lang.getText("SERVER_STATUS");
      this["\x1c\x1c\x1c"].text = this.api.lang.getText("POPULATION");
      this["\x1c\x15\b"].text = this.api.lang.getText("COMMUNITY");
      this["\x1c\x19\x03"].text = this.api.lang.getText("OPENING_DATE");
      this["\x1d\x01\f"].text = this.api.lang.getText("SERVER_GAME_TYPE",[this.api.lang.getText("SERVER_GAME_TYPE_" + this["\x1e\f\x11"]["\x1b\x12\n"])]);
      if(this["\x1e\f\x11"]["\x18\x0e\x03"]())
      {
         this["\x1e\r\x15"].text = this.api.lang.getText("SERVER_RULES_" + this["\x1e\f\x11"]["\x1b\x12\n"]);
         this["\x1c\x1b\x02"].text = this.api.lang.getText("SHORTCUTS_DESCRIPTION");
         this["\x1c\b\x07"] = false;
      }
      else
      {
         this["\x1e\r\x15"].text = this["\x1e\f\x11"].description;
         this["\x1c\x1b\x02"].text = this.api.lang.getText("RULES_SHORTCUT");
         this["\x1c\b\x07"] = true;
      }
      this["\x1c\x1c\x07"].text = this.api.lang.getText("OK");
      this["\x1c\x13\x06"].text = this.api.lang.getText("BACK");
      this["\x1d\x06\x01"].contentPath = dofus.Constants["\x1a\x14\x17"] + this["\x1e\f\x11"].id + ".swf";
   };
   _loc1_["\x18\t\x14"] = function §\x18\t\x14§()
   {
      this["\x1d\x01\x07"].text = this["\x1e\f\x11"].label;
      this["\x1d\x02\n"].text = this["\x1e\f\x11"]["\x1b\t\x18"];
      this["\x1c\x1c\x1d"].text = this["\x1e\f\x11"]["\x1a\x06\x11"];
      this["\x1c\x15\n"].text = this["\x1e\f\x11"]["\x16\x1d\x1c"];
      this["\x1c\x19\x04"].text = this["\x1e\f\x11"]["\x17\x05\x04"];
   };
   _loc1_.click = function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_mcOk":
            this["\x17\x07\x19"]({type:"serverSelected",value:this["\x1d\x1c\x17"]});
            break;
         case "_mcBack":
            this["\x17\x07\x19"]({type:"canceled"});
            break;
         case "_btnMoreInfo":
            this["\x1c\b\x07"] = !this["\x1c\b\x07"];
            if(!this["\x1c\b\x07"])
            {
               this["\x1e\r\x15"].text = this.api.lang.getText("SERVER_RULES_" + this["\x1e\f\x11"]["\x17\x1e\x05"]());
               this["\x1c\x1b\x02"].text = this.api.lang.getText("SHORTCUTS_DESCRIPTION");
               break;
            }
            §§push(this["\x1e\r\x15"]);
            §§push("text");
            §§push(this["\x1e\f\x11"]);
            §§push("description");
         default:
            §§pop()[§§pop()] = §§pop()[§§pop()];
            this["\x1c\x1b\x02"].text = this.api.lang.getText("RULES_SHORTCUT");
      }
   };
   _loc1_.initialization = function initialization(oEvent)
   {
      var _loc3_ = _loc2_["\x03)"];
      _loc3_["\x02oEvent"] = _loc3_["*"] = 136;
   };
   _loc1_["{invalid_utf8=246}\x02iO{invalid_utf8=150}\x04"] = function §{invalid_utf8=246}\x02iO{invalid_utf8=150}\x04§(oEvent)
   {
      this["\x04\x01\b\x1a{invalid_utf8=150}\x02"]["\x05"] = eval("{invalid_utf8=150}\x02")["\x12{invalid_utf8=157}\x02"]["\x01"] + "{invalid_utf8=150}\x04";
   };
   _loc1_["\bH\b"]("\x04\x01\b&N{invalid_utf8=150}\x04",function()
   {
   }
   ,_loc1_["\b\tN{invalid_utf8=135}\x01"]);
   "\x1c{invalid_utf8=150}\x02"(_loc1_,null,1);
   dofus.graphics.gapi.ui.ServerInformations = function()
   {
      super();
   }["6\x02\"{invalid_utf8=142}\b"] = "\x1f";
   _loc1_["{invalid_utf8=150}\x04"] = false;
}
