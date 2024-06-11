class dofus.graphics.gapi.§\x17\x01\x06§.SpriteViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpriteViewer";
   var §\x1a\x0b\x0b§ = 500;
   var §\x1b\x07\x0f§ = ["StaticF","StaticR","StaticL","WalkF","RunF","Anim2R","Anim2L"];
   var §\x1c\x03\x19§ = true;
   var §\x1e\x02\x05§ = 200;
   var §\x1c\x01\x1a§ = true;
   var §\x1c\f\x03§ = false;
   var §\x1c\x07\x01§ = false;
   var §\x1d\x1d\b§ = 0;
   var §\x1c\x03\x06§ = false;
   var §\x1c\x07\x12§ = true;
   function SpriteViewer()
   {
      super();
   }
   function §\n\x01§()
   {
      return this["\x1e\x05\x1b"];
   }
   function §\x1d\x10§(§\x19\x12\x10§)
   {
      if(_loc2_["\x18\x0f\x02"])
      {
         this["\x17\r\x02"] = false;
      }
      this["\x1e\x05\x1b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x0b\x01"]();
      }
      return this["\n\x01"]();
   }
   function §\t\x13§()
   {
      return this["\x1e\x05\x10"];
   }
   function §\x1d\n§(§\x19\x12\x10§)
   {
      if(this["\x18\t\x1c"])
      {
         this.removeSpriteListeners();
      }
      this["\x1e\x05\x10"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x15\x1e\x13"]();
      }
      return this["\t\x13"]();
   }
   function §\x1e\x19\x16§()
   {
      return this["\x1c\x03\x19"];
   }
   function §\x13\x01§(§\x16\x12\x1d§)
   {
      this["\x1c\x03\x19"] = _loc2_;
      this["\x1d\x10\x0f"].onEnterFrame = this["\x1d\x10\x10"].onEnterFrame = undefined;
      !this["\x1c\x03\x06"] ? this["\x1d\x10\x10"] : this["\x1d\x10\x0f"]._alpha = 100;
      !!this["\x1c\x03\x06"] ? this["\x1d\x10\x10"] : this["\x1d\x10\x0f"]._alpha = 0;
      return this["\x1e\x19\x16"]();
   }
   function §\x07\x10§()
   {
      return this["\x1c\x07\x12"];
   }
   function §\x1b\x0b§(§\x16\x12\x1d§)
   {
      this["\x1c\x07\x12"] = _loc2_;
      return this["\x07\x10"]();
   }
   function §\x0e\x05§()
   {
      return this["\x1e\x02\x05"];
   }
   function §\x1c§(§\x19\x10\x10§)
   {
      this["\x1e\x02\x05"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x0b\x01"]();
      }
      return this["\x0e\x05"]();
   }
   function §\x1e\x11\x1b§()
   {
      return this["\x1c\x01\x1a"];
   }
   function §\x0e\x12§(§\x16\x12\x1d§)
   {
      this["\x1c\x01\x1a"] = _loc2_;
      this["\x1d\f\x0b"]._visible = _loc2_;
      return this["\x1e\x11\x1b"]();
   }
   function §\x05\x07§()
   {
      return this["\x1c\x07\x01"];
   }
   function §\x19\x0f§(§\x16\x12\x1d§)
   {
      this["\x1c\x07\x01"] = _loc2_;
      return this["\x05\x07"]();
   }
   function §\t\x1d§()
   {
      return this["\x1b\x07\x0f"];
   }
   function §\x1d\x0f§(§\x15\x1b\x04§)
   {
      this["\x1b\x07\x0f"] = _loc2_;
      return this["\t\x1d"]();
   }
   function §\x07\x11§()
   {
      return this["\x1a\x0b\x0b"];
   }
   function §\x1b\f§(§\x19\x03\x01§)
   {
      this["\x1a\x0b\x0b"] = _loc2_;
      return this["\x07\x11"]();
   }
   function §\f\x1b§()
   {
      return this["\x1c\f\x03"];
   }
   function §\x03§(§\x16\b\b§)
   {
      this["\x1c\f\x03"] = _loc2_;
      return this["\f\x1b"]();
   }
   function get enableBackground()
   {
      return this._bEnableBackground;
   }
   function set enableBackground(§\x16\b\b§)
   {
      this._bEnableBackground = _loc2_;
      this.displayBackground(_loc2_);
   }
   function §\x1a\x0b\x01§()
   {
      if(this["\x1d\x17\b"] > 0)
      {
         _global.clearInterval(this["\x1d\x17\b"]);
      }
      if(this["\x1c\x07\x01"])
      {
         this.beginDisplay();
      }
      else
      {
         this["\x1d\x17\b"] = _global.setInterval(this,"beginDisplay",this["\x1a\x0b\x0b"]);
      }
   }
   function §\x17\x15\r§(§\x19\b\x14§)
   {
      return this["\x1e\x05\x1b"]["color" + _loc2_] != undefined ? this["\x1e\x05\x1b"]["color" + _loc2_] : -1;
   }
   function §\x1a\x15\x11§(§\x19\b\x14§, §\x19\x10\x10§)
   {
      this["\x1e\x05\x1b"]["color" + _loc2_] = _loc3_;
      this["\x1b\x16\t"]();
   }
   function setColors(§\x19\x12\t§)
   {
      this["\x1e\x05\x1b"].color1 = _loc2_.color1;
      this["\x1e\x05\x1b"].color2 = _loc2_.color2;
      this["\x1e\x05\x1b"].color3 = _loc2_.color3;
      if(this["\x1e\x05\x1b"]["\x18\x0f\x02"] && this["\x1e\x05\x1b"].mount["\x18\r\x02"])
      {
         this["\x1e\x05\x1b"].mount.customColor1 = _loc2_.color2;
         this["\x1e\x05\x1b"].mount.customColor2 = _loc2_.color3;
         this["\x1e\x05\x1b"].mount.customColor3 = _loc2_.color3;
      }
      this["\x1b\x16\t"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpriteViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x0b\x01"]});
   }
   function addListeners()
   {
      this._ldrSpriteA["\x16\x15\x06"] = false;
      this._ldrSpriteB["\x16\x15\x06"] = false;
      this._ldrSpriteA.addEventListener("initialization",this);
      this._ldrSpriteB.addEventListener("initialization",this);
      this["\x15\x1e\x13"]();
      this["\x1d\f\x0b"].onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function removeSpriteListeners()
   {
      if(this["\x1e\x05\x10"] == undefined)
      {
         return undefined;
      }
      if(this["\x1e\x05\x10"]["\x18\x0e\x14"](this.api))
      {
         this.api.datacenter.Player.removeEventListener("spriteDataChanged",this);
      }
      this["\x1e\x05\x10"].removeEventListener("gfxFileChanged",this);
      this["\x1e\x05\x10"].removeEventListener("accessoriesChanged",this);
   }
   function §\x15\x1e\x13§()
   {
      if(this["\x1e\x05\x10"] == undefined)
      {
         return undefined;
      }
      if(this["\x1e\x05\x10"]["\x18\x0e\x14"](this.api))
      {
         this.api.datacenter.Player.addEventListener("spriteDataChanged",this);
      }
      this["\x1e\x05\x10"].addEventListener("gfxFileChanged",this);
      this["\x1e\x05\x10"].addEventListener("accessoriesChanged",this);
   }
   function beginDisplay()
   {
      _global.clearInterval(this["\x1d\x17\b"]);
      this["\x1d\x17\b"] = 0;
      if(this["\x1e\x05\x1b"] == undefined)
      {
         return undefined;
      }
      if(this["\x1c\x03\x19"] && !this["\x1c\f\x03"])
      {
         var _loc2_ = !this["\x1c\x03\x06"] ? this._ldrSpriteB : this._ldrSpriteA;
         this["\x1c\x03\x06"] = !this["\x1c\x03\x06"];
         var _loc3_ = !this["\x1c\x03\x06"] ? this["\x1d\x10\x10"] : this["\x1d\x10\x0f"];
      }
      else if(this["\x1c\f\x03"])
      {
         _loc2_ = this._ldrSpriteA;
         this["\x1c\x03\x06"] = false;
      }
      else
      {
         _loc2_ = !this["\x1c\x03\x06"] ? this._ldrSpriteB : this._ldrSpriteA;
      }
      _loc2_.forceReload = true;
      _loc2_.content.removeMovieClip();
      var _loc4_ = _loc2_["\x18\x07\x0b"].createEmptyMovieClip("content_mc",1);
      this["\x1e\x05\x1b"].mc = _loc4_["\x16\x06\x16"](this["\x1e\x05\x1b"]["\x16\x1c\x16"],"sprite" + this["\x1e\x05\x1b"].id,1,[undefined,undefined,this["\x1e\x05\x1b"]]);
      _loc2_.content = this["\x1e\x05\x1b"].mc;
      this["\x1e\x05\x1b"].mc.addEventListener("onLoadInit",_loc2_);
   }
   function §\x16\x06\x13§(§\x19\b\x14§)
   {
      if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      var _loc3_ = this["\x1b\x07\x0f"][_loc2_];
      var _loc4_ = ank.battlefield.mc.Sprite["\x17\x16\x18"](_loc3_.charAt(_loc3_.length - 1));
      this["\x1e\x05\x1b"].direction = _loc4_;
      _loc3_ = _loc3_.substring(0,_loc3_.length - 1);
      this["\x1d\x10\x0f"].setAnim(_loc3_,true,true);
      this["\x1d\x10\x10"].setAnim(_loc3_,true,true);
   }
   function §\x16\x04\x16§()
   {
      if(this["\x1d\x10\x0f"] != undefined)
      {
         this["\x1d\x10\x0f"].forcedXScale = this["\x1d\x10\x0f"]._yscale = this["\x1e\x02\x05"];
      }
      if(this["\x1d\x10\x10"] != undefined)
      {
         this["\x1d\x10\x10"].forcedXScale = this["\x1d\x10\x10"]._yscale = this["\x1e\x02\x05"];
      }
   }
   function §\x1a\x05\x1b§(§\x19\x0e\x1c§)
   {
      if(_loc2_ == undefined || _global.isNaN(_loc2_))
      {
         _loc2_ = this["\x1d\x1d\b"];
      }
      this["\x1d\x1d\b"] = _loc2_;
      this["\x16\x06\x13"](this["\x1d\x1d\b"]);
      this["\x1d\x1d\b"]++;
      if(this["\x1d\x1d\b"] >= this["\x1b\x07\x0f"].length)
      {
         this["\x1d\x1d\b"] = 0;
      }
      this["\x16\x04\x16"]();
   }
   function §\x1b\x16\t§()
   {
      this["\x16\x06\x13"](this["\x1d\x1d\b"] - 1);
      this["\x16\x04\x16"]();
   }
   function displayBackground(bEnabled)
   {
      this["\x1d\b\n"]._visible = _loc2_;
   }
   function destroy()
   {
      _global.clearInterval(this["\x1d\x17\b"]);
      this["\x1d\x17\b"] = 0;
   }
   function initialization(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_ldrSpriteA":
            this["\x1d\x10\x0f"] = _loc0_ = _loc2_.clip;
            this._mcCurrentSprite = _loc0_;
            this["\x1d\x0e\b"] = this["\x1d\x10\x10"];
            break;
         case "_ldrSpriteB":
            this["\x1d\x10\x10"] = _loc0_ = _loc2_.clip;
            this._mcCurrentSprite = _loc0_;
            this["\x1d\x0e\b"] = this["\x1d\x10\x0f"];
      }
      this["\x16\x04\x16"]();
      if(this["\x1c\x03\x19"])
      {
         this["\x1d\x0e\b"]._alpha = 100;
         this._mcCurrentSprite._alpha = 0;
         this._mcCurrentSprite.mcOther = this["\x1d\x0e\b"];
         this._mcCurrentSprite.onEnterFrame = function()
         {
            this._alpha += 10;
            this.mcOther._alpha -= 30;
            if(this._alpha >= 100 && this.mcOther._alpha <= 0)
            {
               this._alpha = 100;
               this.mcOther._alpha = 0;
               this.onEnterFrame = undefined;
            }
         };
      }
      else
      {
         this._mcCurrentSprite._alpha = 100;
         if(this["\x1d\x0e\b"] != undefined)
         {
            this["\x1d\x0e\b"]._alpha = 0;
         }
      }
      this.addToQueue({object:this,method:this["\x1a\x05\x1b"],params:[0]});
   }
   function click(oEvent)
   {
      this["\x1a\x05\x1b"]();
   }
   function spriteDataChanged(oEvent)
   {
      var _loc3_ = _loc2_.value;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,_loc3_.gfxFile,undefined,5);
      _loc4_.color1 = _loc3_.color1;
      _loc4_.color2 = _loc3_.color2;
      _loc4_.color3 = _loc3_.color3;
      _loc4_.accessories = _loc3_.accessories;
      _loc4_.mount = _loc3_.mount;
      this["\x1b\x04\x1b"] = _loc3_;
      this["\x1b\x07\x06"] = _loc4_;
   }
   function gfxFileChanged(oEvent)
   {
      this["\x1e\x05\x1b"].gfxFile = _loc2_.value;
      this["\x1a\x0b\x01"]();
   }
   function accessoriesChanged(oEvent)
   {
      if(!this["\x1c\x07\x12"])
      {
         return undefined;
      }
      this["\x1e\x05\x1b"].accessories = _loc2_.value;
      this["\x1a\x0b\x01"]();
   }
}
