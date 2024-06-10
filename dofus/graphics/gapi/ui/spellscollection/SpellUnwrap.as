class dofus.graphics.gapi.ui.spellscollection.SpellUnwrap extends ank.gapi.core.UIBasicComponent
{
   function SpellUnwrap()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x1a\x02\x06§)
   {
      if(_loc2_)
      {
         var _loc5_ = this._parent.api;
         this["\x1e\x05\x14"] = _loc4_;
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = this["\x1e\x05\x14"].params;
         this._ldrIcon.contentPath = this["\x1e\x05\x14"].iconFile;
         if(this._ldrIcon.loaded)
         {
            this._ldrIcon.content.applyColors();
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      Mouse.addListener(this);
      this._ldrIcon.addEventListener("complete",this);
      this["\x1d\x0e\x12"].onRelease = function()
      {
         this._parent.onClick();
      };
      this["\x1d\x0e\x12"].onRollOver = function()
      {
         this._parent.doOver();
      };
      this["\x1d\x0e\x12"].onRollOut = function()
      {
         this._parent.doOut();
      };
   }
   function declareOnEnterFrame(nEndFrame)
   {
      this.onEnterFrame = function()
      {
         this.initData();
         if(this._currentframe == nEndFrame)
         {
            delete this.onEnterFrame;
         }
      };
   }
   function initData()
   {
      var _loc2_ = this._parent.api;
      this["\x1c\x1b\x0f"].text = this["\x1e\x05\x14"].name;
      this["\x1d\x03\x18"].text = !this["\x1e\x05\x14"].isPassive ? _loc2_.lang.getText("ACTIVE") : _loc2_.lang.getText("PASSIVE");
   }
   function complete(oEvent)
   {
      var _loc3_ = this._parent.api;
      var _loc4_ = _loc2_.clip;
      _loc4_.applyColors();
   }
   function doOver()
   {
      if(this["\x1c\x07\b"])
      {
         return undefined;
      }
      this["\x1c\x07\b"] = true;
      this.onOver();
      this.declareOnEnterFrame(!dofus.Constants.TRIPLEFRAMERATE ? 7 : 20);
      this.gotoAndPlay(2);
   }
   function doOut()
   {
      if(!this["\x1c\x07\b"])
      {
         return undefined;
      }
      this["\x1c\x07\b"] = false;
      this.onOut();
      this.declareOnEnterFrame(!dofus.Constants.TRIPLEFRAMERATE ? 15 : 43);
      this.gotoAndPlay(!dofus.Constants.TRIPLEFRAMERATE ? 8 : 23);
   }
   function onOver()
   {
      this["\x17\x07\x19"]({type:"overItem",spell:this["\x1e\x05\x14"],isFromSpellUnwrap:true});
   }
   function onOut()
   {
      this["\x17\x07\x19"]({type:"outItem",spell:this["\x1e\x05\x14"],isFromSpellUnwrap:true});
   }
   function onClick()
   {
      this["\x17\x07\x19"]({type:"selectItem",spell:this["\x1e\x05\x14"],isFromSpellUnwrap:true});
   }
   function onMouseUp()
   {
      var _loc2_ = this.hitTest(_root._xmouse,_root._ymouse,true);
      if(!_loc2_)
      {
         this.doOut();
      }
   }
}
