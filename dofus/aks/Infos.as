class dofus.aks.Infos extends dofus.aks.Handler
{
   function Infos(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x1b\f§()
   {
      this.aks.send("IM");
   }
   function sendScreenInfo()
   {
      var _loc2_ = Stage.scaleMode;
      Stage.scaleMode = "noScale";
      switch(Stage.displayState)
      {
         case "normal":
            var _loc3_ = "0";
            break;
         case "fullscreen":
            _loc3_ = "1";
            break;
         default:
            _loc3_ = "2";
      }
      new org.flashdevelop.utils.FlashConnect.trace("[Infos] (sendScreenInfo) Ir" + Stage.width + ";" + Stage.height + ";" + _loc3_ + "," + Stage.displayState,"dofus.aks.Infos::sendScreenInfo","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Infos.as",59);
      this.aks.send("Ir" + Stage.width + ";" + Stage.height + ";" + _loc3_);
      Stage.scaleMode = _loc2_;
   }
   function §\x19\x18\x15§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
   }
   function §\x19\x18\x13§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.ui.getUIComponent("MapExplorer");
      if(_loc6_ != undefined)
      {
         _loc6_.select({coordinates:{x:_loc4_,y:_loc5_}});
      }
      if(_global.isNaN(_loc4_) && _global.isNaN(_loc5_))
      {
         this.api.kernel.GameManager.updateCompass(this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][1],false);
      }
      else
      {
         this.api.kernel.GameManager.updateCompass(_loc4_,_loc5_,true);
      }
   }
   function §\x19\x18\x14§(sExtraData)
   {
      var _loc3_ = new Array();
      if(_loc2_.length <= 0)
      {
         this.api.datacenter.Basics["\x16\x02\x0f"] = undefined;
         return undefined;
      }
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = Number(_loc6_[1]);
         var _loc9_ = Number(_loc6_[2]);
         var _loc10_ = Number(_loc6_[3]);
         var _loc11_ = Number(_loc6_[4]);
         var _loc12_ = String(_loc6_[5]);
         _loc3_.push({x:_loc7_,y:_loc8_,mapID:_loc9_,type:_loc10_,playerID:_loc11_,playerName:_loc12_});
         _loc5_ = _loc5_ + 1;
      }
      var _loc13_ = this.api.ui.getUIComponent("MapExplorer");
      if(_loc13_ != undefined)
      {
         _loc13_["\x19\x02\x0b"](_loc3_);
      }
      this.api.datacenter.Basics["\x16\x02\x0f"] = _loc3_;
   }
   function §\x19\x1a\b§(sExtraData)
   {
      var _loc3_ = new Array();
      var _loc4_ = _loc2_.charAt(0);
      var _loc5_ = _loc2_.substr(1).split("|");
      var _loc7_ = 0;
      while(_loc7_ < _loc5_.length)
      {
         var _loc8_ = _loc5_[_loc7_].split(";");
         var _loc9_ = String(_loc8_.shift());
         var _loc10_ = Number(_loc9_);
         var _loc11_ = _loc8_[0].split("~");
         switch(_loc4_)
         {
            case "0":
               var _loc6_ = "INFO_CHAT";
               if(!_global.isNaN(_loc10_))
               {
                  var _loc13_ = true;
                  switch(_loc10_)
                  {
                     case 21:
                     case 22:
                        var _loc14_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[1]);
                        _loc11_ = [_loc11_[0],_loc14_.name];
                        break;
                     case 17:
                        _loc11_ = [_loc11_[0],this.api.lang["\x17\x1a\x02"](_loc11_[1]).n];
                        break;
                     case 2:
                        _loc11_ = [this.api.lang["\x17\x1a\x02"](Number(_loc11_[0])).n];
                        break;
                     case 3:
                     case 212:
                        _loc11_ = [this.api.lang["\x18\x01\x07"](Number(_loc11_[0])).n];
                        break;
                     case 54:
                     case 55:
                     case 56:
                        _loc11_[0] = this.api.lang["\x17\x1d\x14"](_loc11_[0]);
                        break;
                     case 65:
                     case 66:
                     case 73:
                        var _loc15_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[1]);
                        var _loc16_ = new ank.utils.ExtendedString(_loc11_[0])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
                        _loc11_[0] = _loc16_;
                        _loc11_[2] = _loc15_.name;
                        break;
                     case 82:
                     case 83:
                        this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("INFOS_" + _loc10_,_loc11_),"ERROR_BOX");
                        break;
                     case 84:
                        break;
                     case 120:
                        if(dofus.Constants["\x1a\x10\x01"])
                        {
                           dofus["\x1a\x0f\x1a"].getInstance()["\x1a\x0f\f"]();
                           dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x05"]();
                        }
                        break;
                     case 123:
                        var _loc12_ = this.api.kernel.ChatManager["\x1a\x03\x19"](this.api.lang.getText("INFOS_" + _loc10_),_loc11_);
                        _loc13_ = false;
                        break;
                     case 150:
                        _loc6_ = "MESSAGE_CHAT";
                        var _loc17_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[0]);
                        var _loc18_ = new Array();
                        var _loc19_ = 3;
                        while(_loc19_ < _loc11_.length)
                        {
                           _loc18_.push(_loc11_[_loc19_]);
                           _loc19_ = _loc19_ + 1;
                        }
                        _loc11_ = [_loc17_.name,_loc11_[1],this.api.lang.getText("OBJECT_CHAT_" + _loc11_[2],_loc18_)];
                        break;
                     case 151:
                        _loc6_ = "WHISP_CHAT";
                        var _loc20_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[0]);
                        var _loc21_ = new Array();
                        var _loc22_ = 2;
                        while(_loc22_ < _loc11_.length)
                        {
                           _loc21_.push(_loc11_[_loc22_]);
                           _loc22_ = _loc22_ + 1;
                        }
                        _loc11_ = [_loc20_.name,this.api.lang.getText("OBJECT_CHAT_" + _loc11_[1],_loc21_)];
                        break;
                     case 8:
                        _loc12_ = this.api.lang.getText("INFOS_8",[new ank.utils.ExtendedString(_loc11_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]);
                        _loc13_ = false;
                        break;
                     case 45:
                        _loc12_ = this.api.lang.getText("INFOS_45",[new ank.utils.ExtendedString(_loc11_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]);
                        _loc13_ = false;
                        break;
                     case 220:
                     case 221:
                        var _loc23_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[0]);
                        _loc11_[0] = _loc23_.name;
                  }
                  if(_loc13_)
                  {
                     _loc12_ = this.api.lang.getText("INFOS_" + _loc10_,_loc11_);
                  }
               }
               else
               {
                  _loc12_ = this.api.lang.getText(_loc9_,_loc11_);
               }
               if(_loc12_ != undefined)
               {
                  _loc3_.push(_loc12_);
               }
               break;
            case "1":
               _loc6_ = "ERROR_CHAT";
               if(!_global.isNaN(_loc10_))
               {
                  var _loc25_ = _loc10_.toString(10);
                  switch(_loc10_)
                  {
                     case 16:
                        this.api.electron.makeNotification(_loc24_);
                        break;
                     case 6:
                     case 46:
                     case 49:
                        _loc11_ = [this.api.lang["\x17\x1a\x02"](_loc11_[0]).n];
                        break;
                     case 7:
                     case 264:
                        _loc11_ = [this.api.lang["\x18\x01\x07"](_loc11_[0]).n];
                        break;
                     case 89:
                        if(this.api.config.isStreaming)
                        {
                           _loc25_ = "89_MINICLIP";
                        }
                        if(dofus.kernel.FAST_SWITCHING_SERVER_REQUEST != undefined)
                        {
                           this.addToQueue({object:this.api.kernel,method:this.api.kernel["\x19\x17\n"]});
                        }
                        break;
                     case 43:
                     case 44:
                     case 60:
                        var _loc26_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc11_[0]);
                        _loc11_ = [_loc26_.name];
                        break;
                     case 266:
                        var _loc27_ = new dofus.datacenter.["\x1a\t\x01"](_loc11_[0],false);
                        _loc11_ = [_loc27_.description];
                        break;
                     case 267:
                        _loc11_ = [this.api.lang["\x18\x01\x07"](Number(_loc11_[0])).n];
                        break;
                     case 282:
                        _loc11_ = [(Number(_loc11_[0]) < 10 ? "0" : "") + _loc11_[0],(Number(_loc11_[1]) < 10 ? "0" : "") + _loc11_[1],_loc11_[2]];
                  }
                  var _loc24_ = this.api.lang.getText("ERROR_" + _loc25_,_loc11_);
               }
               else
               {
                  _loc24_ = this.api.lang.getText(_loc9_,_loc11_);
               }
               if(_loc24_ != undefined)
               {
                  _loc3_.push(_loc24_);
               }
               break;
            case "2":
               _loc6_ = "PVP_CHAT";
               if(!_global.isNaN(_loc10_))
               {
                  switch(_loc10_)
                  {
                     case 41:
                        _loc11_ = [this.api.lang["\x17\x1b\x0f"](_loc11_[0]).n,this.api.lang["\x17\x1b\x06"](_loc11_[1]).n];
                        break;
                     case 86:
                     case 87:
                     case 88:
                     case 89:
                     case 90:
                        _loc11_[0] = this.api.lang["\x17\x1b\x06"](_loc11_[0]).n;
                  }
                  var _loc28_ = this.api.lang.getText("PVP_" + _loc10_,_loc11_);
               }
               else
               {
                  _loc28_ = this.api.lang.getText(_loc9_,_loc11_);
               }
               if(_loc28_ != undefined)
               {
                  _loc3_.push(_loc28_);
               }
               break;
            case "3":
               _loc6_ = "GUILD_CHAT";
               switch(_loc10_)
               {
                  case 0:
                  case 1:
                  case 2:
                     _loc11_[0] = _loc8_.join(";");
                     break;
                  case 3:
                     var _loc29_ = Number(_loc11_[1]);
                     var _loc30_ = this.api.lang["\x17\x1b\x11"](_loc29_).x;
                     var _loc31_ = this.api.lang["\x17\x1b\x11"](_loc29_).y;
                     _loc11_[1] = this.api.kernel["\x18\x18\x18"]["\x17\x1b\x0b"](_loc29_) + " [" + _loc30_ + ", " + _loc31_ + "]";
               }
               var _loc32_ = this.api.lang.getText("GUILD_" + _loc10_,_loc11_);
               if(_loc32_ != undefined)
               {
                  _loc3_.push(_loc32_);
               }
               break;
         }
         _loc7_ = _loc7_ + 1;
      }
      var _loc33_ = _loc3_.join(" ");
      if(_loc33_ != "")
      {
         this.api.kernel.showMessage(undefined,_loc33_,_loc6_);
      }
   }
   function §\x19\x1b\x14§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc5_ > 0;
      var _loc7_ = (!_loc6_ ? " " : "+") + String(_loc5_);
      this.api.gfx["\x15\x1e\x16"](_loc4_,_loc7_,dofus.Constants.CLIP_POINT_TYPE_QUANTITY);
   }
   function §\x19\x1a\x19§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      if(_loc4_ != this.api.datacenter.Player.ID && this.api.gfx.spriteHandler["\x18\x0f\f"])
      {
         return undefined;
      }
      var _loc5_ = _loc3_[1].charAt(0) == "+";
      var _loc6_ = _loc3_[1].substr(1);
      var _loc7_ = _loc6_ != "" ? new dofus.datacenter.["\x18\x10\x15"](0,_loc6_,1) : undefined;
      if(!this.api.datacenter.Basics.isCraftLooping)
      {
         this.api.gfx["\x15\x1e\x15"](_loc4_,"craft",dofus.graphics.battlefield["\x17\x01\x1c"],[_loc5_,_loc7_],2000);
      }
   }
   function §\x19\x19\x1a§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      _global.clearInterval(this.api.datacenter.Basics.aks_infos_lifeRestoreInterval);
      if(!_global.isNaN(_loc3_))
      {
         var _loc4_ = this.api.datacenter.Player;
         this.api.datacenter.Basics.aks_infos_lifeRestoreInterval = _global.setInterval(_loc4_,"updateLP",_loc3_,1);
      }
   }
   function §\x19\x19\x19§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      _global.clearInterval(this.api.datacenter.Basics.aks_infos_lifeRestoreInterval);
      if(_loc3_ > 0)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("YOU_RESTORE_LIFE",[_loc3_]),"INFO_CHAT");
      }
   }
}
