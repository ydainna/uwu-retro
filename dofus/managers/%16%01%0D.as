if(!dofus.managers["\x16\x01\r"])
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.managers)
   {
      _global.dofus.managers = new Object();
   }
   dofus.managers["\x16\x01\r"] = function()
   {
      super();
      dofus.managers["\x16\x01\r"]["\x1e\f\x10"] = this;
   } extends dofusutils.["\x16\x04\x07"];
   var _loc1_ = dofus.managers["\x16\x01\r"] = function()
   {
      super();
      dofus.managers["\x16\x01\r"]["\x1e\f\x10"] = this;
   }.prototype;
   dofus.managers["\x16\x01\r"] = function()
   {
      super();
      dofus.managers["\x16\x01\r"]["\x1e\f\x10"] = this;
   }.getInstance = function §\x17\x19\t§()
   {
      return dofus.managers["\x16\x01\r"]["\x1e\f\x10"];
   };
   _loc1_["\x1e\x1d\x0b"] = function §\x1e\x1d\x0b§()
   {
      return this["\x1c\x03\x1c"] != undefined && this["\x1c\x03\x1c"];
   };
   _loc1_.__get__pendingModReportAppendCommands = function get pendingModReportAppendCommands()
   {
      return this._aPendingModReportAppendCommands;
   };
   _loc1_.getBatchNodeByKey = function getBatchNodeByKey(§\x19\x03\x14§)
   {
      if(this._eoHotKeysBatchNodes == undefined || _loc2_ == undefined)
      {
         return undefined;
      }
      return XMLNode(this._eoHotKeysBatchNodes.getItemAt(_loc2_));
   };
   _loc1_.executeHotKeyBatch = function executeHotKeyBatch(§\x1b\x06\x1b§)
   {
      if(!Key.isDown(Key.getCode()))
      {
         return false;
      }
      var _loc3_ = Key.getAscii();
      var _loc4_ = this.getBatchNodeByKey(_loc3_);
      if(_loc4_ == undefined)
      {
         return false;
      }
      var _loc5_ = this.api.datacenter.["\x1b\x07\x0e"].getItems();
      var _loc6_ = false;
      for(var a in _loc5_)
      {
         var _loc7_ = _loc5_[a];
         if(_loc7_.name.toUpperCase() == this.api.datacenter.Player.Name.toUpperCase())
         {
            this["\x19\x02\x1c"] = _loc7_;
         }
         if(_loc7_.name.toUpperCase() == _loc2_.toUpperCase())
         {
            this["\x1a\x05\x14"] = _loc7_;
            _loc6_ = true;
            break;
         }
      }
      if(!_loc6_)
      {
         this["\x1a\x05\x14"] = null;
      }
      if(_loc2_ != undefined)
      {
         this.playerName = _loc2_;
      }
      var _loc8_ = _loc4_.cloneNode(true);
      this.api.kernel.showMessage(undefined,"Batch on HotKey \"" + String.fromCharCode(_loc3_) + "\" executed for : " + _loc2_,"COMMANDS_CHAT");
      this.batch(_loc8_);
      return true;
   };
   _loc1_.initialize = function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1d\x1e\x19"] = 0;
      this["\x18\x17\x01"]();
   };
   _loc1_.refreshVisually = function refreshVisually()
   {
      var _loc2_ = !this["\x1c\x07\x15"] ? this.xml : this.xmlRightClick;
      var _loc3_ = _loc2_.firstChild.firstChild;
      this["\x17\x02\x07"](_loc3_,this["\x1c\x07\x15"]);
   };
   _loc1_["\x1b\x15\x1d"] = function §\x1b\x15\x1d§(§\x19\x03\x14§, §\x19\t\x05§)
   {
      var _loc4_ = this.api.ui["\x17\x03\x1b"];
      if(_loc4_["\x1a\x0b\x1c"] == undefined || (_loc4_["\x1a\x0b\x1c"] || !_loc4_["\x16\x01\x0e"]))
      {
         return false;
      }
      if(_loc2_ <= 0)
      {
         switch(_loc3_)
         {
            case 38:
               _loc4_["\x1a\x13\x06"]();
               break;
            case 40:
               _loc4_["\x1a\x13\x04"]();
         }
         return true;
      }
      switch(_loc2_)
      {
         case 8:
            if(this["\x1e\b\x17"].length > 0)
            {
               this["\x1e\b\x17"] = this["\x1e\b\x17"].substring(0,this["\x1e\b\x17"].length - 1);
            }
            if(this["\x1d\x1c\x0e"] != undefined)
            {
               _global.clearTimeout(this["\x1d\x1c\x0e"]);
            }
            this["\x1d\x1c\x0e"] = _global.setTimeout(this,"refreshVisually",dofus.managers["\x16\x01\r"]["\x17\x06\x17"]);
            return true;
         case 127:
         case 27:
            if(this["\x1e\b\x17"].length == 0)
            {
               _loc4_["\x1a\f\x15"]();
               return true;
            }
            this["\x1e\b\x17"] = "";
            if(this["\x1d\x1c\x0e"] != undefined)
            {
               _global.clearTimeout(this["\x1d\x1c\x0e"]);
            }
            this["\x1d\x1c\x0e"] = _global.setTimeout(this,"refreshVisually",dofus.managers["\x16\x01\r"]["\x17\x06\x17"]);
            return true;
            break;
         case 13:
            if(!_loc4_["\x17\x0e\t"]())
            {
               _loc4_["\x1a\x12\x1b"]();
            }
            return true;
         default:
            var _loc5_ = String.fromCharCode(_loc2_);
            this["\x1e\b\x17"] += _loc5_;
            if(this["\x1d\x1c\x0e"] != undefined)
            {
               _global.clearTimeout(this["\x1d\x1c\x0e"]);
            }
            this["\x1d\x1c\x0e"] = _global.setTimeout(this,"refreshVisually",dofus.managers["\x16\x01\r"]["\x17\x06\x17"]);
            return true;
      }
   };
   _loc1_["\x18\x17\x01"] = function §\x18\x17\x01§(bShow)
   {
      this["\x18\x16\x1d"](_loc2_);
      this["\x18\x16\x11"](false);
   };
   _loc1_["\x18\x16\x1d"] = function §\x18\x16\x1d§(bShow)
   {
      var _loc2_ = new XML();
      _loc2_["\x1a\x03\x12"] = this;
      _loc2_.onLoad = function(bSuccess)
      {
         if(_loc2_)
         {
            this["\x1a\x03\x12"].xml = this;
            this["\x1a\x03\x12"]["\x18\n\x12"](this.firstChild.firstChild);
         }
         else
         {
            this["\x1a\x03\x12"].xml = undefined;
         }
         if(bShow)
         {
            var _loc3_ = this["\x1a\x03\x12"]["\x17\x13\x17"](undefined,false);
            _loc3_.show(_root._xmouse,_root._ymouse,true);
         }
      };
      _loc2_.ignoreWhite = true;
      if(!dofus.Eelectron.getUserDataTextFileXMLContent(_loc2_,dofus.Constants["\x1b\x19\x1d"]))
      {
         _loc2_.load(dofus.Constants["\x1b\x19\x1d"]);
      }
   };
   _loc1_["\x18\x16\x11"] = function §\x18\x16\x11§(bShow)
   {
      var _loc2_ = new XML();
      _loc2_["\x1a\x03\x12"] = this;
      _loc2_.onLoad = function(bSuccess)
      {
         if(_loc2_)
         {
            this["\x1a\x03\x12"].xmlRightClick = this;
         }
         else
         {
            this["\x1a\x03\x12"].xmlRightClick = undefined;
         }
         if(bShow)
         {
            var _loc3_ = this["\x1a\x03\x12"]["\x17\x13\x17"](undefined,true);
            _loc3_.show(_root._xmouse,_root._ymouse,true);
         }
      };
      _loc2_.ignoreWhite = true;
      if(!dofus.Eelectron.getUserDataTextFileXMLContent(_loc2_,dofus.Constants["\x1b\x1a\x01"]))
      {
         _loc2_.load(dofus.Constants["\x1b\x1a\x01"]);
      }
   };
   _loc1_["\x17\x13\x17"] = function §\x17\x13\x17§(§\x1b\x06\x1b§, §\x16\x11\t§)
   {
      this["\x1c\x07\x15"] = _loc3_;
      Selection.setFocus(null);
      this._aPendingModReportAppendCommands = new Array();
      var _loc4_ = this.api.datacenter.["\x1b\x07\x0e"].getItems();
      var _loc5_ = false;
      loop0:
      for(var a in _loc4_)
      {
         var _loc6_ = _loc4_[a];
         if(_loc6_.name.toUpperCase() == this.api.datacenter.Player.Name.toUpperCase())
         {
            this["\x19\x02\x1c"] = _loc6_;
         }
         if(_loc6_.name.toUpperCase() != _loc2_.toUpperCase())
         {
            continue;
         }
         this["\x1a\x05\x14"] = _loc6_;
         _loc5_ = true;
         while(true)
         {
            if(§§pop() == null)
            {
               break loop0;
            }
         }
      }
      if(!_loc5_)
      {
         this["\x1a\x05\x14"] = null;
      }
      if(_loc2_ != undefined)
      {
         this.playerName = _loc2_;
      }
      var _loc7_ = !_loc3_ ? this.xml : this.xmlRightClick;
      if(_loc7_ != undefined)
      {
         var _loc8_ = this["\x17\x02\x19"](_loc7_.firstChild.firstChild,_loc3_);
      }
      else
      {
         _loc8_ = this.api.ui["\x17\x02\x19"]();
         _loc8_["\x15\x1e\x18"]("XML not found");
         _loc8_["\x15\x1d\x12"]("Reload XML",this,!_loc3_ ? this["\x18\x16\x1d"] : this["\x18\x16\x11"],[true]);
      }
      return _loc8_;
   };
   _loc1_["\x17\x13\x0e"] = function §\x17\x13\x0e§()
   {
      var _loc2_ = new ank.utils.ExtendedDate();
      return _loc2_.getFullYear() + "/" + _loc2_.getMonthPadded() + "/" + _loc2_.getDatePadded();
   };
   _loc1_["\x17\x13\x10"] = function §\x17\x13\x10§()
   {
      var _loc2_ = new ank.utils.ExtendedDate();
      return _loc2_.getHoursPadded() + ":" + _loc2_.getMinutesPadded() + ":" + _loc2_.getSecondsPadded();
   };
   _loc1_.generatePreparedReplaceVars = function generatePreparedReplaceVars()
   {
      var _loc2_ = new Array();
      _loc2_[0] = this["\x17\x13\x0e"]();
      _loc2_[1] = this["\x17\x13\x10"]();
      _loc2_[2] = this.api.electron.getCurrentDate();
      _loc2_[3] = this.api.electron.getYesterdayDate();
      this._aPreparedReplaceVars = _loc2_;
   };
   _loc1_["\x17\x02\x1a"] = function §\x17\x02\x1a§(§\x19\n\x1d§, §\x16\x11\t§)
   {
      if(this["\x1e\b\x17"] == undefined || this["\x1e\b\x17"].length == 0)
      {
         return this["\x17\x02\x19"](_loc2_,_loc3_);
      }
      var _loc4_ = this.api.ui["\x17\x02\x19"](undefined,true);
      this.generatePreparedReplaceVars();
      _loc4_["\x15\x1e\x18"]("Search : " + this["\x1e\b\x17"]);
      if(this["\x1e\b\x17"].length < 2)
      {
         return _loc4_;
      }
      var sSearch = this["\x1e\b\x17"].toLowerCase();
      var _loc5_ = function(§\x1b\x02\x10§)
      {
         var _loc3_ = _loc2_ != undefined && _loc2_["\x1a\x0b\x15"]().toLowerCase().indexOf(sSearch) != -1;
         return _loc3_;
      };
      var _loc6_ = new Array();
      var _loc7_ = new Array();
      var _loc8_ = 0;
      while(_loc2_ != null && _loc2_ != undefined)
      {
         var _loc9_ = true;
         switch(_loc2_.attributes.type)
         {
            case "menu":
               if(_loc5_.call(this,_loc2_.attributes.label))
               {
                  var _loc10_ = this.replaceLabel(_loc2_.attributes.label);
                  _loc6_.push([_loc10_ + " >>",this,this["\x17\x02\x06"],[_loc2_.firstChild,_loc3_]]);
               }
               break;
            case "menuDebug":
               if(dofus.Constants.DEBUG)
               {
                  if(_loc5_.call(this,_loc2_.attributes.label))
                  {
                     var _loc11_ = this.replaceLabel(_loc2_.attributes.label);
                     _loc6_.push([_loc11_ + " >>",this,this["\x17\x02\x06"],[_loc2_.firstChild,_loc3_]]);
                  }
               }
               break;
            case "loadXML":
               if(_loc5_.call(this,_loc2_.attributes.label))
               {
                  var _loc12_ = this.replaceLabel(_loc2_.attributes.label);
                  _loc7_.push([_loc12_,this,!_loc3_ ? this["\x18\x16\x1d"] : this["\x18\x16\x11"],[true]]);
               }
               break;
            case "startup":
            case "prestartup":
            case "hotkeys":
               _loc9_ = false;
               break;
            case "batch":
            case "sendCommand":
            case "prepareCommand":
            case "sendChat":
            case "prepareChat":
            case "copyCommand":
               _loc9_ = false;
               if(_loc5_.call(this,_loc2_.attributes.label))
               {
                  var _loc13_ = this.replaceLabel(_loc2_.attributes.label);
                  _loc7_.push([_loc13_,this,this["\x17\x0e\b"],[_loc2_]]);
                  break;
               }
         }
         if(_loc9_ && _loc2_.childNodes.length > 0)
         {
            _loc8_ = _loc8_ + 1;
            _loc2_ = _loc2_.firstChild;
         }
         else
         {
            var _loc14_ = _loc2_.nextSibling;
            if(_loc14_ == undefined || _loc14_ == null)
            {
               while(_loc8_ > 0)
               {
                  _loc8_ = _loc8_ - 1;
                  _loc2_ = _loc2_.parentNode;
                  var _loc15_ = _loc2_.nextSibling;
                  if(_loc15_ != undefined && _loc15_ != null)
                  {
                     _loc14_ = _loc15_;
                     break;
                  }
                  if(_loc8_ == 0)
                  {
                     _loc14_ = undefined;
                  }
               }
            }
            _loc2_ = _loc14_;
         }
      }
      var _loc16_ = 0;
      var _loc17_ = 0;
      while(_loc17_ < _loc6_.length)
      {
         _loc4_["\x15\x1d\x12"].apply(_loc4_,_loc6_[_loc17_]);
         _loc16_ = _loc16_ + 1;
         if(_loc16_ > 0 && _loc16_ % 13 == 0)
         {
            _loc4_.addNewColumn();
         }
         _loc17_ = _loc17_ + 1;
      }
      var _loc18_ = 0;
      while(_loc18_ < _loc7_.length)
      {
         _loc4_["\x15\x1d\x12"].apply(_loc4_,_loc7_[_loc18_]);
         _loc16_ = _loc16_ + 1;
         if(_loc16_ > 0 && _loc16_ % 13 == 0)
         {
            _loc4_.addNewColumn();
         }
         _loc18_ = _loc18_ + 1;
      }
      return _loc4_;
   };
   _loc1_["\x17\x02\x19"] = function §\x17\x02\x19§(§\x19\n\x1d§, §\x16\x11\t§)
   {
      this["\x1e\b\x17"] = "";
      var _loc4_ = this.api.ui["\x17\x02\x19"](undefined,true);
      this.generatePreparedReplaceVars();
      while(_loc2_ != null && _loc2_ != undefined)
      {
         var _loc5_ = this.replaceLabel(_loc2_.attributes.label);
         switch(_loc2_.attributes.type)
         {
            case "static":
               _loc4_["\x15\x1e\x18"](_loc5_);
               break;
            case "newColumn":
               _loc4_.addNewColumn();
               break;
            case "menu":
               _loc4_["\x15\x1d\x12"](_loc5_ + " >>",this,this["\x17\x02\x06"],[_loc2_.firstChild,_loc3_]);
               break;
            case "menuDebug":
               if(dofus.Constants.DEBUG)
               {
                  _loc4_["\x15\x1d\x12"](_loc5_ + " >>",this,this["\x17\x02\x06"],[_loc2_.firstChild,_loc3_]);
               }
               break;
            case "loadXML":
               _loc4_["\x15\x1d\x12"](_loc5_,this,!_loc3_ ? this["\x18\x16\x1d"] : this["\x18\x16\x11"],[true]);
               break;
            case "startup":
            case "prestartup":
            case "hotkeys":
               break;
            default:
               _loc4_["\x15\x1d\x12"](_loc5_,this,this["\x17\x0e\b"],[_loc2_]);
         }
         _loc2_ = _loc2_.nextSibling;
      }
      return _loc4_;
   };
   _loc1_["\x17\x02\x06"] = function §\x17\x02\x06§(§\x19\n\x1d§, §\x16\x11\t§)
   {
      var _loc4_ = this.api.ui["\x17\x03\x1b"];
      var _loc5_ = _loc4_.x;
      var _loc6_ = _loc4_.y;
      var _loc7_ = this["\x17\x02\x19"](_loc2_,_loc3_);
      if(_loc5_ != undefined && _loc6_ != undefined)
      {
         _loc7_.show(_loc5_,_loc6_,true);
      }
      else
      {
         _loc7_.show(_root._xmouse,_root._ymouse,true);
      }
   };
   _loc1_["\x17\x02\x07"] = function §\x17\x02\x07§(§\x19\n\x1d§, §\x16\x11\t§)
   {
      var _loc4_ = this.api.ui["\x17\x03\x1b"];
      var _loc5_ = _loc4_.x;
      var _loc6_ = _loc4_.y;
      var _loc7_ = this["\x17\x02\x1a"](_loc2_,_loc3_);
      if(_loc5_ != undefined && _loc6_ != undefined)
      {
         _loc7_.show(_loc5_,_loc6_,true);
      }
      else
      {
         _loc7_.show(_root._xmouse,_root._ymouse,true);
      }
   };
   _loc1_["\x18\n\x12"] = function §\x18\n\x12§(§\x19\n\x1d§)
   {
      this._eoHotKeysBatchNodes = new ank.utils.["\x17\x0e\r"]();
      var _loc3_ = false;
      while(_loc2_ != null && _loc2_ != undefined)
      {
         if(_loc2_.attributes.type == "startup")
         {
            this["\x1e\r\x02"] = _loc2_;
         }
         else if(_loc2_.attributes.type == "prestartup")
         {
            this["\x1e\x07\x01"] = _loc2_;
         }
         else if(_loc2_.attributes.type == "hotkeys")
         {
            _loc3_ = true;
            var _loc4_ = _loc2_.firstChild;
            while(_loc4_ != null && _loc4_ != undefined)
            {
               var _loc5_ = _loc4_.attributes.hotkey.charCodeAt(0);
               if(_loc5_ != undefined && _loc4_.attributes.type == "batch")
               {
                  if(_loc4_.attributes.type == "batch")
                  {
                     this._eoHotKeysBatchNodes["\x15\x1d\x13"](_loc5_,_loc4_);
                  }
               }
               _loc4_ = _loc4_.nextSibling;
            }
         }
         if(this["\x1e\r\x02"] != undefined && (this["\x1e\x07\x01"] != undefined && _loc3_))
         {
            break;
         }
         _loc2_ = _loc2_.nextSibling;
      }
   };
   _loc1_["\x17\x0e\b"] = function §\x17\x0e\b§(§\x19\n\x1d§)
   {
      this["\x1a\f\b"]();
      this["\x1e\f\x0e"] = _loc2_.cloneNode(true);
      this.execute(this["\x1e\f\x0e"],false);
   };
   _loc1_.execute = function execute(§\x19\n\x1d§)
   {
      if(_loc2_.attributes["\x16\x19\x15"] != true)
      {
         this.generatePreparedReplaceVars();
         this["\x1e\b\x15"] = _loc2_;
         var _loc3_ = _loc2_.attributes.command;
         var _loc4_ = false;
         if(_loc3_ != undefined)
         {
            var _loc5_ = _loc3_.split(" ");
            _loc4_ = _loc5_.length > 1 && _loc5_[1] == "%p";
            _loc3_ = this["\x1a\r\f"](_loc3_);
            if(_loc3_ == null)
            {
               return false;
            }
         }
         switch(_loc2_.attributes.type)
         {
            case "copyCommand":
               this.copyCommand(_loc3_);
               break;
            case "sendCommand":
               var _loc6_ = _loc2_.attributes.appendmodreportdescription == "1";
               var _loc7_ = _loc2_.attributes.appendmodreportcomplementary == "1";
               if(_loc6_ || _loc7_)
               {
                  var _loc8_ = new Array();
                  if(_loc6_)
                  {
                     _loc8_.push(1);
                  }
                  if(_loc7_)
                  {
                     _loc8_.push(2);
                  }
                  var _loc9_ = new ank.utils.ExtendedString(_loc3_)["\x1b\x11\x13"]().toString().split(dofus.aks.Basics.MULTIPLE_ADMIN_COMMANDS_SPLIT_STR);
                  var _loc10_ = 0;
                  while(_loc10_ < _loc9_.length)
                  {
                     var _loc11_ = _loc9_[_loc10_];
                     if(_loc4_)
                     {
                        var _loc12_ = _loc11_.split(" ");
                        var _loc13_ = _loc12_[0];
                        var _loc14_ = _loc12_[1].split(",");
                        _loc12_.splice(0,2);
                        var _loc15_ = _loc12_.length <= 0 ? "" : _loc12_.join(" ");
                        var _loc16_ = 0;
                        while(_loc16_ < _loc14_.length)
                        {
                           this._aPendingModReportAppendCommands.push({types:_loc8_,command:_loc13_ + " " + _loc14_[_loc16_] + (_loc15_.length != 0 ? " " + _loc15_ : "")});
                           _loc16_ = _loc16_ + 1;
                        }
                     }
                     else
                     {
                        this._aPendingModReportAppendCommands.push({types:_loc8_,command:_loc11_});
                     }
                     _loc10_ = _loc10_ + 1;
                  }
               }
               this.sendCommand(_loc3_);
               break;
            case "sendChat":
               this.sendChat(_loc3_);
               break;
            case "prepareCommand":
               this.prepareCommand(_loc3_);
               break;
            case "prepareChat":
               this.prepareChat(_loc3_);
               break;
            case "clearConsole":
               this.clearConsole();
               break;
            case "openConsole":
               this.openConsole();
               break;
            case "closeConsole":
               this.closeConsole();
               break;
            case "move":
               this.move(Number(_loc2_.attributes.cell),!!_loc2_.attributes.dirs);
               break;
            case "emote":
               this.emote(Number(_loc2_.attributes.num));
               break;
            case "smiley":
               this.smiley(Number(_loc2_.attributes.num));
               break;
            case "direction":
               this.direction(Number(_loc2_.attributes.num));
               break;
            case "summoner":
               this["\x18\x11\x01"]();
               break;
            default:
               break;
            case "batch":
               return this.batch(_loc2_.firstChild);
         }
         _loc2_.attributes["\x16\x19\x15"] = true;
      }
      return true;
   };
   _loc1_.batch = function batch(§\x19\n\x1d§)
   {
      var _loc3_ = false;
      this["\x1c\x03\x1c"] = true;
      while(_loc2_ != null && _loc2_ != undefined)
      {
         var _loc4_ = this.execute(_loc2_);
         if(_loc4_ == false)
         {
            return false;
         }
         if(_loc2_.attributes.type == "sendCommand")
         {
            var _loc5_ = _loc2_.attributes.command;
            if(_loc5_.indexOf("/makereport") == 0 && !_loc2_.attributes.makeReportCheck)
            {
               _loc3_ = true;
               _loc2_.attributes.makeReportCheck = true;
            }
         }
         var _loc6_ = _loc2_.nextSibling;
         var _loc7_ = Number(_loc2_.attributes.delay);
         if(!_global.isNaN(_loc7_) && _loc2_.attributes.delayCheck != true)
         {
            if(_loc3_)
            {
               _loc3_ = false;
               var _loc8_ = this.api.datacenter.["\x1b\x0f\b"].Report;
               if(_loc8_ != undefined)
               {
                  this.api.networkBasics["\x16\x06\n"](2,_loc8_.currentTargetPseudos,_loc8_.currentTargetIsAllAccounts);
               }
            }
            ank.utils.Timer.setTimer(this,"batch",this,this["\x19\x15\x16"],_loc7_);
            return false;
         }
         var _loc9_ = _loc2_.parentNode;
         if(_loc9_.attributes.repeatCheck == undefined)
         {
            _loc9_.attributes.repeatCheck = 1;
         }
         var _loc10_ = _loc9_.attributes.repeat;
         if(_loc6_ == undefined && (!_global.isNaN(_loc10_) && _loc9_.attributes.repeatCheck < _loc10_))
         {
            var _loc11_ = 0;
            while(_loc11_ < _loc9_.childNodes.length)
            {
               _loc9_.childNodes[_loc11_].attributes["\x16\x19\x15"] = false;
               _loc9_.childNodes[_loc11_].attributes.delayCheck = false;
               _loc11_ = _loc11_ + 1;
            }
            _loc9_.attributes.repeatCheck++;
            _loc6_ = _loc9_.childNodes[0];
         }
         _loc2_ = _loc6_;
      }
      this["\x1c\x03\x1c"] = false;
      if(_loc3_)
      {
         var _loc12_ = this.api.datacenter.["\x1b\x0f\b"].Report;
         if(_loc12_ != undefined)
         {
            this.api.networkBasics["\x16\x06\n"](2,_loc12_.currentTargetPseudos,_loc12_.currentTargetIsAllAccounts);
         }
      }
      return true;
   };
   _loc1_["\x19\x15\x16"] = function §\x19\x15\x16§()
   {
      this["\x1e\b\x15"].attributes.delayCheck = true;
      this["\x1a\f\b"]();
      this["\x1a\x0e\n"]();
   };
   _loc1_["\x1a\f\b"] = function §\x1a\f\b§()
   {
      ank.utils.Timer.removeTimer(this,"batch");
   };
   _loc1_["\x1a\x0e\n"] = function §\x1a\x0e\n§()
   {
      this.execute(this["\x1e\f\x0e"]);
   };
   _loc1_.openConsole = function openConsole()
   {
      this.api.ui.loadUIComponent("Debug","Debug",undefined,{bAlwaysOnTop:true});
   };
   _loc1_.closeConsole = function closeConsole()
   {
      this.api.ui.unloadUIComponent("Debug");
   };
   _loc1_.prepareCommand = function prepareCommand(§\x1a\x10\x1b§)
   {
      if(this.api.electron.isShowingWidescreenPanel && this.api.electron.getWidescreenPanelId() == dofus.Eelectron.WIDESCREEN_PANEL_CONSOLE)
      {
         var _loc3_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
         if(_loc3_ != undefined)
         {
            _loc3_.tiCommandLine = _loc2_;
         }
         this.api.electron.retroConsoleSetPromptText(_loc2_,true);
      }
      else
      {
         this.api.ui.loadUIComponent("Debug","Debug",{command:_loc2_},{bStayIfPresent:true,bAlwaysOnTop:true});
      }
   };
   _loc1_.sendCommand = function sendCommand(§\x1a\x10\x1b§)
   {
      this.api.kernel.DebugConsole.process(_loc2_);
   };
   _loc1_.prepareChat = function prepareChat(§\x1a\x10\x1b§)
   {
      this.api.ui.getUIComponent("Banner").txtConsole = _loc2_;
      this.api.electron.retroChatSetPromptText(_loc2_,true);
   };
   _loc1_.sendChat = function sendChat(§\x1a\x10\x1b§)
   {
      this.api.kernel.Console.process(_loc2_);
   };
   _loc1_.copyCommand = function copyCommand(§\x1a\x10\x1b§)
   {
      System.setClipboard(_loc2_);
   };
   _loc1_.clearConsole = function clearConsole()
   {
      this.api.ui.getUIComponent("Debug").clear();
   };
   _loc1_.move = function move(§\x19\x04\x12§, §\x16\b\x16§)
   {
      this.api.datacenter.Player["\x18\x0b\b"]["\x16\x15\b"](this.api.gfx["\x18\x18\x15"],_loc2_,true,this.api.datacenter.Game.isFight,true,_loc3_);
      if(this.api.datacenter.Basics.interactionsManager_path.length != 0)
      {
         var _loc4_ = ank.battlefieldutils.["\x16\x1e\t"]["\x16\x1e\n"](this.api.datacenter.Basics.interactionsManager_path);
         if(_loc4_ != undefined)
         {
            this["\x19\x02\x1c"]["\x17\x13\x05"].clear();
            this["\x19\x02\x1c"]["\x17\x13\x05"]["\x1b\x11\n"](1,[_loc4_]);
            delete this.api.datacenter.Basics.interactionsManager_path;
         }
      }
   };
   _loc1_.smiley = function smiley(§\x19\b\x14§)
   {
      this.api.network.Chat["\x1b\x16\x1d"](_loc2_);
   };
   _loc1_.emote = function emote(§\x19\b\x14§)
   {
      this.api.network.Emotes["\x1b\x16\x15"](_loc2_);
   };
   _loc1_.direction = function direction(§\x19\b\x14§)
   {
      this.api.network.Emotes["\x1a\x16\x04"](_loc2_);
   };
   _loc1_["\x18\x11\x01"] = function §\x18\x11\x01§()
   {
      this.api.ui.loadUIComponent("ItemSummoner","ItemSummoner");
   };
   _loc1_.replaceLabel = function replaceLabel(sText)
   {
      return this.replace(_loc2_,true);
   };
   _loc1_.replace = function §\x1a\r\n§(sText, bLabel)
   {
      var _loc4_ = new Array();
      _loc4_.push({f:"%et",t:this._aPreparedReplaceVars[2]});
      _loc4_.push({f:"%ey",t:this._aPreparedReplaceVars[3]});
      _loc4_.push({f:"%g",t:this["\x1a\x05\x14"]["\x18\x04\x07"]});
      _loc4_.push({f:"%c",t:this["\x1a\x05\x14"].cellNum});
      _loc4_.push({f:"%p",t:this.playerName});
      _loc4_.push({f:"%n",t:this.api.datacenter.Player.Name});
      _loc4_.push({f:"%d",t:this._aPreparedReplaceVars[0]});
      _loc4_.push({f:"%h",t:this._aPreparedReplaceVars[1]});
      _loc4_.push({f:"%t",t:this.api.kernel["\x19\b\x11"].time});
      _loc4_.push({f:"%s",t:this.api.datacenter.Basics.aks_a_prompt});
      _loc4_.push({f:"%m",t:this.api.datacenter.["\x18\x18\x0e"].id});
      _loc4_.push({f:"%v",t:dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + " (" + dofus.Constants.VERSIONDATE + ")"});
      if(bLabel)
      {
         var _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            var _loc6_ = _loc4_[_loc5_].f;
            if(_loc6_ == "%p")
            {
               var _loc7_ = _loc4_[_loc5_].t.split(",").length;
               if(_loc7_ > 8)
               {
                  _loc4_[_loc5_].t = "%p contains " + _loc7_ + " pseudos";
               }
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      var _loc8_ = 0;
      while(_loc8_ < _loc4_.length)
      {
         _loc2_ = _loc2_.split(_loc4_[_loc8_].f).join(_loc4_[_loc8_].t);
         _loc8_ = _loc8_ + 1;
      }
      return _loc2_;
   };
   _loc1_["\x1a\r\f"] = function §\x1a\r\f§(sText)
   {
      var _loc3_ = new Array();
      _loc3_.push({f:"#item",ui:"ItemSelector"});
      _loc3_.push({f:"#look",ui:"MonsterAndLookSelector"});
      _loc3_.push({f:"#monster",ui:"MonsterAndLookSelector",p:{monster:true}});
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc2_.indexOf(_loc3_[_loc4_].f) != -1)
         {
            var _loc5_ = this.api.ui.loadUIComponent(_loc3_[_loc4_].ui,_loc3_[_loc4_].ui + this["\x1d\x1e\x19"]++,_loc3_[_loc4_].p);
            _loc5_.addEventListener("select",this);
            _loc5_.addEventListener("cancel",this);
            return null;
         }
         _loc4_ = _loc4_ + 1;
      }
      return this.replace(_loc2_);
   };
   _loc1_["\x1a\r\x0f"] = function §\x1a\r\x0f§(sText, §\x1b\x0b\b§, §\x1b\x07\x1a§)
   {
      var _loc5_ = _loc2_.indexOf(_loc3_);
      var _loc6_ = _loc2_.split("");
      _loc6_.splice(_loc5_,_loc3_.length,_loc4_);
      var _loc7_ = _loc6_.join("");
      return _loc7_;
   };
   _loc1_.cancel = function cancel(oEvent)
   {
   };
   _loc1_["\x16\x19\b"] = function §\x16\x19\b§()
   {
      if(this["\x1e\x07\x01"] == null || this["\x1e\x07\x01"] == undefined)
      {
         return undefined;
      }
      this["\x1a\x05\x14"] = this.api.datacenter.Player;
      this.playerName = dofus.datacenter.["\x18\x17\t"](this["\x1a\x05\x14"]).Name;
      this.batch(this["\x1e\x07\x01"].firstChild);
   };
   _loc1_["\x16\x19\x03"] = function §\x16\x19\x03§()
   {
      if(this["\x1e\r\x02"] == null || this["\x1e\r\x02"] == undefined)
      {
         return undefined;
      }
      this["\x1a\x05\x14"] = this.api.datacenter.Player;
      this.playerName = dofus.datacenter.["\x18\x17\t"](this["\x1a\x05\x14"]).Name;
      this.batch(this["\x1e\r\x02"].firstChild);
   };
   _loc1_.select = function select(oEvent)
   {
      switch(_loc2_.ui)
      {
         case "ItemSelector":
            var _loc3_ = this["\x1a\r\x0f"](this["\x1e\b\x15"].attributes.command,"#item",_loc2_.itemId + " " + _loc2_.itemQuantity);
            if(_loc3_ != undefined)
            {
               _loc3_ = this["\x1a\r\f"](_loc3_);
            }
            if(_loc3_ != null)
            {
               this.sendCommand(_loc3_);
            }
            break;
         case "LookSelector":
            §§push(this["\x1e\b\x15"]);
            §§push("attributes");
         default:
            §§pop()[§§pop()].command = this["\x1a\r\x0f"](this["\x1e\b\x15"].attributes.command,"#look",_loc2_.lookId);
            this["\x1a\x0e\n"]();
            break;
         case "MonsterSelector":
            this["\x1e\b\x15"].attributes.command = this["\x1a\r\x0f"](this["\x1e\b\x15"].attributes.command,"#monster",_loc2_.monsterId);
            this["\x1a\x0e\n"]();
      }
   };
   _loc1_.addProperty("pendingModReportAppendCommands",_loc1_.__get__pendingModReportAppendCommands,function()
   {
   }
   );
   _loc1_["\t\x10\x01G{invalid_utf8=150}\x02"]("\b",_loc1_[""],function()
   {
   }
   );
   "\x1c{invalid_utf8=150}\x02"(_loc1_,null,1);
   dofus.managers["\x16\x01\r"] = function()
   {
      super();
      dofus.managers["\x16\x01\r"]["\x1e\f\x10"] = this;
   }["\r\n"] = null;
   dofus.managers["\x16\x01\r"] = function()
   {
      super();
      dofus.managers["\x16\x01\r"]["\x1e\f\x10"] = this;
   }["\x04\x06\b\x1cN{invalid_utf8=150}\x02"] = 100;
}
