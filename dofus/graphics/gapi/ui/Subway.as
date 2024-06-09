class dofus.§\x18\x03\x10§.gapi.ui.Subway extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Subway";
   static var §\x1b\f\x06§ = 1;
   static var §\x1b\f\x05§ = 2;
   var §\x1d\x14\x0e§ = 0;
   var §\x1d\x1e\x18§ = dofus.graphics.gapi.ui.Subway["\x1b\f\x06"];
   function Subway()
   {
      super();
   }
   function §\x11\x19§(§\x17\n\x1b§)
   {
      this.addToQueue({object:this,method:function(§\x17\x04\x0e§)
      {
         this["\x1c\x0f\x05"] = _loc2_;
         if(this["\x18\t\x1c"])
         {
            this.initData();
         }
      },params:[_loc2_]});
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x14§(§\x1b\x12\t§)
   {
      this["\x1d\x1e\x18"] = _loc2_;
      return this["\f\r"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Subway.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      switch(this["\x1d\x1e\x18"])
      {
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x06"]:
            this.api.network.Subway["\x18\x13\x1d"]();
            break;
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x05"]:
            this.api.network.Subway["\x1a\x07\t"]();
      }
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      switch(this["\x1d\x1e\x18"])
      {
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x06"]:
            this["\x1e\x10\t"].title = this.api.lang.getText("SUBWAY_LIST");
            this["\x1c\x1d\x06"]._visible = false;
            this["\x1c\x16\x17"]._visible = true;
            break;
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x05"]:
            this["\x1e\x10\t"].title = this.api.lang.getText("PRISM_LIST");
            this["\x1c\x1d\x06"]._visible = true;
            this["\x1c\x16\x17"]._visible = false;
            this["\x1c\x1d\x06"].text = this.api.lang.getText("PRISM_NOTICE");
      }
      this["\x1c\x15\x14"].text = this.api.lang.getText("COORDINATES_SMALL");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("PLACE");
      this["\x1c\x15\x19"].text = this.api.lang.getText("COST");
      this["\x1c\x16\x17"].text = this.api.lang.getText("CLICK_ON_WAYPOINT");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      switch(this["\x1d\x1e\x18"])
      {
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x06"]:
            for(var a in this["\x1c\x0f\x05"])
            {
               var _loc2_ = new Object();
               _loc2_._y = this["\x1d\x10\x17"]._y;
               _loc2_._height = 20;
               _loc2_.backgroundDown = "ButtonTabDown";
               _loc2_.backgroundUp = "ButtonTabUp";
               _loc2_.styleName = "BrownTabButton";
               _loc2_.toggle = true;
               _loc2_.selected = true;
               _loc2_.enabled = true;
               _loc2_.label = " " + this["\x1c\x0f\x05"][a][0]["\x16\x17\f"] + " ";
               var _loc3_ = ank.gapi.controls.Button(this.attachMovie("Button","_btnTab" + a,this.getNextHighestDepth(),_loc2_));
               _loc3_.addEventListener("click",this);
            }
            this.setCurrentTab(0);
            break;
         case dofus.graphics.gapi.ui.Subway["\x1b\f\x05"]:
            this["\x1c\x0f\x05"].sortOn("fieldToSort",Array.CASEINSENSITIVE);
            this["\x1d\x07\x06"].dataProvider = this["\x1c\x0f\x05"];
      }
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this["\x1d\x07\x06"].addEventListener("itemSelected",this);
   }
   function initData()
   {
      if(this["\x1d\x1e\x18"] != dofus.graphics.gapi.ui.Subway["\x1b\f\x06"])
      {
         return undefined;
      }
      if(this["\x1c\x0f\x05"] != undefined && this["\x1c\x0f\x05"].length > 0)
      {
         for(var a in this["\x1c\x0f\x05"])
         {
            this.setCurrentTab(Number(a));
            return undefined;
            
            break;
         }
      }
   }
   function §\x1b\x14\x13§()
   {
      if(this["\x1d\x1e\x18"] != dofus.graphics.gapi.ui.Subway["\x1b\f\x06"])
      {
         return undefined;
      }
      this["\x1c\x0f\x05"][this["\x1d\x14\x0e"]].sortOn("fieldToSort",Array.CASEINSENSITIVE);
      this["\x1d\x07\x06"].dataProvider = this["\x1c\x0f\x05"][this["\x1d\x14\x0e"]];
   }
   function setCurrentTab(§\x19\x04\x0b§)
   {
      if(this["\x1d\x1e\x18"] != dofus.graphics.gapi.ui.Subway["\x1b\f\x06"])
      {
         return undefined;
      }
      var _loc3_ = this["_btnTab" + this["\x1d\x14\x0e"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1d\x14\x0e"] = _loc2_;
      this["\x1b\x14\x13"]();
      this["\x1a\x1a\x11"]();
   }
   function §\x1a\x1a\x11§()
   {
      if(this["\x1d\x1e\x18"] != dofus.graphics.gapi.ui.Subway["\x1b\f\x06"])
      {
         return undefined;
      }
      var _loc2_ = this["\x1d\x10\x17"]._x;
      for(var a in this["\x1c\x0f\x05"])
      {
         var _loc3_ = ank.gapi.controls.Button(this["_btnTab" + a]);
         _loc3_._x = _loc2_;
         _loc3_["\x1a\x18\x1a"]();
         _loc2_ += _loc3_.width;
      }
   }
   function click(oEvent)
   {
      var _loc3_ = _loc2_.target._name;
      switch(_loc3_)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         default:
            this.setCurrentTab(Number(_loc3_.substr(7)));
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      var _loc4_ = _loc3_.cost;
      if(this.api.datacenter.Player.Kama < _loc4_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGH_RICH"),"ERROR_BOX");
      }
      else
      {
         switch(this["\x1d\x1e\x18"])
         {
            case dofus.graphics.gapi.ui.Subway["\x1b\f\x06"]:
               this.api.network.Subway.use(_loc3_.mapID);
               break;
            case dofus.graphics.gapi.ui.Subway["\x1b\f\x05"]:
               this.api.network.Subway["\x1a\x07\f"](_loc3_.mapID);
         }
      }
   }
}
