class dofus.graphics.gapi.§\x17\x01\x06§.ChatFilters extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChatFilters";
   function ChatFilters()
   {
      super();
   }
   function §\x1e\x1a\x0e§()
   {
      return new Array(this._btnFilter0.selected,this._btnFilter1.selected,this._btnFilter2.selected,this._btnFilter3.selected,this._btnFilter4.selected,this._btnFilter5.selected,this._btnFilter6.selected,this._btnFilter7.selected,this._btnFilter8.selected,this._btnFilter9.selected,this._btnFilter10.selected);
   }
   function selectFilter(§\x19\x07\x16§, §\x16\x12\x04§)
   {
      var _loc4_ = this["_btnFilter" + _loc2_];
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      _loc4_.selected = _loc3_;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ChatFilters.CLASS_NAME);
   }
   function createChildren()
   {
      var _loc2_ = this.api.lang.getConfigText("CHAT_FILTERS");
      var _loc3_ = 0;
      for(; _loc3_ < _loc2_.length; _loc3_ = _loc3_ + 1)
      {
         if(_loc2_[_loc3_] != 1)
         {
            var _loc4_ = this["_btnFilter" + (_loc3_ + 1)];
            if(_loc4_ == undefined)
            {
               continue;
            }
            _loc4_._visible = false;
         }
      }
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnFilter0.addEventListener("click",this);
      this._btnFilter1.addEventListener("click",this);
      this._btnFilter2.addEventListener("click",this);
      this._btnFilter3.addEventListener("click",this);
      this._btnFilter4.addEventListener("click",this);
      this._btnFilter5.addEventListener("click",this);
      this._btnFilter6.addEventListener("click",this);
      this._btnFilter7.addEventListener("click",this);
      this._btnFilter8.addEventListener("click",this);
      this._btnFilter10.addEventListener("click",this);
      this._btnFilter0.addEventListener("over",this);
      this._btnFilter1.addEventListener("over",this);
      this._btnFilter2.addEventListener("over",this);
      this._btnFilter3.addEventListener("over",this);
      this._btnFilter4.addEventListener("over",this);
      this._btnFilter5.addEventListener("over",this);
      this._btnFilter6.addEventListener("over",this);
      this._btnFilter7.addEventListener("over",this);
      this._btnFilter8.addEventListener("over",this);
      this._btnFilter10.addEventListener("over",this);
      this._btnFilter0.addEventListener("out",this);
      this._btnFilter1.addEventListener("out",this);
      this._btnFilter2.addEventListener("out",this);
      this._btnFilter3.addEventListener("out",this);
      this._btnFilter4.addEventListener("out",this);
      this._btnFilter5.addEventListener("out",this);
      this._btnFilter6.addEventListener("out",this);
      this._btnFilter7.addEventListener("out",this);
      this._btnFilter8.addEventListener("out",this);
      this._btnFilter10.addEventListener("out",this);
      var _loc2_ = this.api.kernel.ChatManager.visibleTypes;
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = this["_btnFilter" + _loc3_];
         if(_loc4_ != undefined)
         {
            _loc4_.selected = this.api.datacenter.Basics.chat_type_visible[_loc3_] == true;
            this.api.kernel.ChatManager.setTypeVisible(_loc3_,_loc4_.selected);
         }
         _loc3_ = _loc3_ + 1;
      }
      this.api.kernel.ChatManager.setTypeVisible(1,true);
      this.api.kernel.ChatManager.setTypeVisible(9,true);
   }
   function click(oEvent)
   {
      this["\x17\x07\x19"]({type:"filterChanged",filter:Number(_loc2_.target._name.substr(10)),selected:_loc2_.target.selected});
      var _loc0_ = _loc2_.target._name;
   }
   function over(oEvent)
   {
      var _loc3_ = Number(_loc2_.target._name.substr(10));
      this.gapi.showTooltip(this.api.lang.getText("CHAT_TYPE" + _loc3_),_loc2_.target,-20,{bXLimit:true,bYLimit:true});
      var _loc0_ = _loc2_.target._name;
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
