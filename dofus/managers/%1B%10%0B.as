class dofus.§\x18\x18\x0b§.§\x1b\x10\x0b§ extends ank.utils.§\x1a\t\t§
{
   static var §\x1b\x10\x14§ = 3;
   static var §\x1b\x10\x12§ = 19;
   static var §\x1b\x10\x0f§ = 5;
   static var §\x1b\x10\x10§ = 7;
   static var §\x1b\x10\x0e§ = 8;
   static var §\x1b\x10\f§ = 10;
   static var §\x1b\x10\r§ = 12;
   static var §\x1b\x10\x13§ = 31;
   static var §\x1b\x10\x11§ = 34;
   static var §\x18\b\x1a§ = 5;
   static var §\x1b\x11\x12§ = 1;
   static var §\x1b\x11\x11§ = 2;
   static var §\x1e\f\x10§ = null;
   var §\x1b\x1d\b§ = new Array();
   var §\x1d\x17\x04§ = 0;
   function §\x1b\x10\x0b§(oAPI)
   {
      super();
      dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      this.api = oAPI;
      this["\x1c\x01\t"] = new Array();
      this.addToQueue({object:this,method:this["\x18\x16\x17"]});
   }
   function §\x1a\x1e\x10§(§\x19\x0f\x1d§)
   {
      if(!this["\x17\x19\x0e"]())
      {
         this["\x1a\x17\x01"](_loc2_);
      }
      else if(!this["\x17\x18\x0e"](_loc2_))
      {
         var _loc3_ = dofus.graphics.gapi.controls.Helper["\x17\x16\x01"]();
         if(_loc3_ == null)
         {
            return undefined;
         }
         _loc3_["\x19\x1a\x16"]();
         this["\x16\x01\x02"](_loc2_);
         this["\x1a\x17\x01"](_loc2_);
      }
   }
   function §\x17\b\f§()
   {
      if(!this["\x18\x05\x0b"]())
      {
         return undefined;
      }
      var _loc2_ = this["\x18\x01\x1c"]();
      this["\x1a\x1d\x10"](_loc2_);
      var _loc3_ = dofus.graphics.gapi.controls.Helper["\x17\x16\x01"]();
      if(_loc3_ == null)
      {
         return undefined;
      }
      _loc3_["\x19\x1c\x02"]();
   }
   function §\x18\x05\x0b§()
   {
      return this["\x1c\x01\t"].length > 0;
   }
   function §\x1a\r\x1a§()
   {
      this["\x1c\x01\n"] = new Array();
      this["\x1a\x0f\x1c"]();
   }
   function §\x1a\x06\b§(§\x1a\x10\x1d§, §\x16\x01\x14§)
   {
      var _loc4_ = this.api.ui.getUIComponent(_loc2_);
      var _loc5_ = _loc3_[0];
      var _loc6_ = _loc4_[_loc5_];
      var _loc7_ = 1;
      while(_loc7_ < _loc3_.length)
      {
         _loc5_ = String(_loc3_[_loc7_]);
         if(_loc6_[_loc5_] == undefined)
         {
            break;
         }
         _loc6_ = _loc6_[_loc5_];
         _loc7_ = _loc7_ + 1;
      }
      if(_loc6_ == undefined)
      {
         return undefined;
      }
      var _loc8_ = _loc6_.getBounds();
      var _loc9_ = _loc8_.xMax - _loc8_.xMin;
      var _loc10_ = _loc8_.yMax - _loc8_.yMin;
      var _loc11_ = _loc9_ / 2 + _loc6_._x + _loc8_.xMin;
      var _loc12_ = _loc10_ / 2 + _loc6_._y + _loc8_.yMin;
      var _loc13_ = {x:_loc11_,y:_loc12_};
      _loc6_._parent.localToGlobal(_loc13_);
      _loc11_ = _loc13_.x;
      _loc12_ = _loc13_.y;
      var _loc14_ = Math.sqrt(Math.pow(_loc9_,2) + Math.pow(_loc10_,2)) / 2;
      this.api.ui.loadUIComponent("Indicator","Indicator" + this["\x1d\x17\x04"],{coordinates:[_loc11_,_loc12_],offset:_loc14_},{bAlwaysOnTop:true});
      this["\x1b\x1d\b"][this["\x1d\x17\x04"]] = _global.setInterval(this,"onIndicatorHide",dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x18\b\x1a"] * 1000,this["\x1d\x17\x04"]++);
   }
   function §\x1a\x06\x03§(§\x19\t\x14§, §\x19\x04\x11§, §\x19\x0b\x03§)
   {
      if(this.api.datacenter.Basics.aks_current_map_id == _loc2_ || _loc2_ == -1)
      {
         var _loc5_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_).mc;
         if(_loc5_ == undefined)
         {
            new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x1b\x10\x0b","\x1a\x06\x03","mcCell"),"dofus.managers.TipsManager::pointCell","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/TipsManager.as",238);
            return undefined;
         }
         var _loc6_ = {x:_loc5_._x,y:_loc5_._y};
         _loc5_._parent.localToGlobal(_loc6_);
         var _loc7_ = _loc6_.x;
         var _loc8_ = _loc6_.y;
         this.api.ui.loadUIComponent("Indicator","Indicator" + this["\x1d\x17\x04"],{coordinates:[_loc7_,_loc8_],offset:_loc4_,rotate:false},{bAlwaysOnTop:true});
         this["\x1b\x1d\b"][this["\x1d\x17\x04"]] = _global.setInterval(this,"onIndicatorHide",dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x18\b\x1a"] * 1000,this["\x1d\x17\x04"]++);
      }
      new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.InvalidOperationException(this,"\x1b\x10\x0b","\x1a\x06\x03","We are no more on the right map."),"dofus.managers.TipsManager::pointCell","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/TipsManager.as",258);
      return undefined;
   }
   function §\x1a\x06\r§(§\x19\t\x14§, §\x19\b\x01§)
   {
      if(this.api.datacenter.Basics.aks_current_map_id == _loc2_ || _loc2_ == -1)
      {
         var _loc4_ = this.api.gfx.spriteHandler.getSprites().getItems();
         for(var k in _loc4_)
         {
            if(_loc4_[k].gfxFile == dofus.Constants["\x16\x1c\x1a"] + _loc3_ + ".swf")
            {
               var _loc5_ = {x:_loc4_[k].mc._x,y:_loc4_[k].mc._y};
               _loc4_[k].localToGlobal(_loc5_);
               var _loc6_ = _loc5_.x;
               var _loc7_ = _loc5_.y;
               var _loc8_ = _loc4_[k].mc._height;
               this.api.ui.loadUIComponent("Indicator","Indicator" + this["\x1d\x17\x04"],{coordinates:[_loc6_,_loc7_],offset:_loc8_,rotate:false},{bAlwaysOnTop:true});
               this["\x1b\x1d\b"][this["\x1d\x17\x04"]] = _global.setInterval(this,"onIndicatorHide",dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x18\b\x1a"] * 1000,this["\x1d\x17\x04"]++);
            }
         }
      }
      new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.InvalidOperationException(this,"\x1b\x10\x0b","\x1a\x06\x03","We are no more on the right map."),"dofus.managers.TipsManager::pointSprite","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/TipsManager.as",298);
      return undefined;
   }
   function §\x1a\x06\t§(§\x19\t\x14§, §\x19\f\x06§)
   {
      if(this.api.datacenter.Basics.aks_current_map_id == _loc2_ || _loc2_ == -1)
      {
         var _loc4_ = this.api.gfx["\x18\x18\x15"]["\x17\x15\x02"]();
         for(var k in _loc4_)
         {
            if(_loc4_[k]["\x18\x13\x0e"] != undefined && (!_global.isNaN(_loc4_[k]["\x18\x13\x0e"]) && _loc4_[k]["\x18\x13\x0e"] > 0))
            {
               if(_loc4_[k]["\x18\x13\x0e"] == _loc3_)
               {
                  this["\x1a\x06\x03"](_loc2_,_loc4_[k].num,_loc4_[k].mcObject1._height);
               }
            }
            if(_loc4_[k]["\x18\x13\x12"] != undefined && (!_global.isNaN(_loc4_[k]["\x18\x13\x12"]) && _loc4_[k]["\x18\x13\x12"] > 0))
            {
               if(_loc4_[k]["\x18\x13\x12"] == _loc3_)
               {
                  this["\x1a\x06\x03"](_loc2_,_loc4_[k].num,_loc4_[k].mcObject2._height);
               }
            }
         }
      }
      new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.InvalidOperationException(this,"\x1b\x10\x0b","\x1a\x06\x03","We are no more on the right map."),"dofus.managers.TipsManager::pointPicto","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/TipsManager.as",329);
      return undefined;
   }
   function §\x18\x01\x1c§()
   {
      var _loc2_ = Number(this["\x1c\x01\t"].pop());
      return _loc2_;
   }
   function §\x1a\x1d\x10§(§\x19\x0f\x1d§)
   {
      var _loc3_ = this.api.kernel.OptionsManager.getOption("FloatingTipsCoord");
      var _loc4_ = this.api.ui.loadUIComponent("FloatingTips","FloatingTips",{tip:_loc2_,position:_loc3_},{bStayIfPresent:true,bAlwaysOnTop:true});
   }
   function §\x16\x01\x02§(§\x19\x0f\x1d§)
   {
      this["\x1c\x01\t"].push(_loc2_);
      this["\x1a\x0f\x1b"]();
   }
   function §\x17\x18\x0e§(§\x19\x0f\x1d§)
   {
      return this["\x1c\x01\n"][_loc2_] == true;
   }
   function §\x1a\x17\x01§(§\x19\x0f\x1d§, §\x16\n\x11§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = true;
      }
      if(this["\x1c\x01\n"][_loc2_] != _loc3_)
      {
         this["\x1c\x01\n"][_loc2_] = _loc3_;
         this["\x1a\x0f\x1c"]();
      }
   }
   function §\x17\x19\x0e§()
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         return false;
      }
      if(this.api.config["\x18\r\x14"])
      {
         return true;
      }
      return this.api.kernel.OptionsManager.getOption("DisplayingFreshTips");
   }
   function §\x1a\x17\n§(§\x16\n\x12§)
   {
      this.api.kernel.OptionsManager.setOption("DisplayingFreshTips",_loc2_);
   }
   function §\x18\x01\x1b§()
   {
      if(this["\x1e\x0b\x12"] == undefined)
      {
         this["\x1e\x0b\x12"] = SharedObject.getLocal(dofus.Constants["\x18\x03\t"]);
      }
      return this["\x1e\x0b\x12"];
   }
   function §\x18\x16\x17§()
   {
      if(this.api.config["\x18\r\x14"])
      {
         this["\x1c\x01\n"] = new Array();
      }
      else
      {
         var _loc2_ = this["\x18\x01\x1b"]();
         this["\x1c\x01\n"] = _loc2_.data.TIPSSTATES;
         if(this["\x1c\x01\n"] == undefined)
         {
            this["\x1c\x01\n"] = new Array();
            _loc2_.flush();
         }
      }
   }
   function §\x1a\x0f\x1c§()
   {
      if(!this.api.config["\x18\r\x14"])
      {
         var _loc2_ = this["\x18\x01\x1b"]();
         _loc2_.data.TIPSSTATES = this["\x1c\x01\n"];
         _loc2_.flush();
      }
   }
   function §\x1a\x0f\x1b§()
   {
      var _loc2_ = this["\x18\x01\x1b"]();
      _loc2_.data.TIPSLIST = this["\x1c\x01\t"];
      _loc2_.flush();
   }
   function §\x17\x19\f§()
   {
      if(this["\x1b\x1d\t"] != undefined)
      {
         return this["\x1b\x1d\t"];
      }
      var _loc2_ = this.api.lang["\x17\x1a\x0e"]();
      if(_loc2_ == undefined)
      {
         return new Array();
      }
      this["\x1b\x1d\t"] = new Array();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_].t == dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x1b\x11\x11"])
         {
            this["\x1b\x1d\t"]["GUI" + _loc2_[_loc3_].v] = _loc2_[_loc3_].d;
         }
         _loc3_ = _loc3_ + 1;
      }
      return this["\x1b\x1d\t"];
   }
   function §\x17\x1b\r§()
   {
      if(this["\x1b\x1d\x1a"] != undefined)
      {
         return this["\x1b\x1d\x1a"];
      }
      var _loc2_ = this.api.lang["\x17\x1a\x0e"]();
      if(_loc2_ == undefined)
      {
         return new Array();
      }
      this["\x1b\x1d\x1a"] = new Array();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_].t == dofus["\x18\x18\x0b"]["\x1b\x10\x0b"]["\x1b\x11\x12"])
         {
            var _loc4_ = _loc2_[_loc3_].v;
            var _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               if(this["\x1b\x1d\x1a"]["MAP" + _loc4_[_loc5_]] != undefined)
               {
                  this["\x1b\x1d\x1a"]["MAP" + _loc4_[_loc5_]] = this["\x1b\x1d\x1a"]["MAP" + _loc4_[_loc5_]] + "|" + _loc2_[_loc3_].d;
               }
               else
               {
                  this["\x1b\x1d\x1a"]["MAP" + _loc4_[_loc5_]] = _loc2_[_loc3_].d;
               }
               _loc5_ = _loc5_ + 1;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      return this["\x1b\x1d\x1a"];
   }
   function onIndicatorHide(§\x19\b\x15§)
   {
      _global.clearInterval(this["\x1b\x1d\b"][_loc2_]);
      this.api.ui.unloadUIComponent("Indicator" + _loc2_);
   }
   function §\x19\x1a\x14§(§\x19\t\x14§)
   {
      var _loc3_ = String(this["\x17\x1b\r"]()["MAP" + _loc2_]);
      if(_loc3_ != undefined && _loc3_.length > 0)
      {
         var _loc4_ = _loc3_.split("|");
         var _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_] != undefined && !_global.isNaN(_loc4_[_loc5_]))
            {
               this["\x1a\x1e\x10"](Number(_loc4_[_loc5_]));
            }
            _loc5_ = _loc5_ + 1;
         }
      }
   }
   function §\x19\x1a\x12§(§\x1b\x03\x04§)
   {
      var _loc3_ = this["\x17\x19\f"]()["GUI" + _loc2_];
      if(_loc3_ != undefined && !_global.isNaN(_loc3_))
      {
         this["\x1a\x1e\x10"](_loc3_);
      }
   }
   function §\x19\x19\x1b§(oEvent)
   {
      var _loc3_ = _loc2_.params.split(",");
      switch(_loc3_[0])
      {
         case "CellIndicator":
            var _loc4_ = Number(_loc3_[1]);
            var _loc5_ = Number(_loc3_[2]);
            var _loc6_ = Number(_loc3_[3]);
            this.addToQueue({object:this,method:this["\x1a\x06\x03"],params:[_loc4_,_loc5_,_loc6_]});
            break;
         case "UiIndicator":
            var _loc7_ = _loc3_[1];
            var _loc8_ = new Array();
            var _loc9_ = 2;
            while(_loc9_ < _loc3_.length)
            {
               _loc8_.push(_loc3_[_loc9_]);
               _loc9_ = _loc9_ + 1;
            }
            this.addToQueue({object:this,method:this["\x1a\x06\b"],params:[_loc7_,_loc8_]});
            break;
         case "SpriteIndicator":
            var _loc10_ = Number(_loc3_[1]);
            var _loc11_ = Number(_loc3_[2]);
            this.addToQueue({object:this,method:this["\x1a\x06\r"],params:[_loc10_,_loc11_]});
            break;
         case "PictoIndicator":
            var _loc12_ = Number(_loc3_[1]);
            var _loc13_ = Number(_loc3_[2]);
            this.addToQueue({object:this,method:this["\x1a\x06\t"],params:[_loc12_,_loc13_]});
            break;
         case "PointCompass":
            var _loc14_ = Number(_loc3_[1]);
            var _loc15_ = Number(_loc3_[2]);
            this.addToQueue({object:this.api.kernel.GameManager,method:this.api.kernel.GameManager.updateCompass,params:[_loc14_,_loc15_,true]});
            break;
         case "KnownledgeBase":
            var _loc16_ = Number(_loc3_[1]);
            this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:["KnownledgeBase","KnownledgeBase",{article:_loc16_}]});
      }
   }
}
