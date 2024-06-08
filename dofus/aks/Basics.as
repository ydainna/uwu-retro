if(!dofus.aks.Basics)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.aks)
   {
      _global.dofus.aks = new Object();
   }
   dofus.aks.Basics = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   } extends dofus.aks.Handler;
   var _loc1_ = dofus.aks.Basics = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }.prototype;
   _loc1_.__get__lastReceivedReferenceTime = function __get__lastReceivedReferenceTime()
   {
      return this.nReferenceTime;
   };
   _loc1_.autorisedCommand = function §\x16\x07\x1a§(§\x1a\x10\x1b§)
   {
      this.aks.send("BA" + _loc2_,false,undefined,true);
   };
   _loc1_["\x16\x07\x1c"] = function §\x16\x07\x1c§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      this.aks.send("BaM" + _loc2_ + "," + _loc3_,false);
   };
   _loc1_["\x16\x07\x1b"] = function §\x16\x07\x1b§(§\x1b\x06\x1b§, §\x19\x0f\x14§, §\x1b\x03\x10§)
   {
      this.aks.send("BaK" + _loc2_ + "|" + _loc3_ + "|" + _loc4_,false);
   };
   _loc1_["\x1b\x19\b"] = function §\x1b\x19\b§()
   {
      this["\x1b\x19\t"]("");
   };
   _loc1_["\x1b\x19\t"] = function §\x1b\x19\t§(§\x1b\x03\x1d§)
   {
      this.aks.send("BW" + _loc2_);
   };
   _loc1_["\x18\x12\x01"] = function §\x18\x12\x01§(§\x19\x04\x12§)
   {
      this.aks.send("BQ" + _loc2_,false);
   };
   _loc1_["\x16\b\x06"] = function §\x16\b\x06§()
   {
      this.aks.send("BYA",false);
   };
   _loc1_["\x18\f\x0e"] = function §\x18\f\x0e§()
   {
      this.aks.send("BYI",false);
   };
   _loc1_.getDate = function getDate()
   {
      this.aks.send("BD",false);
   };
   _loc1_["\x17\x10\f"] = function §\x17\x10\f§(§\x19\x05\x02§, §\x19\x07\x15§)
   {
      this.aks.send("BC" + _loc2_ + ";" + _loc3_,false);
   };
   _loc1_["\x1a\x0f\x0e"] = function §\x1a\x0f\x0e§(§\x19\r\x19§, §\x19\x10\x19§)
   {
      this.aks.send("BK" + _loc2_ + "|" + _loc3_,false);
   };
   _loc1_["\x16\b\x03"] = function §\x16\b\x03§()
   {
      this.aks.send("Bp" + this.api.network["\x17\x14\x10"]() + "|" + this.api.network["\x17\x14\x12"]() + "|" + this.api.network["\x17\x14\x11"](),false);
   };
   _loc1_["\x16\x06\n"] = function §\x16\x06\n§(§\x19\x0f\x02§, §\x1b\t\x04§, §\x16\b\x14§)
   {
      this.aks.send("Br" + _loc2_ + "|" + _loc3_ + "|" + (!_loc4_ ? "0" : "1"),false,undefined,true);
   };
   _loc1_["\x19\x1c\x03"] = function §\x19\x1c\x03§(§\x1a\x1b\r§)
   {
      var _loc3_ = this.api.datacenter.["\x1b\x0f\b"].Report;
      if(_loc3_ != undefined)
      {
         var _loc4_ = _loc2_.charAt(0);
         var _loc5_ = _loc2_.substring(1);
         switch(_loc4_)
         {
            case "t":
               var _loc6_ = _loc5_.split("|");
               if(_loc3_.targetAccountPseudo == undefined)
               {
                  _loc3_.targetAccountPseudo = _loc6_[0];
                  _loc3_.targetAccountId = _loc6_[1];
               }
               break;
            case "s":
               if(_loc3_.sanctionnatedAccounts == undefined)
               {
                  _loc3_.sanctionnatedAccounts = _loc5_;
               }
               else
               {
                  _loc3_.sanctionnatedAccounts += "\n\n" + _loc5_;
               }
               break;
            case "p":
               _loc3_.penal = _loc5_;
               break;
            case "f":
               _loc3_.findAccounts = _loc5_;
               break;
            case "#":
               this.api.ui.unloadUIComponent("FightsInfos");
               var _loc7_ = dofus.graphics.gapi.ui.MakeReport(this.api.ui.getUIComponent("MakeReport"));
               if(_loc7_ == undefined)
               {
                  var _loc8_ = _loc3_.targetPseudos;
                  var _loc9_ = _loc3_.reason;
                  var _loc10_ = _loc3_.description;
                  var _loc11_ = _loc3_.complementary;
                  var _loc12_ = _loc3_.jailDialog;
                  var _loc13_ = _loc3_.isAllAccounts;
                  var _loc14_ = _loc3_.penal;
                  var _loc15_ = _loc3_.findAccounts;
                  _loc3_.description = undefined;
                  _loc3_.complementary = undefined;
                  _loc3_.penal = undefined;
                  _loc3_.findAccounts = undefined;
                  this.api.ui.loadUIComponent("MakeReport","MakeReport",{targetPseudos:_loc8_,reason:_loc9_,description:_loc10_,complementary:_loc11_,jailDialog:_loc12_,isAllAccounts:_loc13_,penal:_loc14_,findAccounts:_loc15_});
                  var _loc16_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
                  if(_loc16_ != undefined)
                  {
                     _loc16_["\x16\x19\x0b"]["\x1a\x01\x03"](true);
                  }
                  break;
               }
               _loc7_["\x1b\x14\x01"](true);
               break;
         }
      }
      return undefined;
   };
   _loc1_["\x19\x1b\x07"] = function §\x19\x1b\x07§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_;
      if(_loc3_ != undefined && _loc3_[undefined] > 0)
      {
         this[undefined][undefined][undefined](undefined,_loc3_,undefined);
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      this[undefined][undefined][undefined](this[undefined][undefined][undefined](undefined),this[undefined][undefined][undefined](undefined,[_loc2_]),undefined);
      this[undefined][undefined][undefined][undefined] = true;
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      this[undefined][undefined][undefined](undefined);
      this[undefined][undefined][undefined](this[undefined][undefined][undefined](undefined),this[undefined][undefined][undefined](undefined,[_loc2_]),undefined);
      this[undefined][undefined][undefined][undefined] = false;
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x10\x1b§)
   {
      return undefined + eval(undefined)[undefined](_loc2_) + undefined + undefined + undefined;
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x10\x1b§)
   {
      return undefined + eval(undefined)[undefined](_loc2_) + undefined + undefined + undefined;
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x10\x1b§)
   {
      return undefined + eval(undefined)[undefined](_loc2_) + undefined + undefined + undefined;
   };
   _loc1_.onAutorizedCommandBuildGridObject = function onAutorizedCommandBuildGridObject(sGridData)
   {
      var _loc3_ = new §undefined§();
      var _loc4_ = sGridData[undefined](undefined);
      var _loc5_ = _loc4_[0];
      if(_loc5_[undefined] > 0)
      {
         _loc5_ = new eval(undefined)[undefined][undefined](_loc5_)[undefined](undefined,undefined);
         _loc3_[undefined] = this[undefined][undefined][undefined][undefined](_loc5_,undefined) + undefined;
      }
      var _loc6_ = _loc4_[1];
      if(_loc6_[undefined] > 0)
      {
         _loc6_ = new eval(undefined)[undefined][undefined](_loc6_)[undefined](undefined,undefined);
         _loc3_[undefined] = undefined + this[undefined][undefined][undefined][undefined](_loc6_,undefined);
      }
      var _loc7_ = _loc4_[2][undefined](undefined);
      var _loc8_ = new §undefined§();
      var _loc9_ = new §undefined§();
      var _loc10_ = 0;
      while(_loc10_ < _loc7_[undefined])
      {
         var _loc11_ = _loc7_[_loc10_];
         _loc11_ = new eval(undefined)[undefined][undefined](_loc11_)[undefined](undefined,undefined);
         _loc8_[undefined](_loc11_);
         _loc10_ = _loc10_ + 1;
      }
      var _loc12_ = new eval(undefined)[undefined][undefined](_loc4_[3])[undefined]();
      var _loc13_ = this[undefined][undefined][undefined][undefined](_loc12_,undefined)[undefined](undefined);
      var _loc15_ = 0;
      while(_loc15_ < _loc13_[undefined])
      {
         if(_loc15_ % _loc8_[undefined] == 0)
         {
            if(_loc14_ != undefined)
            {
               _loc9_[undefined](_loc14_);
            }
            var _loc14_ = new §undefined§();
         }
         _loc14_[undefined](_loc13_[_loc15_]);
         _loc15_ = _loc15_ + 1;
      }
      if(_loc14_ != undefined)
      {
         _loc9_[undefined](_loc14_);
      }
      _loc3_[undefined] = _loc8_;
      _loc3_[undefined] = _loc9_;
      return _loc3_;
   };
   _loc1_[undefined] = function §undefined§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = eval("P{invalid_utf8=164}")[undefined][undefined][undefined][undefined](this[undefined][undefined][undefined](undefined));
         if(_loc4_ == undefined && (eval("P{invalid_utf8=164}")[undefined][undefined][undefined][undefined][undefined] < 2 && !(this[undefined][undefined][undefined] && this[undefined][undefined][undefined]() == eval("P{invalid_utf8=164}")[undefined][undefined])))
         {
            this[undefined][undefined][undefined](undefined,undefined,undefined,{(undefined):true,(undefined):true});
         }
         var _loc5_ = eval("P{invalid_utf8=164}")[undefined][undefined][undefined][undefined][undefined];
         var _loc6_ = _loc3_[undefined](undefined);
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = undefined;
         if(_loc7_ == 4)
         {
            if(this[undefined][undefined][undefined])
            {
               _loc8_ = _loc6_[1];
            }
            _loc6_[undefined](0,2);
            _loc7_ = Number(_loc6_[0][undefined](3));
         }
         var _loc9_ = Number(_loc6_[1]);
         var _loc10_ = _loc6_[2];
         _loc6_[undefined](0,3);
         var _loc11_ = _loc6_[undefined](undefined);
         if(_loc7_ == undefined || (_loc9_ == undefined || (_loc10_ == undefined || _loc11_ == undefined)))
         {
            this[undefined][undefined][undefined](undefined,undefined,undefined);
            var _loc12_ = 0;
            while(_loc12_ < _loc6_[undefined])
            {
               this[undefined][undefined][undefined](undefined,_loc12_ + undefined + _loc6_[_loc12_],undefined);
               _loc12_ = _loc12_ + 1;
            }
            return undefined;
         }
         var _loc13_ = undefined;
         switch(_loc7_)
         {
            case 1:
               _loc13_ = undefined;
               break;
            case 2:
               _loc13_ = undefined;
         }
         _loc11_ = this[undefined][undefined][undefined][undefined](_loc11_,undefined);
         if(this[undefined][undefined][undefined])
         {
            if(_loc10_[undefined] > 0 && _loc9_ > 0)
            {
               var _loc14_ = this[undefined][undefined][undefined][undefined];
               if(_loc14_ != undefined)
               {
                  var _loc15_ = this[undefined][undefined][undefined][undefined];
                  if(_loc15_ != undefined)
                  {
                     var _loc16_ = _loc15_[undefined] - 1;
                     while(_loc16_ >= 0)
                     {
                        var _loc17_ = _loc15_[_loc16_];
                        if(_loc17_[undefined] == _loc10_)
                        {
                           var _loc18_ = false;
                           var _loc19_ = _loc17_[undefined];
                           if(_loc19_[undefined] > 0)
                           {
                              var _loc20_ = this[undefined][undefined][undefined](this[undefined][undefined][undefined](_loc11_));
                              var _loc21_ = 0;
                              for(; _loc21_ < _loc19_[undefined]; _loc21_ = _loc21_ + 1)
                              {
                                 switch(_loc19_[_loc21_])
                                 {
                                    case 1:
                                       _loc18_ = true;
                                       if(_loc14_[undefined] == undefined)
                                       {
                                          _loc14_[undefined] = _loc20_;
                                       }
                                       else
                                       {
                                          _loc14_[undefined] += undefined + _loc20_;
                                       }
                                       break;
                                    case 2:
                                       _loc18_ = true;
                                       if(_loc14_[undefined] == undefined)
                                       {
                                          _loc14_[undefined] = _loc20_;
                                          break;
                                       }
                                       _loc14_[undefined] += undefined + _loc20_;
                                       break;
                                    default:
                                       continue;
                                 }
                              }
                              if(_loc18_)
                              {
                                 _loc15_[undefined](_loc16_,1);
                                 var _loc22_ = eval("P{invalid_utf8=164}")[undefined][undefined][undefined][undefined](this[undefined][undefined][undefined](undefined));
                                 if(_loc22_ != undefined)
                                 {
                                    _loc22_[undefined](false);
                                 }
                                 return undefined;
                              }
                           }
                        }
                        _loc16_ = _loc16_ - 1;
                     }
                  }
               }
            }
            var _loc23_ = undefined;
            if(_loc8_ != undefined)
            {
               _loc23_ = this[undefined](_loc8_);
            }
            if(!eval(undefined)[undefined](_loc9_) && _loc9_ > 0)
            {
               var _loc24_ = undefined;
               if(_loc9_ == 1)
               {
                  var _loc25_ = this[undefined][undefined][undefined](this[undefined][undefined][undefined](_loc11_));
                  _loc24_ = undefined + this[undefined](_loc25_) + undefined + this[undefined](_loc25_);
                  _loc11_ += _loc24_;
               }
               else if(_loc9_ == 2)
               {
                  var _loc26_ = this[undefined][undefined][undefined](this[undefined][undefined][undefined](_loc11_));
                  _loc24_ = undefined + this[undefined](_loc26_);
                  _loc11_ += _loc24_;
               }
               if(_loc24_ != undefined && _loc23_ != undefined)
               {
                  if(_loc23_[undefined] != undefined)
                  {
                     _loc23_[undefined] += _loc24_;
                  }
                  else
                  {
                     _loc23_[undefined] = _loc24_;
                  }
               }
            }
            var _loc27_ = new eval(undefined)[undefined][undefined](_loc11_)[undefined]();
            this[undefined][undefined][undefined](_loc27_,_loc13_,_loc23_,true);
            if(_loc5_ != 0)
            {
               this[undefined][undefined][undefined](_loc13_,_loc27_,true);
               if(_loc5_ == 2)
               {
                  return undefined;
               }
            }
         }
         if(!this[undefined][undefined][undefined] || this[undefined][undefined][undefined]() != eval("P{invalid_utf8=164}")[undefined][undefined])
         {
            this[undefined][undefined][undefined](undefined,_loc11_,_loc13_);
         }
         if(eval("P{invalid_utf8=164}")[undefined][undefined])
         {
            if(_loc11_[undefined](undefined) == 0)
            {
               eval("P{invalid_utf8=164}")[undefined][undefined]()[undefined]();
            }
         }
      }
      else
      {
         this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[undefined]),undefined);
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      if(_loc2_ == undefined || _loc2_[undefined] == 0)
      {
         return undefined;
      }
      this[undefined][undefined][undefined][undefined] = _loc2_;
      this[undefined][undefined][undefined](_loc2_);
      this[undefined][undefined][undefined](undefined)[undefined](_loc2_);
   };
   _loc1_[undefined] = function §undefined§()
   {
      this[undefined][undefined][undefined](undefined)[undefined]();
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      this[undefined][undefined][undefined][undefined] = _loc2_[undefined](undefined);
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_[undefined](undefined);
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2];
      var _loc7_ = this[undefined][undefined][undefined][undefined][undefined](undefined);
      var _loc8_ = undefined + _loc6_ + undefined;
      switch(_loc5_)
      {
         case 1:
            _loc8_ = undefined + _loc6_ + undefined;
            break;
         case 2:
            _loc8_ = undefined + _loc6_ + undefined;
      }
      if(!eval(undefined)[undefined](_loc4_) && _loc4_ < _loc7_[undefined])
      {
         _loc7_[_loc7_[undefined] - _loc4_] = _loc8_;
         this[undefined][undefined][undefined][undefined] = _loc7_[undefined](undefined);
         this[undefined][undefined][undefined](undefined)[undefined]();
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      var _loc3_ = Number(_loc2_);
      this[undefined] = _loc3_;
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      this[undefined][undefined][undefined][undefined] = 2285;
      var _loc3_ = _loc2_[undefined](undefined);
      this[undefined][undefined][undefined][undefined](Number(_loc3_[0]),Number(_loc3_[1]),Number(_loc3_[2]));
   };
   _loc1_[undefined] = function §undefined§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_[undefined](undefined);
         if(_loc4_[undefined] != 4)
         {
            return undefined;
         }
         var _loc5_ = _loc4_[0];
         var _loc6_ = _loc4_[1];
         var _loc7_ = _loc4_[2];
         var _loc8_ = Number(_loc4_[3]) == -1 ? this[undefined][undefined][undefined](undefined) : this[undefined][undefined][undefined](Number(_loc4_[3]))[undefined];
         if(_loc5_[undefined]() == this[undefined][undefined][undefined][undefined])
         {
            switch(_loc6_)
            {
               case undefined:
                  this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[_loc7_,_loc5_,_loc8_]),undefined);
                  break;
               case undefined:
                  this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[_loc7_,_loc5_,_loc8_]),undefined);
            }
         }
         else
         {
            switch(_loc6_)
            {
               case undefined:
                  this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[_loc7_,_loc5_,_loc8_]) + undefined + this[undefined][undefined][undefined](undefined) + undefined + this[undefined][undefined][undefined][undefined] + undefined + this[undefined][undefined][undefined][undefined],undefined);
                  break;
               case undefined:
                  this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[_loc7_,_loc5_,_loc8_]) + undefined + this[undefined][undefined][undefined](undefined) + undefined + this[undefined][undefined][undefined][undefined] + undefined + this[undefined][undefined][undefined][undefined],undefined);
            }
         }
      }
      else
      {
         this[undefined][undefined][undefined](undefined,this[undefined][undefined][undefined](undefined,[_loc3_]),undefined);
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      if(_loc5_.indexOf("bright.swf") == 0)
      {
         this.api.network.send("BC" + _loc4_ + ";-1",false);
         _loc2_ = _loc5_.substr(10);
         this["\x19\x14\x19"](_loc2_);
      }
      else
      {
         dofusutils.["\x16\x04\x06"].getInstance()["\x16\x1a\b"](_loc5_,_loc4_);
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_[undefined](undefined);
      var _loc4_ = Number(_loc3_[0]);
      if(_loc4_ == 0)
      {
         this[undefined][undefined][undefined](true);
      }
      else if(_loc2_[undefined](0) == undefined)
      {
         var _loc5_ = _loc3_[0][undefined](1)[undefined](undefined);
         this[undefined][undefined][undefined](false,_loc5_,undefined);
      }
      else
      {
         var _loc6_ = _loc3_[0][undefined](undefined);
         var _loc7_ = eval(undefined)[undefined](_loc3_[1],16);
         this[undefined][undefined][undefined](_loc6_,_loc7_,undefined);
      }
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      this[undefined]();
   };
   _loc1_[undefined] = function §undefined§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_[undefined](0) == undefined;
      if(_loc3_)
      {
         var _loc4_ = Number(_loc2_[undefined](1));
         if(_loc4_ != 10)
         {
            this[undefined][undefined][undefined](undefined,undefined,{(undefined):_loc4_,(undefined):undefined,(undefined):undefined});
         }
         else
         {
            this[undefined][undefined][undefined](undefined,undefined,{(undefined):_loc4_},{(undefined):true});
            this[undefined][undefined][undefined][undefined] = false;
         }
      }
      else
      {
         this[undefined][undefined][undefined](undefined);
      }
   };
   _loc1_[undefined](undefined,_loc1_[undefined],function()
   {
   }
   );
   undefined(_loc1_,null,1);
   dofus.aks.Basics = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }[undefined] = undefined;
}
