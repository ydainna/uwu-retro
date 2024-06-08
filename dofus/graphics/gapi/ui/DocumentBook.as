class dofus.§\x18\x03\x10§.gapi.ui.DocumentBook extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "DocumentBook";
   function DocumentBook()
   {
      super();
   }
   function §\x12\x14§(§\x19\x12\x12§)
   {
      this["\x1e\x03\f"] = _loc2_;
      return this.document;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.DocumentBook.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this.api.network.Documents["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x17\x14"],params:[0]});
      this._btnPrevious._visible = false;
      this._btnNext._visible = false;
      this._btnAskPageLeft.enabled = false;
      this._btnAskPageRight.enabled = false;
   }
   function addListeners()
   {
      this._btnPrevious.addEventListener("click",this);
      this._btnPrevious.addEventListener("over",this);
      this._btnPrevious.addEventListener("out",this);
      this._btnNext.addEventListener("click",this);
      this._btnNext.addEventListener("over",this);
      this._btnNext.addEventListener("out",this);
      this._btnClose.addEventListener("click",this);
      this._btnAskPageLeft.addEventListener("click",this);
      this._btnAskPageRight.addEventListener("click",this);
      this._btnAskPageLeft.addEventListener("over",this);
      this._btnAskPageRight.addEventListener("over",this);
      this._btnAskPageLeft.addEventListener("out",this);
      this._btnAskPageRight.addEventListener("out",this);
   }
   function §\x1a\x17\x14§(§\x19\x0b\x17§)
   {
      if(this["\x1e\x03\f"] == undefined)
      {
         return undefined;
      }
      this["\x1d\x14\x17"] = _loc2_;
      var _loc3_ = this["\x1e\x03\f"]["\x17\x1d\x02"](_loc2_);
      var _loc4_ = this["\x1e\x03\f"]["\x17\x1d\x02"](_loc2_ + 1);
      this["\x18\x13\x14"](_loc3_,true);
      this["\x18\x13\x14"](_loc4_,false);
      this._btnPrevious._visible = _loc2_ > 0;
      this._btnNext._visible = _loc2_ + 2 < this["\x1e\x03\f"]["\x1a\x03\f"];
   }
   function §\x18\x13\x14§(§\x19\x1e\x1c§, §\x16\x0e\n§)
   {
      var _loc4_ = !_loc3_ ? "_mcRightRenderer" : "_mcLeftRenderer";
      var _loc5_ = !_loc3_ ? this["\x1d\x0f\x13"] : this["\x1d\r\x07"];
      this[_loc4_].removeMovieClip();
      switch(_loc2_.type)
      {
         case "title":
            this.attachMovie("BookPageTitle",_loc4_,this.getNextHighestDepth(),{_x:_loc5_._x,_y:_loc5_._y,page:_loc2_});
            break;
         case "index":
            this.attachMovie("BookPageIndex",_loc4_,this.getNextHighestDepth(),{_x:_loc5_._x,_y:_loc5_._y,page:_loc2_});
            this[_loc4_].addEventListener("chapterChange",this);
            break;
         case "text":
            this.attachMovie("BookPageText",_loc4_,this.getNextHighestDepth(),{_x:_loc5_._x,_y:_loc5_._y,page:_loc2_});
            break;
         case "blank":
      }
      if(_loc3_)
      {
         this["\x1c\x1a\x06"].text = _loc2_.num != undefined ? _loc2_.num : "";
         this._btnAskPageLeft.enabled = _loc2_.num != undefined;
      }
      else
      {
         this["\x1c\x1e\x0f"].text = _loc2_.num != undefined ? _loc2_.num : "";
         this._btnAskPageRight.enabled = _loc2_.num != undefined;
      }
   }
   function §\x16\x06\x06§(§\x19\x0b\x17§)
   {
      var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:_loc2_,max:_loc2_});
      _loc3_.addEventListener("validate",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnPrevious":
            this["\x1a\x17\x14"](this["\x1d\x14\x17"] - 2);
            break;
         case "_btnNext":
            this["\x1a\x17\x14"](this["\x1d\x14\x17"] + 2);
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_btnAskPageLeft":
            this["\x16\x06\x06"](1);
            break;
         case "_btnAskPageRight":
            this["\x16\x06\x06"](this["\x1e\x03\f"]["\x1a\x03\f"] - 1);
      }
   }
   function chapterChange(oEvent)
   {
      var _loc3_ = _loc2_.pageNum % 2 != 0 ? _loc2_.pageNum - 1 : _loc2_.pageNum;
      this["\x1a\x17\x14"](_loc3_);
   }
   function validate(oEvent)
   {
      var _loc3_ = Number(_loc2_.value);
      if(_global.isNaN(_loc3_))
      {
         _loc3_ = 1;
      }
      if(_loc3_ < 1)
      {
         _loc3_ = 1;
      }
      if(_loc3_ >= this["\x1e\x03\f"]["\x1a\x03\f"])
      {
         _loc3_ = this["\x1e\x03\f"]["\x1a\x03\f"] - 1;
      }
      var _loc4_ = _loc3_ % 2 != 0 ? _loc3_ - 1 : _loc3_;
      this["\x1a\x17\x14"](_loc4_);
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnPrevious":
            this.gapi.showTooltip(this.api.lang.getText("PREVIOUS_PAGE"),_loc2_.target,-20);
            break;
         case "_btnNext":
            this.gapi.showTooltip(this.api.lang.getText("NEXT_PAGE"),_loc2_.target,-20);
            break;
         default:
            this.gapi.showTooltip(this.api.lang.getText("CHOOSE_PAGE_NUMBER"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
