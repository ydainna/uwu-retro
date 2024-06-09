class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x03\x01§.AlignmentViewerTree extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AlignmentViewerTree";
   function AlignmentViewerTree()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x16\x03\x01"].AlignmentViewerTree.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1c\x19\t"].text = this.api.lang.getText("ALL_SPECIALIZATIONS");
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL_SMALL");
   }
   function addListeners()
   {
      this["\x1d\x07\t"].addEventListener("itemRollOver",this);
      this["\x1d\x07\t"].addEventListener("itemRollOut",this);
      this["\x1d\x07\t"].addEventListener("itemSelected",this);
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Player.specialization;
      var _loc3_ = _loc2_.alignment.index;
      var _loc4_ = _loc2_.index;
      var _loc5_ = _loc2_.order.index;
      var _loc6_ = new Array();
      var _loc7_ = this.api.lang["\x17\x14\x06"]();
      for(var k in _loc7_)
      {
         var _loc8_ = new dofus.datacenter..Specialization(Number(k));
         if(_loc8_.order.index == _loc5_)
         {
            if(_loc8_.description != "null")
            {
               var _loc9_ = _loc8_.alignment;
               var _loc10_ = _loc8_.order;
               var _loc11_ = _loc6_[_loc3_ != _loc9_.index ? _loc9_.index + 1 : 0];
               if(_loc11_ == undefined)
               {
                  _loc11_ = new Array({data:_loc9_,depth:0});
                  _loc6_[_loc3_ != _loc9_.index ? _loc9_.index + 1 : 0] = _loc11_;
               }
               var _loc12_ = _loc11_[_loc10_.index];
               if(_loc12_ == undefined)
               {
                  _loc12_ = new Array({data:_loc10_,depth:1,sortField:-1});
                  _loc11_[_loc10_.index] = _loc12_;
               }
               _loc12_.push({data:_loc8_,depth:2,sortField:_loc9_.value});
            }
         }
      }
      var _loc13_ = new ank.utils.ExtendedArray();
      var _loc14_ = 0;
      while(_loc14_ < _loc6_.length)
      {
         if(_loc6_[_loc14_] != undefined)
         {
            var _loc15_ = new ank.utils.ExtendedArray();
            var _loc16_ = 0;
            while(_loc16_ < _loc6_[_loc14_].length)
            {
               if(_loc6_[_loc14_][_loc16_] != undefined)
               {
                  _loc6_[_loc14_][_loc16_].sortOn("sortField",Array.NUMERIC);
                  _loc15_ = _loc15_.concat(_loc6_[_loc14_][_loc16_]);
               }
               _loc16_ = _loc16_ + 1;
            }
            _loc13_ = _loc13_.concat(_loc15_);
         }
         _loc14_ = _loc14_ + 1;
      }
      this["\x1d\x07\t"].dataProvider = _loc13_;
      if(_loc4_ != undefined)
      {
         var _loc17_ = -1;
         for(var k in _loc13_)
         {
            var _loc18_ = _loc13_[k].data;
            if(_loc18_ instanceof dofus.datacenter..Specialization)
            {
               if(_loc18_.index == _loc4_)
               {
                  _loc17_ = Number(k);
                  break;
               }
            }
         }
         this["\x1d\x07\t"].selectedIndex = _loc17_;
      }
   }
   function itemSelected(oEvent)
   {
      this.gapi.hideTooltip();
      if(_loc2_.row.item.data instanceof dofus.datacenter..Specialization)
      {
         this["\x17\x07\x19"]({type:"specializationSelected",specialization:_loc2_.row.item.data});
      }
      else if(_loc2_.row.item.data instanceof dofus.datacenter.["\x1a\x01\x15"])
      {
         this["\x17\x07\x19"]({type:"orderSelected",order:_loc2_.row.item.data});
      }
      else if(_loc2_.row.item.data instanceof dofus.datacenter.Alignment)
      {
         this["\x17\x07\x19"]({type:"alignementSelected",alignement:_loc2_.row.item.data});
      }
      else
      {
         this["\x1d\x07\t"].selectedIndex = -1;
         this["\x17\x07\x19"]({type:"itemSelected"});
      }
   }
   function itemRollOver(oEvent)
   {
      var _loc3_ = _loc2_.target.item.data;
      if(_loc3_ instanceof dofus.datacenter..Specialization)
      {
         this.gapi.showTooltip(_loc3_.description,this,this["\x0e\x06"] + 30);
      }
   }
   function itemRollOut(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
