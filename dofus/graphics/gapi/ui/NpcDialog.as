class dofus.§\x18\x03\x10§.gapi.ui.NpcDialog extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "NpcDialog";
   var §\x1c\x04\x06§ = true;
   function NpcDialog()
   {
      super();
   }
   function §\x14\x1a§(§\x19\n\x1a§)
   {
      this["\x1d\x1a\x11"] = _loc2_;
      return this["\x1e\x1c\x05"]();
   }
   function §\x19\f§(sName)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x14\x02§(§\x1a\x1b\x1a§)
   {
      this["\x1e\t\x1a"] = _loc2_;
      return this["\x1e\x1b\x01"]();
   }
   function §\x11\x17§(§\x19\x07\x1d§)
   {
      this["\x1d\x15\t"] = _loc2_;
      return this["\x1e\x17\x1c"]();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this["\x1b\x1c\x03"] = _loc2_;
      return this["\x1e\x16\x07"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.NpcDialog.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Dialog["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1a\x18\r"]});
      this.gapi["\x1b\x13\x12"]();
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
   }
   function §\x1a\x18\r§()
   {
      this["\x1d\x0e\x10"]._visible = false;
      this._ldrArtwork.addEventListener("initialization",this);
      this._ldrArtwork.addEventListener("complete",this);
      if(this["\x1d\x15\t"] != undefined && (!_global.isNaN(this["\x1d\x15\t"]) && this["\x1d\x15\t"] > 0))
      {
         this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this["\x1d\x15\t"] + ".swf";
      }
      else
      {
         this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this["\x1e\t\x1a"] + ".swf";
      }
      this._winBackgroundUp.title = this["\x1e\x0b\x06"];
   }
   function §\x1a\x18\x15§()
   {
      this["\x1a\x1d\f"](false);
   }
   function §\x1a\x1d\f§(bShow)
   {
      this._ldrArtwork._visible = _loc2_;
      this["\x1d\x0e\x10"]._visible = _loc2_;
      this._winBackground._visible = _loc2_;
      this._winBackgroundUp._visible = _loc2_;
      this._qvQuestionViewer._visible = _loc2_;
   }
   function §\x1a\x19\x03§(§\x1a\x01\x10§)
   {
      this["\x1e\x05\x02"] = _loc2_;
      if(this._qvQuestionViewer == undefined)
      {
         this.attachMovie("QuestionViewer","_qvQuestionViewer",10,{_x:this["\x1d\x0f\b"]._x,_y:this["\x1d\x0f\b"]._y,question:_loc2_,isFirstQuestion:this["\x1c\x04\x06"]});
         this._qvQuestionViewer.addEventListener("response",this);
         this._qvQuestionViewer.addEventListener("resize",this);
      }
      else
      {
         this._qvQuestionViewer.isFirstQuestion = this["\x1c\x04\x06"];
         this._qvQuestionViewer.question = _loc2_;
      }
      this["\x1a\x1d\f"](true);
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = this["\x1b\x1c\x03"][_loc3_];
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function §\x16\x1d\x01§()
   {
      this["\x16\x15\n"]();
   }
   function response(oEvent)
   {
      if(_loc2_.response.id == -1)
      {
         this.api.network.Dialog["\x18\x13\x1d"]();
      }
      else
      {
         this.api.network.Dialog.response(this["\x1e\x05\x02"].id,_loc2_.response.id);
         this["\x1c\x04\x06"] = false;
      }
   }
   function complete(oEvent)
   {
      var ref = this;
      this._ldrArtwork.content.stringCourseColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyColor(_loc2_,_loc3_);
      };
   }
   function resize(oEvent)
   {
      this._winBackground["\x1a\x19\x18"](undefined,_loc2_.target.height + (_loc2_.target._y - this._winBackground._y) + 12);
      this._winBackgroundUp["\x1a\x19\x18"](undefined,_loc2_.target.height + (_loc2_.target._y - this._winBackground._y) + 10);
   }
   function initialization(oEvent)
   {
      this["\x1d\x0e\x10"]._visible = true;
   }
}
