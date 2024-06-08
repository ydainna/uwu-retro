class ank.battlefield.§\x18\x03\x01§
{
   function §\x18\x03\x01§()
   {
      this.initialize();
   }
   function initialize()
   {
      this["\x1e\x05\x1c"] = new Object();
      this["\x1d\r\n"] = new MovieClipLoader();
      this["\x1d\r\n"].addListener(this);
      this["\x1b\x1c\x1b"] = new Array();
   }
   function setAccessoriesRoot(§\x1a\x04\x06§)
   {
      this["\x1e\x07\x0e"] = _loc2_;
   }
   function addSprite(§\x18\x1c\x03§, §\x1a\x02\t§)
   {
      this["\x1e\x05\x1c"][_loc2_._target] = {mc:_loc2_,data:_loc3_};
      this.garbageCollector();
   }
   function setColors(§\x18\x1b\f§, §\x16\x1d\x07§, §\x16\x1d\b§, §\x16\x1d\t§)
   {
      var _loc6_ = this["\x1e\x05\x1c"][_loc2_._target].data;
      if(_loc3_ != -1)
      {
         _loc6_.color1 = _loc3_;
      }
      if(_loc4_ != -1)
      {
         _loc6_.color2 = _loc4_;
      }
      if(_loc5_ != -1)
      {
         _loc6_.color3 = _loc5_;
      }
   }
   function setAccessories(§\x18\x1b\f§, §\x15\x1b\x07§)
   {
      var _loc4_ = this["\x1e\x05\x1c"][_loc2_._target].data;
      if(_loc3_ != undefined)
      {
         _loc4_.accessories = _loc3_;
      }
   }
   function applyColor(§\x18\x1b\f§, §\x19\x11\n§, §\x18\x0f\x01§)
   {
      var _loc5_ = this.getSpriteData(_loc2_);
      if(_loc5_ != undefined)
      {
         var _loc6_ = !(_loc4_ && _loc5_.mount != undefined) ? _loc5_["color" + _loc3_] : _loc5_.mount["color" + _loc3_];
         if(_loc6_ != undefined && _loc6_ != -1)
         {
            var _loc7_ = (_loc6_ & 16711680) >> 16;
            var _loc8_ = (_loc6_ & 65280) >> 8;
            var _loc9_ = _loc6_ & 255;
            var _loc10_ = new Color(_loc2_);
            var _loc11_ = new Object();
            _loc11_ = {ra:"0",rb:_loc7_,ga:"0",gb:_loc8_,ba:"0",bb:_loc9_,aa:"100",ab:"0"};
            _loc10_.setTransform(_loc11_);
         }
      }
   }
   function §\x17\x15\x0e§(§\x1a\x1b\x1c§, §\x19\x03\x1b§)
   {
      loop0:
      switch(_loc2_)
      {
         case "10":
         case "11":
         case "9224":
         case "9225":
         case "9248":
         case "9249":
            switch(_loc3_)
            {
               case 1:
                  var _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 2;
                  break;
               default:
                  break;
               case 2:
                  _loc4_ = 1;
            }
            break;
         case "20":
         case "21":
         case "9226":
         case "9227":
         case "9250":
         case "9251":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "30":
         case "31":
         case "9228":
         case "9229":
         case "9252":
         case "9253":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 3;
                  break;
               case 2:
                  _loc4_ = 1;
                  break;
               case 3:
                  _loc4_ = 2;
            }
            break;
         case "40":
         case "41":
         case "9230":
         case "9231":
         case "9254":
         case "9255":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "50":
         case "51":
         case "9232":
         case "9233":
         case "9256":
         case "9257":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "60":
         case "9234":
         case "9258":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "61":
         case "9235":
         case "9259":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 1;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 2;
            }
            break;
         case "70":
         case "71":
         case "80":
         case "81":
         case "9235":
         case "9236":
         case "9260":
         case "9261":
         case "9237":
         case "9238":
         case "9262":
         case "9263":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "90":
         case "91":
         case "9239":
         case "9240":
         case "9264":
         case "9265":
            _loc4_ = _loc3_;
            break;
         case "100":
         case "9241":
         case "9266":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 3;
                  break;
               case 2:
                  _loc4_ = 2;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "101":
         case "9242":
         case "9267":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 1;
                  break;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 2;
            }
            break;
         case "110":
         case "111":
         case "9243":
         case "9244":
         case "9268":
         case "9269":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 2;
                  break loop0;
               case 2:
                  _loc4_ = 3;
                  break;
               case 3:
                  _loc4_ = 1;
            }
            break;
         case "120":
         case "121":
         case "8010":
         case "8011":
         case "1264":
         case "7030":
         case "7031":
         case "9245":
         case "9246":
         case "9247":
         case "9270":
         case "9271":
            switch(_loc3_)
            {
               case 1:
                  _loc4_ = 1;
                  break loop0;
               case 2:
                  _loc4_ = 3;
                  break loop0;
               case 3:
                  _loc4_ = 2;
            }
      }
      if(!_loc4_)
      {
         _loc4_ = -1;
      }
      return _loc4_;
   }
   function applyBottomColor(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = this["\x17\x15\x0e"](_loc3_["\x18\x02\x15"],3);
      if(_loc4_ == -1)
      {
         return undefined;
      }
      this.applyColor(_loc2_,_loc4_);
   }
   function applyBodyColor(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = this["\x17\x15\x0e"](_loc3_["\x18\x02\x15"],2);
      if(_loc4_ == -1)
      {
         return undefined;
      }
      this.applyColor(_loc2_,_loc4_);
   }
   function applyHeadColor(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = this["\x17\x15\x0e"](_loc3_["\x18\x02\x15"],1);
      if(_loc4_ == -1)
      {
         return undefined;
      }
      this.applyColor(_loc2_,_loc4_);
   }
   function applyAccessory(§\x18\x1b\f§, §\x15\x1b\x16§, §\x1b\x01\x16§, §\x18\x1c\x06§, §\x16\x0b\x18§)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = false;
      }
      var _loc7_ = this.getSpriteData(_loc2_);
      if(_loc7_ != undefined)
      {
         var _loc8_ = _loc7_.accessories[_loc3_].gfx;
         _loc2_.clip.removeMovieClip();
         if(_loc6_)
         {
            switch(_loc7_.direction)
            {
               case 3:
               case 4:
               case 7:
                  _loc2_._x = 0 - _loc2_._x;
            }
         }
         if(_loc8_ != undefined)
         {
            if(_loc5_ != undefined)
            {
               _loc5_.gotoAndStop(!(_loc8_.length == 0 || _loc8_ == "_") ? 2 : 1);
            }
            if(!ank.battlefield.Constants["\x1b\x17\x02"] || ank.battlefield.Constants["\x1b\x0b\x0f"] == "compact")
            {
               _loc2_.attachMovie(_loc8_,"clip",10);
               if(_loc7_.accessories[_loc3_].frame != undefined)
               {
                  _loc2_.clip.gotoAndStop(_loc4_ + _loc7_.accessories[_loc3_].frame);
               }
               else
               {
                  _loc2_.clip.gotoAndStop(_loc4_);
               }
            }
            else
            {
               var _loc9_ = _loc8_.split("_");
               if(_loc9_[0] == undefined || (_global.isNaN(Number(_loc9_[0])) || (_loc9_[1] == undefined || _global.isNaN(Number(_loc9_[1])))))
               {
                  return undefined;
               }
               var _loc10_ = _loc2_.createEmptyMovieClip("clip",10);
               if(_loc7_["\x1b\x02\f"] !== undefined)
               {
                  this["\x1b\x1c\x1b"][_loc10_] = _loc4_ + _loc7_["\x1b\x02\f"];
               }
               else
               {
                  this["\x1b\x1c\x1b"][_loc10_] = _loc4_;
               }
               this["\x1d\r\n"].loadClip(this["\x1e\x07\x0e"] + _loc9_.join("/") + ".swf",_loc10_);
            }
         }
      }
   }
   function applyAnim(§\x18\x1b\f§, §\x1a\x0f\x0f§)
   {
      var _loc4_ = this.getSpriteData(_loc2_);
      if(_loc4_ != undefined)
      {
         if(_loc4_["\x16\b\x18"])
         {
            _loc4_.mc["\x1a\x0f\x19"](_loc4_["\x16\x03\x17"]);
         }
         else
         {
            _loc4_.mc.setAnim(_loc3_);
         }
      }
   }
   function applyEnd(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      if(_loc3_ != undefined)
      {
         if(!_loc3_["\x16\b\x18"])
         {
            _loc3_.sequencer.onActionEnd();
         }
      }
   }
   function applySprite(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      switch(_loc3_.direction)
      {
         case 0:
         case 4:
            _loc2_.attachMovie(_loc3_["\x16\x03\x17"] + "S","clip",1);
            break;
         case 1:
         case 3:
            _loc2_.attachMovie(_loc3_["\x16\x03\x17"] + "R","clip",1);
            break;
         case 2:
            _loc2_.attachMovie(_loc3_["\x16\x03\x17"] + "F","clip",1);
            break;
         case 5:
         case 7:
            _loc2_.attachMovie(_loc3_["\x16\x03\x17"] + "L","clip",1);
            break;
         case 6:
            _loc2_.attachMovie(_loc3_["\x16\x03\x17"] + "B","clip",1);
      }
   }
   function registerCarried(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      _loc3_.mc["\x18\x1b\x0f"] = _loc2_;
   }
   function registerChevauchor(§\x18\x1b\f§)
   {
      var _loc3_ = this.getSpriteData(_loc2_);
      _loc3_.mc["\x18\x1b\x11"] = _loc2_;
      _loc3_.mc["\x1b\x14\x0e"]();
   }
   function getSpriteData(§\x18\x1b\f§)
   {
      var _loc3_ = _loc2_._target;
      for(var name in this["\x1e\x05\x1c"])
      {
         if(_loc3_.substring(0,name.length) == name)
         {
            if(_loc3_.charAt(name.length) == "/")
            {
               if(this["\x1e\x05\x1c"][name] != undefined)
               {
                  return this["\x1e\x05\x1c"][name].data;
               }
            }
         }
      }
   }
   function garbageCollector(§\x1b\x18\n§)
   {
      for(var o in this["\x1e\x05\x1c"])
      {
         if(this["\x1e\x05\x1c"][o].mc._target == undefined)
         {
            delete this["\x1e\x05\x1c"][o];
         }
      }
   }
   function recursiveGotoAndStop(§\x18\x1b\f§, §\x17\x12\x0f§)
   {
      _loc2_.stop();
      _loc2_.gotoAndStop(_loc3_);
      for(var i in _loc2_)
      {
         if(_loc2_[i] instanceof MovieClip)
         {
            this.recursiveGotoAndStop(_loc2_[i],_loc3_);
         }
      }
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      this.recursiveGotoAndStop(_loc2_,this["\x1b\x1c\x1b"][_loc2_]);
      delete this["\x1b\x1c\x1b"][_loc2_];
   }
}
