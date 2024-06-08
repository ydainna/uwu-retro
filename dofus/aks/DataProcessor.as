class dofus.aks.DataProcessor extends dofus.aks.Handler
{
   function DataProcessor(oAKS, oAPI)
   {
      super.initialize(oAKS, oAPI);
   }

   function process(sData)
   {
      var _loc3_ = sData.charAt(0);
      var _loc4_ = sData.charAt(1);
      var _loc5_ = sData.charAt(2) == "E";
      this.postProcess(_loc3_, _loc4_, _loc5_, sData);
   }

   function defaultProcessAction(sType, sAction, bError, sData)
   {
      this.api.network.defaultProcessAction(sType, sAction, bError, sData);
   }

   function postProcess(sType, sAction, bError, sData)
   {
      switch(_loc2_)
      {
         case "H":
            switch(_loc3_)
            {
               case "T":
                  var _loc6_ = _loc5_.substr(2);
                  this.aks.onTelemetry(_loc6_,_loc6_ == "yolo");
                  break;
               case "C":
                  this.aks["\x19\x18\f"](_loc5_.substr(2));
                  break;
               case "G":
                  this.aks["\x19\x18\r"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.onCharacterSwitchTicket(_loc5_.substr(2));
                  break;
               default:
                  this.aks.disconnect(false,true);
            }
            break;
         case "p":
            this.aks["\x19\x1b\x06"]();
            break;
         case "q":
            this.aks["\x19\x1b\x17"]();
            break;
         case "r":
            this.aks.send("rpong" + _loc5_.substr(5),false);
            break;
         case "M":
            this.aks["\x19\x1c\x11"](_loc5_.substr(1));
            break;
         case "m":
            switch(_loc3_)
            {
               case "C":
                  switch(_loc5_.charAt(2))
                  {
                     case "S":
                        this.aks.ModReport.onCreationSuccess(_loc5_.substr(3));
                        break;
                     case "E":
                        this.aks.ModReport.onCreationError(_loc5_.substr(3));
                  }
                  break;
               case "I":
                  this.aks.ModReport.onInfos(_loc5_.substr(2));
                  break;
               case "L":
                  this.aks.ModReport.onCasesList(_loc5_.substr(2));
            }
            break;
         case "k":
            this.aks["\x19\x1c\x16"]();
            break;
         case "x":
            if((_loc0_ = _loc3_) === "C")
            {
               this.aks.RapidStuff.onRapidStuffCache(_loc5_.substr(2));
            }
            break;
         case "B":
            switch(_loc3_)
            {
               case "N":
                  return undefined;
               case "A":
                  switch(_loc5_.charAt(2))
                  {
                     case "l":
                        this.aks.Basics.onAuthorizedCommandsListing(_loc5_.substr(3));
                        break;
                     case "T":
                        this.aks.Basics.onAuthorizedCommand(true,_loc5_.substr(3));
                        break;
                     case "L":
                        this.aks.Basics["\x19\x14\f"](_loc5_.substr(3));
                        break;
                     case "P":
                        this.aks.Basics.onAuthorizedCommandPrompt(_loc5_.substr(3));
                        break;
                     case "C":
                        this.aks.Basics["\x19\x14\b"]();
                        break;
                     case "E":
                        this.aks.Basics.onAuthorizedCommand(false);
                        break;
                     case "I":
                        switch(_loc5_.charAt(3))
                        {
                           case "O":
                              this.aks.Basics["\x19\x14\x0b"](_loc5_.substr(4));
                              break;
                           case "C":
                              this.aks.Basics["\x19\x14\n"](_loc5_.substr(4));
                              break;
                           default:
                              this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                        }
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "r":
                  this.aks.Basics["\x19\x1c\x03"](_loc5_.substr(2));
                  break;
               case "T":
                  this.aks.Basics["\x19\x1b\x19"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Basics["\x19\x16\x0f"](_loc5_.substr(2));
                  break;
               case "W":
                  this.aks.Basics["\x19\x1e\x12"](!_loc4_,_loc5_.substr(3));
                  break;
               case "P":
                  this.aks.Basics["\x19\x1d\x14"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Basics["\x19\x17\x11"](_loc5_.substr(2));
                  break;
               case "p":
                  this.aks.Basics["\x19\x14\r"](_loc5_.substr(2));
                  break;
               case "M":
                  this.aks.Basics["\x19\x1b\x07"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "A":
            switch(_loc3_)
            {
               case "E":
                  var _loc7_ = false;
                  var _loc8_ = false;
                  switch(_loc5_.charAt(2))
                  {
                     case "n":
                        _loc7_ = true;
                        break;
                     case "c":
                        _loc8_ = true;
                        break;
                     default:
                        break;
                     case "i":
                        if(this.api.ui.getUIComponent("MakeMimibiote") == undefined)
                        {
                           this.api.ui.loadUIComponent("MakeMimibiote","MakeMimibiote");
                        }
                        return undefined;
                  }
                  var _loc9_ = _loc5_.charAt(3) != undefined && _loc5_.charAt(3) == "f";
                  if(this.api.ui.getUIComponent("EditPlayer") == undefined)
                  {
                     this.api.ui.loadUIComponent("EditPlayer","EditPlayer",{editName:_loc7_,editColors:_loc8_,force:_loc9_});
                  }
                  break;
               case "c":
                  this.aks.Account.onCommunity(_loc5_.substr(2));
                  break;
               case "d":
                  this.aks.Account.onDofusPseudo(_loc5_.substr(2));
                  break;
               case "l":
                  this.aks.Account.onLogin(!_loc4_,_loc5_.substr(3));
                  break;
               case "L":
                  this.aks.Account.["\x19\x15\x10"](!_loc4_,_loc5_.substr(3));
                  break;
               case "x":
                  this.aks.Account.onServersList(!_loc4_,_loc5_.substr(3));
                  break;
               case "A":
                  this.aks.Account.["\x19\x15\n"](!_loc4_,_loc5_.substr(3));
                  break;
               case "T":
                  this.aks.Account.["\x19\x1d\x1a"](!_loc4_,_loc5_.substr(3));
                  break;
               case "X":
                  this.aks.Account.["\x19\x1c\x0e"](!_loc4_,true,_loc5_.substr(3));
                  break;
               case "Y":
                  this.aks.Account.["\x19\x1c\x0e"](!_loc4_,false,_loc5_.substr(3));
                  break;
               case "Z":
                  this.aks.Account.["\x19\x1c\x0f"](_loc5_.substr(3));
                  break;
               case "S":
                  this.aks.Account.["\x19\x15\x0f"](!_loc4_,_loc5_.substr(4));
                  break;
               case "s":
                  this.aks.Account.["\x19\x1d\x0b"](_loc5_.substr(2));
                  break;
               case "N":
                  this.aks.Account.["\x19\x1a\x13"](_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Account.["\x19\x1c\b"](_loc5_.substr(2));
                  break;
               case "H":
                  this.aks.Account.["\x19\x18\x0f"](_loc5_.substr(2));
                  break;
               case "r":
                  this.aks.Account.["\x19\x1c\x07"](!_loc4_);
                  break;
               case "g":
                  this.aks.Account.["\x19\x18\x07"](_loc5_.substr(2));
                  break;
               case "G":
                  this.aks.Account.["\x19\x18\b"](!_loc4_);
                  break;
               case "q":
                  this.aks.Account.["\x19\x1b\x16"](_loc5_.substr(2));
                  break;
               case "f":
                  this.aks.Account.["\x19\x1a\x15"](_loc5_.substr(2));
                  break;
               case "V":
                  this.aks.Account.onRegionalVersion(_loc5_.substr(2));
                  break;
               case "P":
                  this.aks.Account.["\x19\x15\x0e"](!_loc4_,_loc5_.substr(3));
                  break;
               case "K":
                  this.aks.Account.onKey(_loc5_.substr(2));
                  break;
               case "Q":
                  this.aks.Account.onSecretQuestion(_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Account.onCharacterDelete(!_loc4_,_loc5_.substr(3));
                  break;
               case "M":
                  if((_loc0_ = _loc5_.charAt(2)) !== "?")
                  {
                     this.aks.Account.["\x19\x15\x10"](!_loc4_,_loc5_.substr(3),true);
                  }
                  else
                  {
                     this.aks.Account.["\x19\x15\x11"](_loc5_.substr(3));
                  }
                  break;
               case "F":
                  this.aks.Account.["\x19\x17\x18"](_loc5_.substr(2));
                  break;
               case "m":
                  if(!_global.CONFIG.isStreaming)
                  {
                     this.aks.Account.["\x19\x1a\t"]();
                     break;
                  }
                  var _loc10_ = _global.parseInt(_loc5_.charAt(2),10);
                  new org.flashdevelop.utils.FlashConnect.trace("GoToCongratulation " + _loc10_,"dofus.aks.DataProcessor::postProcess","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/DataProcessor.as",382);
                  if(_global.isNaN(_loc10_))
                  {
                     _loc10_ = 3;
                  }
                  new org.flashdevelop.utils.FlashConnect.trace("GoToCongratulation " + _loc10_,"dofus.aks.DataProcessor::postProcess","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/DataProcessor.as",385);
                  getURL("FSCommand:" add "GoToCongratulation",_loc10_);
                  break;
            }
            break;
         case "G":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Game["\x19\x16\x0b"](!_loc4_,_loc5_.substr(4));
                  break;
               case "J":
                  this.aks.Game["\x19\x19\x0e"](_loc5_.substr(3));
                  break;
               case "P":
                  this.aks.Game["\x19\x1b\b"](_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Game["\x19\x1b\x18"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.Game["\x19\x1d\n"]();
                  break;
               case "E":
                  this.aks.Game.extendIn["\x19\x16\x19"](_loc5_.substr(2));
                  break;
               case "M":
                  this.aks.Game.extendIn["\x19\x1a\x0f"](_loc5_.substr(3));
                  break;
               case "c":
                  this.aks.Game.extendIn["\x19\x15\x07"](_loc5_.substr(2));
                  break;
               case "t":
                  this.aks.Game.extendIn["\x19\x1d\x19"](_loc5_.substr(2));
                  break;
               case "V":
                  this.aks.Game.extendIn["\x19\x19\x16"](true,_loc5_.substr(2));
                  break;
               case "f":
                  this.aks.Game["\x19\x17\x14"](_loc5_.substr(2));
                  break;
               case "I":
                  switch(_loc5_.charAt(2))
                  {
                     case "C":
                        this.aks.Game["\x19\x1b\x04"](_loc5_.substr(4));
                        break;
                     case "E":
                        this.aks.Game.extendIn["\x19\x16\x16"](_loc5_.substr(3));
                        break;
                     case "e":
                        this.aks.Game.extendIn["\x19\x15\x14"](_loc5_.substr(3));
                        break;
                     case "P":
                        this.aks.Game["\x19\x1b\x13"](_loc5_.substr(3),false);
                        break;
                     case "h":
                        this.aks.Game.onHuntInfos(_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "D":
                  switch(_loc5_.charAt(2))
                  {
                     case "M":
                        this.aks.Game["\x19\x1a\x05"](_loc5_.substr(4));
                        break;
                     case "K":
                        this.aks.Game["\x19\x1a\x07"]();
                        break;
                     case "C":
                        this.aks.Game.extendIn["\x19\x15\x02"](_loc5_.substr(3));
                        break;
                     case "Z":
                        this.aks.Game.extendIn["\x19\x1e\x17"](_loc5_.substring(3));
                        break;
                     case "O":
                        this.aks.Game.extendIn["\x19\x15\x03"](_loc5_.substring(3));
                        break;
                     case "F":
                        this.aks.Game.extendIn["\x19\x17\x16"](_loc5_.substring(4));
                        break;
                     case "E":
                        this.aks.Game.extendIn["\x19\x17\x17"](_loc5_.substring(4));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "d":
                  switch(_loc5_.charAt(3))
                  {
                     case "K":
                        this.aks.Game["\x19\x17\f"](_loc5_.substr(4),true);
                        break;
                     case "O":
                        this.aks.Game["\x19\x17\f"](_loc5_.substr(4),false);
                        break;
                     default:
                        this.aks.Game["\x19\x17\x0b"](_loc5_.substr(2));
                  }
                  break;
               case "A":
                  switch(_loc5_.charAt(2))
                  {
                     case "S":
                        this.aks.GameActions["\x19\x13\x19"](_loc5_.substr(3));
                        break;
                     case "F":
                        this.aks.GameActions["\x19\x13\x18"](_loc5_.substr(3));
                        break;
                     default:
                        this.aks.GameActions["\x19\x13\x17"](_loc5_.substr(2));
                  }
                  break;
               case "T":
                  switch(_loc5_.charAt(2))
                  {
                     case "S":
                        this.aks.Game["\x19\x1e\t"](_loc5_.substr(3));
                        break;
                     case "F":
                        this.aks.Game["\x19\x1e\x05"](_loc5_.substr(3));
                        break;
                     case "L":
                        this.aks.Game["\x19\x1e\x06"](_loc5_.substr(4));
                        break;
                     case "M":
                        this.aks.Game["\x19\x1e\x07"](_loc5_.substr(4));
                        break;
                     case "R":
                        this.aks.Game["\x19\x1e\b"](_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "X":
                  this.aks.Game.extendIn["\x19\x17\x07"](_loc5_.substr(2));
                  break;
               case "o":
                  this.aks.Game.extendIn["\x19\x17\x0e"](_loc5_.substr(2));
                  break;
               case "O":
                  this.aks.Game.extendIn["\x19\x18\x03"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "c":
            switch(_loc3_)
            {
               case "M":
                  this.aks.Chat["\x19\x1a\b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "s":
                  this.aks.Chat["\x19\x1c\x11"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.Chat["\x19\x1c\x1b"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Chat["\x19\x1d\x13"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "D":
            switch(_loc3_)
            {
               case "A":
                  this.aks.Dialog["\x19\x16\r"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Dialog["\x19\x16\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "Q":
                  this.aks.Dialog["\x19\x1b\x15"](_loc5_.substr(2));
                  break;
               case "V":
                  this.aks.Dialog["\x19\x19\x16"]();
                  break;
               case "P":
                  this.aks.Dialog["\x19\x1b\x02"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "I":
            switch(_loc3_)
            {
               case "M":
                  this.aks.Infos["\x19\x18\x15"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Infos["\x19\x18\x13"](_loc5_.substr(2));
                  break;
               case "H":
                  this.aks.Infos["\x19\x18\x14"](_loc5_.substr(2));
                  break;
               case "m":
                  this.aks.Infos["\x19\x1a\b"](_loc5_.substr(2));
                  break;
               case "Q":
                  this.aks.Infos["\x19\x1b\x14"](_loc5_.substr(2));
                  break;
               case "O":
                  this.aks.Infos["\x19\x1a\x19"](_loc5_.substr(2));
                  break;
               case "L":
                  switch(_loc5_.charAt(2))
                  {
                     case "S":
                        this.aks.Infos["\x19\x19\x1a"](_loc5_.substr(3));
                        break;
                     case "F":
                        this.aks.Infos["\x19\x19\x19"](_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "S":
            switch(_loc3_)
            {
               case "L":
                  if((_loc0_ = _loc5_.charAt(2)) !== "o")
                  {
                     this.aks.Spells["\x19\x19\x1c"](_loc5_.substr(2));
                  }
                  else
                  {
                     this.aks.Spells["\x19\x15\t"](_loc5_.substr(3));
                  }
                  break;
               case "U":
                  this.aks.Spells["\x19\x1e\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "B":
                  this.aks.Spells["\x19\x1c\x1d"](_loc5_.substr(2));
                  break;
               case "F":
                  this.aks.Spells["\x19\x1d\x01"](_loc5_.substr(2));
                  break;
               case "M":
                  this.aks.Spells.onSpellMove(_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Spells.onSpellRemove(_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Spells.onSpellCooldown(_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "O":
            switch(_loc3_)
            {
               case "a":
                  this.aks.Items["\x19\x13\x16"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Items["\x19\x16\x15"](!_loc4_,_loc5_.substr(3));
                  break;
               case "A":
                  this.aks.Items["\x19\x13\x1b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "C":
                  this.aks.Items["\x19\x15\b"](_loc5_.substr(3));
                  break;
               case "R":
                  this.aks.Items["\x19\x1b\x1c"](_loc5_.substr(2));
                  break;
               case "Q":
                  this.aks.Items["\x19\x1b\x14"](_loc5_.substr(2));
                  break;
               case "M":
                  this.aks.Items["\x19\x1a\x0f"](_loc5_.substr(2));
                  break;
               case "T":
                  this.aks.Items["\x19\x1d\x1c"](_loc5_.substr(2));
                  break;
               case "w":
                  this.aks.Items["\x19\x1e\x11"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.Items["\x19\x19\f"](_loc5_.substr(2));
                  break;
               case "K":
                  this.aks.Items["\x19\x19\r"](_loc5_.substr(2));
                  break;
               case "F":
                  this.aks.Items["\x19\x19\b"](_loc5_.substr(2));
                  break;
               case "d":
                  this.aks.Items.onDeletion(_loc5_.substr(2));
                  break;
               case "r":
                  switch(_loc5_.charAt(2))
                  {
                     case "A":
                        this.aks.InventoryShortcuts.onInventoryShortcutAdded(_loc5_.substr(3));
                        break;
                     case "R":
                        this.aks.InventoryShortcuts.onInventoryShortcutRemoved(_loc5_.substr(3));
                  }
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "F":
            switch(_loc3_)
            {
               case "A":
                  this.aks.Friends["\x19\x13\x1d"](!_loc4_,_loc5_.substr(3));
                  break;
               case "D":
                  this.aks.Friends["\x19\x1c\x01"](!_loc4_,_loc5_.substr(3));
                  break;
               case "L":
                  this.aks.Friends["\x19\x17\x19"](_loc5_.substr(3));
                  break;
               case "S":
                  this.aks.Friends["\x19\x1d\x03"](_loc5_.substr(2));
                  break;
               case "O":
                  this.aks.Friends["\x19\x1a\x18"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "i":
            switch(_loc3_)
            {
               case "A":
                  this.aks.Enemies["\x19\x13\x1c"](!_loc4_,_loc5_.substr(3));
                  break;
               case "D":
                  this.aks.Enemies["\x19\x1b\x1d"](!_loc4_,_loc5_.substr(3));
                  break;
               case "L":
                  this.aks.Enemies["\x19\x16\x1a"](_loc5_.substr(3));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "K":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Key["\x19\x16\x0b"](_loc5_.substr(3));
                  break;
               case "K":
                  this.aks.KeyonKey(!_loc4_);
                  break;
               case "V":
                  this.aks.Key["\x19\x19\x16"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "J":
            switch(_loc3_)
            {
               case "S":
                  this.aks.Job["\x19\x1c\x1a"](_loc5_.substr(3));
                  break;
               case "X":
                  this.aks.Job["\x19\x1e\x16"](_loc5_.substr(3));
                  break;
               case "N":
                  this.aks.Job["\x19\x19\x17"](_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Job["\x19\x1b\x1c"](_loc5_.substr(2));
                  break;
               case "O":
                  this.aks.Job["\x19\x1a\x1d"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "E":
            switch(_loc3_)
            {
               case "R":
                  this.aks.Exchange["\x19\x1c\x04"](!_loc4_,_loc5_.substr(3));
                  break;
               case "K":
                  this.aks.Exchange["\x19\x1b\x18"](_loc5_.substr(2));
                  break;
               case "V":
                  this.aks.Exchange["\x19\x19\x16"](!_loc4_,_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Exchange["\x19\x16\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "c":
                  this.aks.Exchange["\x19\x16\x05"](!_loc4_,_loc5_.substr(3));
                  break;
               case "M":
                  this.aks.Exchange["\x19\x1a\x01"](!_loc4_,_loc5_.substr(3));
                  break;
               case "m":
                  this.aks.Exchange["\x19\x16\x13"](!_loc4_,_loc5_.substr(3));
                  break;
               case "r":
                  this.aks.Exchange["\x19\x15\x1d"](!_loc4_,_loc5_.substr(3));
                  break;
               case "p":
                  this.aks.Exchange["\x19\x1b\x03"](!_loc4_,_loc5_.substr(2));
                  break;
               case "s":
                  this.aks.Exchange["\x19\x1d\x11"](!_loc4_,_loc5_.substr(3));
                  break;
               case "i":
                  this.aks.Exchange["\x19\x1b\x05"](!_loc4_,_loc5_.substr(3));
                  break;
               case "W":
                  this.aks.Exchange["\x19\x16\n"](_loc5_.substr(2));
                  break;
               case "e":
                  this.aks.Exchange["\x19\x1a\r"](_loc5_.substr(2));
                  break;
               case "f":
                  this.aks.Exchange["\x19\x1a\n"](_loc5_.substr(2));
                  break;
               case "w":
                  this.aks.Exchange["\x19\x1a\f"](_loc5_.substr(2));
                  break;
               case "L":
                  this.aks.Exchange["\x19\x19\x1c"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.Exchange["\x19\x1c\x10"](!_loc4_);
                  break;
               case "B":
                  this.aks.Exchange["\x19\x15\x01"](!_loc4_);
                  break;
               case "q":
                  this.aks.Exchange["\x19\x14\x06"](_loc5_.substr(2));
                  break;
               case "H":
                  switch(_loc5_.charAt(2))
                  {
                     case "S":
                        this.aks.Exchange["\x19\x1c\x0b"](_loc5_.substr(3));
                        break;
                     case "L":
                        this.aks.Exchange["\x19\x14\x17"](_loc5_.substr(3));
                        break;
                     case "M":
                        this.aks.Exchange["\x19\x14\x18"](_loc5_.substr(3));
                        break;
                     case "l":
                        this.aks.Exchange["\x19\x14\x15"](_loc5_.substr(3));
                        break;
                     case "m":
                        this.aks.Exchange["\x19\x14\x16"](_loc5_.substr(3));
                        break;
                     case "P":
                        this.aks.Exchange["\x19\x19\t"](_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "J":
                  this.aks.Exchange["\x19\x16\x06"](_loc5_.substr(2));
                  break;
               case "j":
                  this.aks.Exchange["\x19\x16\x07"](_loc5_.substr(2));
                  break;
               case "A":
                  this.aks.Exchange["\x19\x16\b"](_loc5_.substr(2));
                  break;
               case "a":
                  this.aks.Exchange["\x19\x16\t"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "h":
            switch(_loc3_)
            {
               case "P":
                  this.aks.Houses["\x19\x1b\x12"](_loc5_.substr(2));
                  break;
               case "X":
                  this.aks.Houses["\x19\x1a\x02"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Houses["\x19\x16\x0b"](_loc5_.substr(3));
                  break;
               case "S":
                  this.aks.Houses["\x19\x1c\x10"](!_loc4_,_loc5_.substr(3));
                  break;
               case "B":
                  this.aks.Houses["\x19\x15\x01"](!_loc4_,_loc5_.substr(3));
                  break;
               case "V":
                  this.aks.Houses["\x19\x19\x16"]();
                  break;
               case "G":
                  this.aks.Houses["\x19\x18\n"](_loc5_.substr(2));
                  break;
               case "I":
                  this.aks.Houses.onInformations(_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "s":
            switch(_loc3_)
            {
               case "I":
                  this.aks.Storages.onInformations(_loc5_.substr(2));
                  break;
               case "X":
                  this.aks.Storages.onLockedStorage(_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "e":
            switch(_loc3_)
            {
               case "U":
                  this.aks.Emotes["\x19\x1e\f"](!_loc4_,_loc5_.substr(3));
                  break;
               case "L":
                  this.aks.Emotes["\x19\x19\x1c"](_loc5_.substr(2));
                  break;
               case "A":
                  this.aks.Emotes["\x19\x13\x1b"](_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Emotes["\x19\x1b\x1c"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Emotes["\x19\x16\x12"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "d":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Documents["\x19\x16\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "V":
                  this.aks.Documents["\x19\x19\x16"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "z":
            switch(_loc3_)
            {
               case "i":
                  this.aks.Survey.onSurveyInfo(_loc5_.substr(2));
                  break;
               case "n":
                  this.aks.Survey.onSurveyNotify(_loc5_.substr(2));
            }
            break;
         case "g":
            switch(_loc3_)
            {
               case "n":
                  this.aks.Guild["\x19\x1a\x11"]();
                  break;
               case "C":
                  this.aks.Guild["\x19\x16\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "S":
                  this.aks.Guild["\x19\x1d\x0b"](_loc5_.substr(2));
                  break;
               case "I":
                  switch(_loc5_.charAt(2))
                  {
                     case "G":
                        this.aks.Guild["\x19\x18\x17"](_loc5_.substr(3));
                        break;
                     case "M":
                        this.aks.Guild["\x19\x18\x19"](_loc5_.substr(3));
                        break;
                     case "B":
                        this.aks.Guild["\x19\x18\x16"](_loc5_.substr(3));
                        break;
                     case "F":
                        this.aks.Guild["\x19\x18\x1a"](_loc5_.substr(3));
                        break;
                     case "T":
                        switch(_loc5_.charAt(3))
                        {
                           case "M":
                              this.aks.Guild["\x19\x18\x1c"](_loc5_.substr(4));
                              break;
                           case "P":
                              this.aks.Guild["\x19\x18\x1d"](_loc5_.substr(4));
                              break;
                           case "p":
                              this.aks.Guild["\x19\x18\x1b"](_loc5_.substr(4));
                              break;
                           default:
                              this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                        }
                        break;
                     case "H":
                        this.aks.Guild["\x19\x18\x18"](_loc5_.substr(3));
                        break;
                     case "I":
                        this.aks.Guild.onInfos(_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "J":
                  switch(_loc5_.charAt(2))
                  {
                     case "E":
                        this.aks.Guild["\x19\x19\x10"](_loc5_.substr(3));
                        break;
                     case "R":
                        this.aks.Guild["\x19\x1c\x06"](_loc5_.substr(3));
                        break;
                     case "r":
                        this.aks.Guild["\x19\x1c\x05"](_loc5_.substr(3));
                        break;
                     case "K":
                        this.aks.Guild["\x19\x19\x11"](_loc5_.substr(3));
                        break;
                     case "C":
                        this.aks.Guild["\x19\x19\x0f"]();
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "V":
                  this.aks.Guild["\x19\x19\x16"]();
                  break;
               case "K":
                  this.aks.Guild["\x19\x14\x0f"](!_loc4_,_loc5_.substr(3));
                  break;
               case "H":
                  this.aks.Guild["\x19\x18\x0e"](!_loc4_,_loc5_.substr(3));
                  break;
               case "A":
                  this.aks.Guild["\x19\x1d\x17"](_loc5_.substr(2));
                  break;
               case "T":
                  this.aks.Guild["\x19\x1d\x18"](_loc5_.substr(2));
                  break;
               case "U":
                  this.aks.Guild["\x19\x1e\x0e"](_loc5_.substr(2));
                  break;
               case "R":
                  if((_loc0_ = _loc5_.charAt(2)) !== "E")
                  {
                     this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  else
                  {
                     this.aks.Guild.onRankNameChange(_loc5_.substr(3));
                  }
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "W":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Waypoints["\x19\x16\x0b"](_loc5_.substr(2));
                  break;
               case "V":
                  this.aks.Waypoints["\x19\x19\x16"]();
                  break;
               case "U":
                  this.aks.Waypoints["\x19\x1e\r"]();
                  break;
               case "c":
                  this.aks.Subway["\x19\x16\x0b"](_loc5_.substr(2));
                  break;
               case "v":
                  this.aks.Subway["\x19\x19\x16"]();
                  break;
               case "u":
                  this.aks.Subway["\x19\x1e\r"]();
                  break;
               case "p":
                  this.aks.Subway["\x19\x1b\n"](_loc5_.substr(2));
                  break;
               case "w":
                  this.aks.Subway["\x19\x1b\x10"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "a":
            switch(_loc3_)
            {
               case "l":
                  this.aks.Subareas["\x19\x19\x1c"](_loc5_.substr(3));
                  break;
               case "m":
                  this.aks.Subareas["\x19\x14\x02"](_loc5_.substr(2));
                  break;
               case "M":
                  this.aks.Conquest["\x19\x14\x05"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "C":
            switch(_loc3_)
            {
               case "I":
                  switch(_loc5_.charAt(2))
                  {
                     case "J":
                        this.aks.Conquest["\x19\x1b\x0f"](_loc5_.substr(3));
                        break;
                     case "V":
                        this.aks.Conquest["\x19\x1b\x0e"](_loc5_.substr(3));
                        break;
                     default:
                        this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
                  }
                  break;
               case "B":
                  this.aks.Conquest["\x19\x15\x1c"](_loc5_.substr(2));
                  break;
               case "A":
                  this.aks.Conquest["\x19\x1b\t"](_loc5_.substr(2));
                  break;
               case "S":
                  this.aks.Conquest["\x19\x1b\x11"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Conquest["\x19\x1b\x0b"](_loc5_.substr(2));
                  break;
               case "P":
                  this.aks.Conquest["\x19\x1b\r"](_loc5_.substr(2));
                  break;
               case "p":
                  this.aks.Conquest["\x19\x1b\f"](_loc5_.substr(2));
                  break;
               case "W":
                  this.aks.Conquest["\x19\x1e\x13"](_loc5_.substr(2));
                  break;
               case "b":
                  this.aks.Conquest["\x19\x15\x1b"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "Y":
            switch(_loc3_)
            {
               case "D":
                  this.aks.Evenemential.onWorldUniqueDropsStates(_loc5_.substr(2));
                  break;
               case "d":
                  this.aks.Evenemential.onDicesRollResult(_loc5_.substr(2));
                  break;
               case "T":
                  this.aks.Temporis.onTemporisPacketReceived(_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "Z":
            switch(_loc3_)
            {
               case "S":
                  this.aks.Specialization["\x19\x1c\x17"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Specialization["\x19\x15\b"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "f":
            switch(_loc3_)
            {
               case "A":
                  this.aks.Fights.onFightsOpenAndAutoSelect(_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Fights["\x19\x16\x03"](_loc5_.substr(2));
                  break;
               case "L":
                  this.aks.Fights["\x19\x19\x1c"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Fights["\x19\x16\x11"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "T":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Tutorial["\x19\x16\x0b"](_loc5_.substr(2));
                  break;
               case "T":
                  this.aks.Tutorial["\x19\x1c\x19"](_loc5_.substr(2));
                  break;
               case "B":
                  this.aks.Tutorial["\x19\x17\x1b"]();
                  break;
               case "q":
                  this.api.kernel.TutorialManager["\x17\x12\t"]();
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "Q":
            switch(_loc3_)
            {
               case "L":
                  this.aks.Quests["\x19\x19\x1c"](_loc5_.substr(3));
                  break;
               case "S":
                  this.aks.Quests["\x19\x1d\r"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "t":
            switch(_loc3_)
            {
               case "s":
                  this.aks.Ttg["\x19\x19\x1c"](_loc5_.substr(2));
                  break;
               case "d":
                  this.aks.Ttg.onDates(_loc5_.substr(2));
                  break;
               case "a":
                  this.aks.Ttg["\x19\x13\x1b"](_loc5_.substr(2));
                  break;
               case "r":
                  this.aks.Ttg.onCardsRecyclerLoots(_loc5_.substr(2));
                  break;
               case "o":
                  this.aks.Ttg["\x19\x16\x0b"](!_loc4_,_loc5_.substr(2));
                  break;
               case "c":
                  this.aks.Ttg["\x19\x19\x16"](!_loc4_);
                  break;
               case "i":
                  this.aks.Ttg.onOpenMyCollection();
            }
            break;
         case "P":
            switch(_loc3_)
            {
               case "I":
                  this.aks.Party["\x19\x19\x07"](!_loc4_,_loc5_.substr(3));
                  break;
               case "L":
                  this.aks.Party["\x19\x19\x15"](_loc5_.substr(2));
                  break;
               case "R":
                  this.aks.Party["\x19\x1b\x1a"](_loc5_.substr(2));
                  break;
               case "A":
                  this.aks.Party["\x19\x13\x15"](_loc5_.substr(2));
                  break;
               case "C":
                  this.aks.Party["\x19\x16\x0b"](!_loc4_,_loc5_.substr(3));
                  break;
               case "V":
                  this.aks.Party["\x19\x19\x16"](_loc5_.substr(2));
                  break;
               case "F":
                  this.aks.Party["\x19\x17\x15"](!_loc4_,_loc5_.substr(3));
                  break;
               case "M":
                  this.aks.Party["\x19\x1a\x0f"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "R":
            switch(_loc3_)
            {
               case "e":
                  this.aks.Mount["\x19\x16\x1c"](_loc5_.substr(2));
                  break;
               case "x":
                  this.aks.Mount["\x19\x1e\x16"](_loc5_.substr(2));
                  break;
               case "n":
                  this.aks.Mount["\x19\x1a\x10"](_loc5_.substr(2));
                  break;
               case "d":
                  this.aks.Mount.onData(_loc5_.substr(2));
                  break;
               case "p":
                  this.aks.Mount["\x19\x1a\n"](_loc5_.substr(2));
                  break;
               case "D":
                  this.aks.Mount["\x19\x1a\x0b"](_loc5_.substr(2));
                  break;
               case "v":
                  this.aks.Mount["\x19\x19\x16"](_loc5_.substr(2));
                  break;
               case "r":
                  this.aks.Mount["\x19\x1c\n"](_loc5_.substr(2));
                  break;
               default:
                  this.defaultProcessAction(_loc2_,_loc3_,_loc4_,_loc5_);
            }
            break;
         case "t":
            switch(_loc3_)
            {
               case "C":
                  this.aks.Temporis.onTemporisConfig(_loc5_.substr(2));
                  break;
               case "I":
                  this.aks.Temporis.onTemporisInfos(_loc5_.substr(2));
            }
            break;
         case "w":
            if((_loc0_ = _loc3_) !== "r")
            {
               break;
            }
            this.aks.ChooseReward.onData(_loc5_.substr(2));
            break;
      }
   }
}
