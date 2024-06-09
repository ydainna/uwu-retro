class dofus.§\x18\x18\x0b§.§\x1b\x12\x01§ extends dofus.utils.ApiElement
{
   var §\x1c\x05\f§ = false;
   static var §\x1e\f\x10§ = null;
   function §\x1b\x12\x01§(oAPI)
   {
      super();
      dofus.managers.TutorialManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   function §\x01\x01§()
   {
      return this["\x1c\x05\f"];
   }
   function §\f\x1d§()
   {
      var _loc2_ = new String();
      for(var k in this["\x1e\x06\b"])
      {
         _loc2_ += k + ":" + this["\x1e\x06\b"][k] + "\n";
      }
      return _loc2_;
   }
   static function getInstance()
   {
      return dofus.managers.TutorialManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1e\x05\n"] = new ank.utils.["\x1a\x14\x02"]();
   }
   function clear()
   {
      this["\x1c\x05\f"] = false;
      ank.utils.Timer.removeTimer(this,"tutorial");
      this.api.gfx.spriteHandler.hideSprites(false,2);
      this.api.gfx.spriteHandler.hideSprites(false,3);
      this.api.gfx.spriteHandler.hideSprites(false,4);
      this.api.ui.getUIComponent("GameResult")._visible = true;
      this.api.ui.getUIComponent("GameResultLight")._visible = true;
      this["\x1e\x06\b"] = new Object();
   }
   function start(§\x1a\x02\x13§)
   {
      this["\x1c\x05\f"] = true;
      this["\x1e\x06\b"] = new Object();
      this["\x1e\x06\x03"] = _loc2_;
      var _loc3_ = _loc2_["\x17\x1e\x03"]();
      this["\x17\x0e\x07"](_loc3_);
      if(this["\x1e\x06\x03"].canCancel || this.api.datacenter.Player.isAuthorized)
      {
         this.api.ui.loadUIComponent("Tutorial","Tutorial");
      }
      this.api.ui.getUIComponent("GameResult")._visible = false;
      this.api.ui.getUIComponent("GameResultLight")._visible = false;
   }
   function cancel()
   {
      var _loc2_ = this["\x1e\x06\x03"]["\x17\x1e\x04"]();
      if(_loc2_ == undefined)
      {
         this["\x1b\x0f\f"](0);
      }
      else
      {
         this["\x17\x0e\x07"](_loc2_);
      }
   }
   function §\x1b\x0f\f§(§\x19\x03\x03§)
   {
      this.clear();
      var _loc3_ = this.api.datacenter.Player.data.cellNum;
      var _loc4_ = this.api.datacenter.Player.data.direction;
      this.api.network.Tutorial.end(_loc2_,_loc3_,_loc4_);
      this.api.ui.unloadUIComponent("Tutorial");
   }
   function §\x17\x12\t§()
   {
      this.clear();
      var _loc2_ = this.api.datacenter.Player.data.cellNum;
      var _loc3_ = this.api.datacenter.Player.data.direction;
      this.api.ui.unloadUIComponent("Tutorial");
   }
   function §\x17\x0e\x07§(§\x19\x12\x02§)
   {
      ank.utils.Timer.removeTimer(this,"tutorial");
      for(var i in _loc2_.params)
      {
         if(typeof _loc2_.params[i] == "string")
         {
            var _loc3_ = String(_loc2_.params[i]);
            if(_loc3_.substr(0,16) == "!LOCALIZEDSTRING" && _loc3_.substr(_loc3_.length - 1,1) == "!")
            {
               var _loc4_ = Number(_loc3_.substring(16,_loc3_.length - 1));
               if(!_global.isNaN(_loc4_))
               {
                  _loc2_.params[i] = this.api.lang["\x18\x02\x04"](_loc4_);
               }
            }
         }
         else if(typeof _loc2_.params[i] == "object")
         {
            for(var s in _loc2_.params[i])
            {
               if(typeof _loc2_.params[i][s] == "string")
               {
                  var _loc5_ = String(_loc2_.params[i][s]);
                  if(_loc5_.substr(0,16) == "!LOCALIZEDSTRING" && _loc5_.substr(_loc5_.length - 1,1) == "!")
                  {
                     var _loc6_ = Number(_loc5_.substring(16,_loc5_.length - 1));
                     if(!_global.isNaN(_loc6_))
                     {
                        _loc2_.params[i][s] = this.api.lang["\x18\x02\x04"](_loc6_);
                     }
                  }
               }
            }
         }
      }
      switch(_loc2_.type)
      {
         case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x0e"]:
            if(!(_loc2_ instanceof dofus.datacenter.["\x1b\x11\x1b"]))
            {
               ank.utils.Logger.err("[executeBloc] le type ne correspond pas");
               return undefined;
            }
            if(!_loc2_["\x18\x11\x18"])
            {
               delete this["\x1e\x03\x03"];
            }
            switch(_loc2_["\x15\x1c\b"])
            {
               case "VAR_ADD":
                  this["\x1e\x05\n"].addAction(126,false,this,this["\x16\x01\x07"],_loc2_.params);
                  break;
               case "VAR_SET":
                  this["\x1e\x05\n"].addAction(127,false,this,this["\x1a\x1a\x19"],_loc2_.params);
                  break;
               case "CHAT":
                  this["\x1e\x05\n"].addAction(128,false,this.api.kernel,this.api.kernel.showMessage,[undefined,_loc2_.params[0],_loc2_.params[1]]);
                  break;
               case "HIDE_NPC":
                  this.api.gfx.spriteHandler.hideSprites(_loc2_.params,2);
                  break;
               case "HIDE_MONSTER":
                  this.api.gfx.spriteHandler.hideSprites(_loc2_.params,3);
                  break;
               case "HIDE_OTHER_PLAYERS":
                  this.api.gfx.spriteHandler.hideSprites(_loc2_.params,4);
                  break;
               case "GFX_CLEAN_MAP":
                  this["\x1e\x05\n"].addAction(129,false,this.api.gfx,this.api.gfx["\x16\x1b\x14"],[undefined,true]);
                  break;
               case "GFX_SELECT":
                  this["\x1e\x05\n"].addAction(130,false,this.api.gfx,this.api.gfx.select,[_loc2_.params[0],_loc2_.params[1]]);
                  break;
               case "GFX_UNSELECT":
                  this["\x1e\x05\n"].addAction(131,false,this.api.gfx,this.api.gfx["\x1b\x13\x18"],[_loc2_.params[0],_loc2_.params[1]]);
                  break;
               case "GFX_ALPHA":
                  var _loc7_ = this["\x18\x01\t"](_loc2_.params[0]);
                  this["\x1e\x05\n"].addAction(132,false,this.api.gfx,this.api.gfx["\x1a\x1a\x02"],[_loc7_,_loc2_.params[1]]);
                  break;
               case "GFX_GRID":
                  if(_loc2_.params[0] == true)
                  {
                     this["\x1e\x05\n"].addAction(133,false,this.api.gfx,this.api.gfx["\x17\n\x04"],[false]);
                  }
                  else
                  {
                     this["\x1e\x05\n"].addAction(134,false,this.api.gfx,this.api.gfx["\x1a\f\x07"],[]);
                  }
                  break;
               case "GFX_ADD_INDICATOR":
                  var _loc8_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_.params[0]).mc;
                  if(_loc8_ == undefined)
                  {
                     ank.utils.Logger.err("[GFX_ADD_INDICATOR] la cellule n\'existe pas");
                     break;
                  }
                  var _loc9_ = {x:_loc8_._x,y:_loc8_._y};
                  _loc8_._parent.localToGlobal(_loc9_);
                  var _loc10_ = _loc9_.x;
                  var _loc11_ = _loc9_.y;
                  this["\x1e\x05\n"].addAction(135,false,this.api.ui,this.api.ui.unloadUIComponent,["Indicator"]);
                  this["\x1e\x05\n"].addAction(136,false,this.api.ui,this.api.ui.loadUIComponent,["Indicator","Indicator",{coordinates:[_loc10_,_loc11_],offset:_loc2_.params[1],rotate:false},{bAlwaysOnTop:true}]);
                  break;
               case "GFX_ADD_PLAYER_SPRITE":
                  var _loc12_ = this.api.datacenter.Player.data;
                  this["\x1e\x05\n"].addAction(137,false,this.api.gfx,this.api.gfx.addSprite,[_loc12_.id,_loc12_]);
                  break;
               case "GFX_ADD_SPRITE":
                  var _loc13_ = new dofus.datacenter.["\x1a\x05\t"](_loc2_.params[0],ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc2_.params[1] + ".swf",_loc2_.params[2],_loc2_.params[3],_loc2_.params[1]);
                  _loc13_.name = _loc2_.params[4] != undefined ? _loc2_.params[4] : "";
                  _loc13_.color1 = _loc2_.params[5] != undefined ? _loc2_.params[5] : -1;
                  _loc13_.color2 = _loc2_.params[6] != undefined ? _loc2_.params[6] : -1;
                  _loc13_.color3 = _loc2_.params[7] != undefined ? _loc2_.params[7] : -1;
                  this["\x1e\x05\n"].addAction(138,false,this.api.gfx,this.api.gfx.addSprite,[_loc13_.id,_loc13_]);
                  break;
               case "GFX_REMOVE_SPRITE":
                  this["\x1e\x05\n"].addAction(139,false,this.api.gfx,this.api.gfx["\x1a\f\x19"],[_loc2_.params[0],false]);
                  break;
               case "GFX_MOVE_SPRITE":
                  var _loc14_ = this["\x18\x01\t"](_loc2_.params[0]);
                  var _loc15_ = this.api.datacenter.Sprites.getItemAt(_loc14_);
                  var _loc16_ = ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,this.api.gfx["\x18\x18\x15"],_loc15_.cellNum,_loc2_.params[1],{bAllDirections:false,bIgnoreSprites:true,bCellNumOnly:true,bWithBeginCellNum:true});
                  if(_loc16_ != null)
                  {
                     this.api.gfx.spriteHandler["\x19\x01\n"](_loc15_.id,_loc16_,this["\x1e\x05\n"],false,undefined,false,false);
                  }
                  break;
               case "GFX_ADD_SPRITE_BUBBLE":
                  var _loc17_ = this["\x18\x01\t"](_loc2_.params[0]);
                  this["\x1e\x05\n"].addAction(140,true,this.api.gfx,this.api.gfx["\x1a\f\x1a"],[_loc17_],200);
                  this["\x1e\x05\n"].addAction(141,false,this.api.gfx,this.api.gfx["\x15\x1e\x10"],[_loc17_,_loc2_.params[1]]);
                  break;
               case "GFX_CLEAR_SPRITE_BUBBLES":
                  this["\x1e\x05\n"].addAction(142,false,this.api.gfx["\x1b\x0f\x12"],this.api.gfx["\x1b\x0f\x12"].clear,[]);
                  break;
               case "GFX_SPRITE_DIR":
                  var _loc18_ = this["\x18\x01\t"](_loc2_.params[0]);
                  this["\x1e\x05\n"].addAction(143,false,this.api.gfx,this.api.gfx["\x1a\x1a\x05"],[_loc18_,_loc2_.params[1]]);
                  break;
               case "GFX_SPRITE_POS":
                  var _loc19_ = this["\x18\x01\t"](_loc2_.params[0]);
                  this["\x1e\x05\n"].addAction(144,false,this.api.gfx,this.api.gfx["\x1a\x1a\t"],[_loc19_,_loc2_.params[1]]);
                  break;
               case "GFX_SPRITE_VISUALEFFECT":
                  var _loc20_ = this["\x18\x01\t"](_loc2_.params[0]);
                  var _loc21_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
                  _loc21_.file = dofus.Constants["\x1b\x06\x15"] + _loc2_.params[1] + ".swf";
                  _loc21_.level = !_global.isNaN(Number(_loc2_.params[3])) ? Number(_loc2_.params[3]) : 1;
                  _loc21_.bInFrontOfSprite = true;
                  this["\x1e\x05\n"].addAction(145,false,this.api.gfx,this.api.gfx["\x16\x01\b"],[_loc20_,_loc21_,_loc2_.params[2],_loc2_.params[4]]);
                  break;
               case "GFX_SPRITE_ANIM":
                  var _loc22_ = this["\x18\x01\t"](_loc2_.params[0]);
                  this["\x1e\x05\n"].addAction(146,false,this.api.gfx,this.api.gfx["\x1a\x1a\x03"],[_loc22_,_loc2_.params[1]]);
                  break;
               case "GFX_SPRITE_EXEC_FUNCTION":
                  var _loc23_ = this["\x18\x01\t"](_loc2_.params[0]);
                  var _loc24_ = this.api.datacenter.Sprites.getItemAt(_loc23_);
                  var _loc25_ = _loc24_[_loc2_.params[1]];
                  if(typeof _loc25_ != "function")
                  {
                     ank.utils.Logger.err("[GFX_SPRITE_EXEC_FUNCTION] la fonction n\'existe pas");
                     break;
                  }
                  this["\x1e\x05\n"].addAction(147,false,_loc24_,_loc25_,_loc2_.params[2]);
                  break;
               case "GFX_SPRITE_SET_PROPERTY":
                  var _loc26_ = this["\x18\x01\t"](_loc2_.params[0]);
                  var _loc27_ = this.api.datacenter.Sprites.getItemAt(_loc26_);
                  this["\x1e\x05\n"].addAction(148,false,this,this["\x1a\x18\x11"],[_loc27_,_loc2_.params[1],_loc2_.params[2]]);
                  break;
               case "GFX_DRAW_ZONE":
                  this["\x1e\x05\n"].addAction(149,false,this.api.gfx,this.api.gfx["\x17\n\x10"],_loc2_.params);
                  break;
               case "GFX_CLEAR_ALL_ZONES":
                  this["\x1e\x05\n"].addAction(150,false,this.api.gfx,this.api.gfx["\x16\x1b\x1a"],[]);
                  break;
               case "GFX_ADD_POINTER_SHAPE":
                  this["\x1e\x05\n"].addAction(151,false,this.api.gfx,this.api.gfx["\x15\x1e\x07"],_loc2_.params);
                  break;
               case "GFX_CLEAR_POINTER":
                  this["\x1e\x05\n"].addAction(152,false,this.api.gfx,this.api.gfx["\x16\x1c\x0b"],[]);
                  break;
               case "GFX_HIDE_POINTER":
                  this["\x1e\x05\n"].addAction(153,false,this.api.gfx,this.api.gfx["\x18\x06\x14"],[]);
                  break;
               case "GFX_DRAW_POINTER":
                  this["\x1e\x05\n"].addAction(154,false,this.api.gfx,this.api.gfx["\x17\n\x0b"],_loc2_.params);
                  break;
               case "GFX_OBJECT2_INTERACTIVE":
                  this["\x1e\x05\n"].addAction(155,false,this.api.gfx,this.api.gfx["\x1a\x18\x0f"],[_loc2_.params[0],_loc2_.params[1],1]);
                  break;
               case "GFX_OBJECT2_SETFRAME":
                  this["\x1e\x05\n"].addAction(170,false,this.api.gfx,this.api.gfx["\x1a\x18\x0e"],[_loc2_.params[0],_loc2_.params[1],1]);
                  break;
               case "INTERAC_SET":
                  this["\x1e\x05\n"].addAction(156,false,this.api.gfx,this.api.gfx["\x1a\x17\x06"],[ank.battlefield.Constants[_loc2_.params[0]]]);
                  break;
               case "INTERAC_SET_ONCELLS":
                  this["\x1e\x05\n"].addAction(157,false,this.api.gfx,this.api.gfx["\x1a\x17\b"],[_loc2_.params[0],ank.battlefield.Constants[_loc2_.params[1]]]);
                  break;
               case "UI_ADD_INDICATOR":
                  var _loc28_ = this.api.ui.getUIComponent(_loc2_.params[0]);
                  var _loc29_ = eval(_loc28_ + "." + _loc2_.params[1]);
                  var _loc30_ = _loc29_.getBounds();
                  var _loc31_ = _loc30_.xMax - _loc30_.xMin;
                  var _loc32_ = _loc30_.yMax - _loc30_.yMin;
                  var _loc33_ = _loc31_ / 2 + _loc29_._x + _loc30_.xMin;
                  var _loc34_ = _loc32_ / 2 + _loc29_._y + _loc30_.yMin;
                  var _loc35_ = {x:_loc33_,y:_loc34_};
                  _loc29_._parent.localToGlobal(_loc35_);
                  _loc33_ = _loc35_.x;
                  _loc34_ = _loc35_.y;
                  var _loc36_ = Math.sqrt(Math.pow(_loc31_,2) + Math.pow(_loc32_,2)) / 2;
                  this["\x1e\x05\n"].addAction(158,false,this.api.ui,this.api.ui.unloadUIComponent,["Indicator"]);
                  this["\x1e\x05\n"].addAction(159,false,this.api.ui,this.api.ui.loadUIComponent,["Indicator","Indicator",{coordinates:[_loc33_,_loc34_],offset:_loc36_},{bAlwaysOnTop:true}]);
                  break;
               case "UI_REMOVE_INDICATOR":
                  this["\x1e\x05\n"].addAction(160,false,this.api.ui,this.api.ui.unloadUIComponent,["Indicator"]);
                  break;
               case "UI_OPEN":
                  this["\x1e\x05\n"].addAction(161,false,this.api.ui,this.api.ui.loadUIComponent,[_loc2_.params[0],_loc2_.params[0],_loc2_.params[1],_loc2_.params[2]]);
                  break;
               case "UI_OPEN_AUTOHIDE":
                  this["\x1e\x05\n"].addAction(162,false,this.api.ui,this.api.ui["\x18\x16\x19"],[_loc2_.params[0],_loc2_.params[0],_loc2_.params[1],_loc2_.params[2]]);
                  break;
               case "UI_CLOSE":
                  this["\x1e\x05\n"].addAction(163,false,this.api.ui,this.api.ui.unloadUIComponent,[_loc2_.params[0]]);
                  break;
               case "UI_EXEC_FUNCTION":
                  var _loc37_ = this.api.ui.getUIComponent(_loc2_.params[0]);
                  var _loc38_ = _loc37_[_loc2_.params[1]];
                  if(typeof _loc38_ != "function")
                  {
                     ank.utils.Logger.err("[UI_EXEC_FUNCTION] la fonction n\'existe pas");
                     break;
                  }
                  this["\x1e\x05\n"].addAction(164,false,_loc37_,_loc38_,_loc2_.params[2]);
                  break;
               case "ADD_SPELL":
                  var _loc39_ = new dofus.datacenter.["\x1b\x06\x06"](_loc2_.params[0],_loc2_.params[1],_loc2_.params[2]);
                  this["\x1e\x05\n"].addAction(165,false,this.api.datacenter.Player,this.api.datacenter.Player["\x1b\x16\x06"],[_loc39_]);
                  break;
               case "SET_SPELLS":
                  this["\x1e\x05\n"].addAction(166,false,this.api.network.Spells,this.api.network.Spells["\x19\x19\x1c"],[_loc2_.params.join(";")]);
                  break;
               case "REMOVE_SPELL":
                  this["\x1e\x05\n"].addAction(167,false,this.api.datacenter.Player,this.api.datacenter.Player["\x1a\f\x18"],_loc2_.params);
                  break;
               case "END":
                  this["\x1e\x05\n"].addAction(168,false,this,this["\x1b\x0f\f"],_loc2_.params);
                  if(!this["\x1e\x05\n"].isPlaying())
                  {
                     this["\x1e\x05\n"].execute(true);
                  }
                  return undefined;
               default:
                  ank.utils.Logger.err("[executeBloc] Code action " + _loc2_["\x15\x1c\b"] + " inconnu");
                  return undefined;
            }
            this["\x1e\x05\n"].addAction(169,false,this,this["\x16\x15\r"],[_loc2_["\x19\x07\b"]]);
            if(!this["\x1e\x05\n"].isPlaying())
            {
               this["\x1e\x05\n"].execute(true);
            }
            break;
         case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x1d"]:
            this["\x1e\x03\x03"] = _loc2_;
            if(!(_loc2_ instanceof dofus.datacenter.["\x1b\x12\x03"]))
            {
               ank.utils.Logger.log("[executeBloc] le type ne correspond pas");
               return undefined;
            }
            ank.utils.Timer.removeTimer(this,"tutorial");
            if(_loc2_["\x1b\x10\x04"] != 0)
            {
               ank.utils.Timer.setTimer(this,"tutorial",this,this["\x19\x1e\x10"],_loc2_["\x1b\x10\x04"],[_loc2_]);
            }
            break;
         case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x15"]:
            if(!(_loc2_ instanceof dofus.datacenter.["\x1b\x11\x1d"]))
            {
               ank.utils.Logger.log("[executeBloc] le type ne correspond pas");
               return undefined;
            }
            var _loc40_ = this["\x17\x0e\x16"](_loc2_.left);
            var _loc41_ = this["\x17\x0e\x16"](_loc2_.right);
            var _loc42_ = false;
            switch(_loc2_.operator)
            {
               case "=":
                  _loc42_ = _loc40_ == _loc41_;
                  break;
               case "<":
                  _loc42_ = _loc40_ < _loc41_;
                  break;
               case ">":
                  _loc42_ = _loc40_ > _loc41_;
            }
            if(_loc42_)
            {
               this["\x1e\x05\n"].addAction(170,false,this,this["\x16\x15\r"],[_loc2_["\x19\x07\t"]]);
            }
            else
            {
               this["\x1e\x05\n"].addAction(171,false,this,this["\x16\x15\r"],[_loc2_["\x19\x07\x07"]]);
            }
            if(!this["\x1e\x05\n"].isPlaying())
            {
               this["\x1e\x05\n"].execute(true);
            }
            break;
         default:
            ank.utils.Logger.log("[executeBloc] mauvais type");
      }
   }
   function §\x16\x15\r§(§\x18\x1d\r§)
   {
      ank.utils.Timer.removeTimer(this,"tutorial");
      if(typeof _loc2_ == "object")
      {
         var _loc3_ = _loc2_[random(_loc2_.length)];
      }
      else
      {
         _loc3_ = _loc2_;
      }
      this.addToQueue({object:this,method:this["\x17\x0e\x07"],params:[this["\x1e\x06\x03"]["\x17\x14\x15"](_loc3_)]});
   }
   function §\x16\x15\f§()
   {
      var _loc2_ = this["\x1e\x03\x03"]["\x16\x17\x07"][dofus.datacenter.["\x1b\x12\x04"]["\x16\x17\b"]];
      if(_loc2_ != undefined)
      {
         this["\x16\x15\r"](_loc2_["\x19\x07\b"]);
      }
   }
   function §\x1a\x18\x11§(§\x19\x1e\x18§, §\x1b\x07\x13§, §\x19\x02\x17§)
   {
      if(_loc2_ == undefined)
      {
         ank.utils.Logger.err("[setObjectPropertyValue] l\'objet n\'existe pas");
         return undefined;
      }
      _loc2_[_loc3_] = _loc4_;
   }
   function §\x18\x01\t§(§\x18\x1c\x1a§)
   {
      if(typeof _loc2_ == "number")
      {
         return _loc2_ != 0 ? _loc2_ : this.api.datacenter.Player.ID;
      }
      if(typeof _loc2_ == "string")
      {
         return this.api.datacenter.["\x18\x18\x0e"].data[_loc2_.substr(1)]["\x1b\x07\r"];
      }
   }
   function §\x1a\x1a\x19§(§\x1b\f\x16§, §\x19\x10\x10§)
   {
      _loc2_ = this["\x17\x0e\x17"](_loc2_);
      this["\x1e\x06\b"][_loc2_] = _loc3_;
   }
   function §\x16\x01\x07§(§\x1b\f\x16§, §\x19\x10\x10§)
   {
      _loc2_ = this["\x17\x0e\x17"](_loc2_);
      if(this["\x1e\x06\b"][_loc2_] == undefined)
      {
         this["\x1e\x06\b"][_loc2_] = _loc3_;
      }
      else
      {
         this["\x1e\x06\b"][_loc2_] += _loc3_;
      }
   }
   function §\x17\x0e\x17§(§\x1b\f\x16§)
   {
      var _loc3_ = _loc2_.split("|");
      if(_loc3_.length != 0)
      {
         _loc2_ = _loc3_[0];
         var _loc4_ = 1;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ += "_" + this["\x1e\x06\b"][_loc3_[_loc4_]];
            _loc4_ = _loc4_ + 1;
         }
      }
      return _loc2_;
   }
   function §\x17\x0e\x16§(§\x19\x02\x18§)
   {
      if(typeof _loc2_ == "string")
      {
         return this["\x1e\x06\b"][this["\x17\x0e\x17"](_loc2_)];
      }
      return _loc2_;
   }
   function §\x19\x1e\x10§(§\x19\x12\x02§)
   {
      this["\x16\x15\r"](_loc2_["\x16\x17\x07"][dofus.datacenter.["\x1b\x12\x04"]["\x16\x17\t"]]["\x19\x07\b"]);
   }
   function §\x19\x1e\x0f§(oEvent)
   {
      var _loc3_ = _loc2_.code;
      var _loc4_ = _loc2_.params;
      var _loc5_ = this["\x1e\x03\x03"]["\x16\x17\x07"][_loc3_];
      if(_loc5_ != undefined)
      {
         switch(_loc5_.code)
         {
            case "CELL_RELEASE":
            case "CELL_OVER":
            case "CELL_OUT":
            case "SPRITE_RELEASE":
            case "SPELL_CONTAINER_SELECT":
            case "OBJECT_CONTAINER_SELECT":
               var _loc6_ = 0;
               while(_loc6_ < _loc5_.params.length)
               {
                  if(_loc4_[0] == _loc5_.params[_loc6_][0])
                  {
                     this["\x16\x15\r"](_loc5_["\x19\x07\b"][_loc6_] != undefined ? _loc5_["\x19\x07\b"][_loc6_] : _loc5_["\x19\x07\b"]);
                     return undefined;
                  }
                  _loc6_ = _loc6_ + 1;
               }
               break;
            case "OBJECT_RELEASE":
               var _loc7_ = 0;
               while(_loc7_ < _loc5_.params.length)
               {
                  if(_loc4_[0] == _loc5_.params[_loc7_][0] && _loc4_[1] == _loc5_.params[_loc7_][1])
                  {
                     this["\x16\x15\r"](_loc5_["\x19\x07\b"][_loc7_] != undefined ? _loc5_["\x19\x07\b"][_loc7_] : _loc5_["\x19\x07\b"]);
                     return undefined;
                  }
                  _loc7_ = _loc7_ + 1;
               }
               break;
            default:
               this["\x16\x15\r"](_loc5_["\x19\x07\b"]);
               return undefined;
         }
         this["\x16\x15\f"]();
      }
      else
      {
         this["\x16\x15\f"]();
      }
   }
}
