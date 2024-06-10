class dofus.graphics.gapi.§\x17\x01\x06§.§\x1b\x06\f§.SpellFullInfosViewerItem extends ank.gapi.core.UIBasicComponent
{
   var _nLabelWidth = 262.95;
   function SpellFullInfosViewerItem()
   {
      super();
      this._ctrSpellArea._visible = false;
      this._ctrConditionalOver._visible = false;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      var _loc5_ = _global.api;
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         if(_loc4_.fx.description == undefined && _loc4_.description == undefined)
         {
            this._lbl.text = _loc3_;
         }
         else
         {
            if(_loc4_.fx.description != undefined)
            {
               this._lbl.text = _loc4_.fx.description;
            }
            else if(_loc4_.description != undefined)
            {
               this._lbl.text = _loc4_.description;
            }
            var _loc6_ = undefined;
            if(_loc4_.fx["\x17\f\x12"] != undefined)
            {
               _loc6_ = _loc4_.fx["\x17\f\x12"];
            }
            else if(_loc4_["\x17\f\x12"] != undefined)
            {
               _loc6_ = _loc4_["\x17\f\x12"];
            }
            if(_loc6_ != undefined)
            {
               switch(_loc6_)
               {
                  case "N":
                     this["\x1c\r\x1b"].contentPath = "IconNeutralDommage";
                     break;
                  case "F":
                     this["\x1c\r\x1b"].contentPath = "IconFireDommage";
                     break;
                  case "A":
                     this["\x1c\r\x1b"].contentPath = "IconAirDommage";
                     break;
                  case "W":
                     this["\x1c\r\x1b"].contentPath = "IconWaterDommage";
                     break;
                  case "E":
                     this["\x1c\r\x1b"].contentPath = "IconEarthDommage";
                     break;
                  default:
                     this["\x1c\r\x1b"].contentPath = "";
               }
            }
            else if(_loc4_.fx.icon != undefined)
            {
               this["\x1c\r\x1b"].contentPath = _loc4_.fx.icon;
            }
            else if(_loc4_.icon != undefined)
            {
               this["\x1c\r\x1b"].contentPath = _loc4_.icon;
            }
            else
            {
               this["\x1c\r\x1b"].contentPath = "";
            }
         }
         this._ctrConditionalOver.addEventListener("over",this);
         this._ctrConditionalOver.addEventListener("out",this);
         if(_loc4_.ar > 0)
         {
            var _loc7_ = _loc4_.at.charCodeAt(0);
            this._ctrSpellArea.contentPath = dofus.Constants.EMBLEMS_SPELL_AREAS_PATH + _loc7_ + ".swf";
            this._ctrSpellArea._visible = true;
            this._ctrSpellArea.addEventListener("over",this);
            this._ctrSpellArea.addEventListener("out",this);
            this["\x1c\x12\x15"].text = _loc4_.ar != 63 ? _loc4_.ar : _global.api.lang.getText("INFINIT_SHORT");
         }
         else
         {
            this._ctrSpellArea._visible = false;
            this._ctrSpellArea.removeEventListener("over",this);
            this._ctrSpellArea.removeEventListener("out",this);
            this["\x1c\x12\x15"].text = "";
         }
         if(_loc4_.fx["\x16\x1e\f"] != undefined)
         {
            var _loc8_ = _loc4_.fx["\x16\x1e\f"];
         }
         else if(_loc4_["\x16\x1e\f"] != undefined)
         {
            _loc8_ = _loc4_["\x16\x1e\f"];
         }
         if(_loc8_ == undefined || _loc8_[0] == _loc5_.lang.getText("NO_CONDITIONS"))
         {
            this._ctrConditionalOver._visible = false;
            this._sOverText = undefined;
         }
         else
         {
            this._nOverTextLinesCount = _loc8_.length;
            this._sOverText = _loc8_.join("\n- ");
            var _loc9_ = "QuestionMark";
            if(_loc8_.length == 1)
            {
               var _loc10_ = _loc4_.fx.conditionalStateID;
               if(_loc10_ == undefined)
               {
                  _loc10_ = _loc4_.conditionalStateID;
               }
               if(_loc10_ != undefined)
               {
                  _loc9_ = dofus.Constants.STATESICON_FILE;
               }
               else
               {
                  var _loc11_ = _loc4_.fx.conditionalAlignmentID;
                  if(_loc11_ == undefined)
                  {
                     _loc11_ = _loc4_.conditionalAlignmentID;
                  }
                  if(_loc11_ != undefined)
                  {
                     _loc9_ = dofus.Constants["\x16\x02\x1c"] + _loc11_ + ".swf";
                  }
               }
            }
            delete this._ctrConditionalOver.tempVars;
            if(_loc9_ == dofus.Constants.STATESICON_FILE)
            {
               this.setFightStateOnContainer(this._ctrConditionalOver,_loc10_);
            }
            this._ctrConditionalOver.addEventListener("onContentInitialized",this);
            this._ctrConditionalOver.contentPath = _loc9_;
            this._ctrConditionalOver._visible = true;
         }
         this.resizeLabel();
      }
      else if(this._lbl.text != undefined)
      {
         this["\x1e\x03\x18"] = undefined;
         this._lbl.text = "";
         this["\x1c\x12\x15"].text = "";
         this._ctrSpellArea._visible = false;
         this["\x1c\r\x1b"].contentPath = "";
         this._ctrConditionalOver._visible = false;
      }
      else
      {
         this["\x1e\x03\x18"] = undefined;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this["\x16\x05\f"]();
   }
   function size()
   {
      super.size();
      this.addToQueue({object:this,method:this["\x16\x05\f"]});
   }
   function resizeLabel()
   {
      this._lbl.width = this._nLabelWidth;
      if(!this._ctrSpellArea._visible)
      {
         this._lbl.width += 49;
      }
   }
   function onContentInitialized(oEvent)
   {
      var _loc3_ = _loc2_.target;
      if(_loc3_.tempVars)
      {
         this.setFightStateOnContainer(_loc3_,_loc3_.tempVars.fightStateToPut);
      }
   }
   function setFightStateOnContainer(§\x17\x03\x11§, §\x19\x0e\x1d§)
   {
      if(_loc2_["\x17\x01\x05"])
      {
         delete _loc2_.tempVars;
         var _loc4_ = "State_" + _loc3_;
         _loc2_.content["\x1d\x10\x14"].removeMovieClip();
         var _loc5_ = _loc2_.content.attachMovie(_loc4_,"\x1d\x10\x14",_loc2_.content.getNextHighestDepth());
         _loc2_.sizeContent();
         _loc5_._xscale += 70;
         _loc5_._yscale += 70;
         _loc5_._x += 6;
         _loc5_._y += 6;
      }
      else
      {
         _loc2_.tempVars = {fightStateToPut:_loc3_};
      }
   }
   function over(oEvent)
   {
      var _loc3_ = _global.api;
      switch(_loc2_.target)
      {
         case this._ctrConditionalOver:
            if(this._sOverText == undefined)
            {
               break;
            }
            var _loc4_ = _loc3_.lang.getText("CONDITIONS") + "\n- " + this._sOverText;
            var _loc5_ = -20 - this._nOverTextLinesCount * 12;
            _loc3_.ui.showTooltip(_loc4_,_loc2_.target,_loc5_);
            break;
         case this._ctrSpellArea:
            var _loc6_ = this["\x1e\x03\x18"].at.charCodeAt(0);
            var _loc7_ = _loc3_.lang.getText("EFFECT_SHAPE_TYPE_" + _loc6_,[this["\x1e\x03\x18"].ar != 63 ? this["\x1e\x03\x18"].ar : _loc3_.lang.getText("INFINIT")]);
            _loc3_.ui.showTooltip(_loc7_,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      _global.api.ui.hideTooltip();
   }
}
