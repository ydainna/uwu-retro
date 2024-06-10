class dofus.graphics.gapi.ui.MountStorage extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountStorage";
   static var §\x17\x12\x1a§ = 0;
   static var §\x17\x12\x19§ = 1;
   static var §\x17\x12\x17§ = 2;
   static var §\x17\x12\x18§ = 3;
   function MountStorage()
   {
      super();
   }
   function §\x18\x1b§(§\x17\x0b\b§)
   {
      this["\x1c\x0f\x19"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x19"] = _loc2_;
      this["\x1c\x0f\x19"].addEventListener("modelChanged",this);
      if(this["\x18\t\x1c"])
      {
         this.modelChanged({target:this["\x1c\x0f\x19"]});
      }
      return this["\x04\x0b"]();
   }
   function §\x04\x0b§()
   {
      return this["\x1c\x0f\x19"];
   }
   function §\x1a\x04§(§\x17\x0b\b§)
   {
      this["\x1c\x0f\x1c"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x1c"] = _loc2_;
      this["\x1c\x0f\x1c"].addEventListener("modelChanged",this);
      if(this["\x18\t\x1c"])
      {
         this.modelChanged({target:this["\x1c\x0f\x1c"]});
      }
      return this["\x06\x03"]();
   }
   function §\x06\x03§()
   {
      return this["\x1c\x0f\x1c"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MountStorage.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange.leave();
      return true;
   }
   function createChildren()
   {
      this["\x18\x07\x05"]();
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
      this.gapi["\x1b\x13\x12"]();
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("mountChanged",this);
      this.api.datacenter.Player.Inventory.addEventListener("modelChanged",this);
      this.api.datacenter.Player.mount.addEventListener("nameChanged",this);
      this["\x1c\f\x13"].addEventListener("itemSelected",this);
      this["\x1c\f\x12"].addEventListener("itemSelected",this);
      this["\x1d\x06\x0e"].addEventListener("itemSelected",this);
      this["\x1d\x06\x0e"].addEventListener("itemRollOver",this);
      this["\x1d\x06\x0e"].addEventListener("itemRollOut",this);
      this["\x1d\x06\x18"].addEventListener("itemSelected",this);
      this["\x1d\x06\x18"].addEventListener("itemRollOver",this);
      this["\x1d\x06\x18"].addEventListener("itemRollOut",this);
      this["\x1d\x07\x01"].addEventListener("itemSelected",this);
      this["\x1d\x07\x01"].addEventListener("itemRollOver",this);
      this["\x1d\x07\x01"].addEventListener("itemRollOut",this);
      this._btnClose.addEventListener("click",this);
      this["\x1c\n\x1a"].addEventListener("click",this);
      this["\x1c\n\x07"].addEventListener("click",this);
      this["\x1c\t\b"].addEventListener("click",this);
      this._btnInventory.addEventListener("click",this);
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this["\x1d\x0f\x0e"].onRelease = function()
      {
         this._parent.click({target:this._parent._btnInventoryMount});
      };
   }
   function initTexts()
   {
      this["\x1e\x10\f"].title = this.api.lang.getText("MOUNT_CERTIFICATES");
      this["\x1e\x10\x16"].title = this.api.lang.getText("MOUNT_PARK");
      this["\x1e\x10\x11"].title = this.api.lang.getText("MOUNT_INVENTORY");
      this["\x1e\x10\x1b"].title = this.api.lang.getText("MOUNT_SHED");
      this["\x1c\n\x1a"].label = this.api.lang.getText("MOUNT_SHED_ACTION");
      this["\x1c\n\x07"].label = this.api.lang.getText("MOUNT_PARK_ACTION");
      this["\x1c\t\b"].label = this.api.lang.getText("MOUNT_CERTIFICATE_ACTION");
      this._btnInventory.label = this.api.lang.getText("MOUNT_INVENTORY_ACTION");
      this._lblTitle.text = this.api.lang.getText("MOUNT_MANAGER");
      this["\x1c\x19\x11"].text = this.api.lang.getText("MOUNT_NO_EQUIP");
      this["\x17\x10\x11"](this["\x1c\f\x13"],this.mounts.concat(this.parkMounts));
      this["\x17\x10\x11"](this["\x1c\f\x12"],this.mounts.concat(this.parkMounts));
   }
   function initData()
   {
      this.modelChanged({target:this["\x1c\x0f\x19"]});
      this.modelChanged({target:this["\x1c\x0f\x1c"]});
      this.modelChanged({target:this.api.datacenter.Player.Inventory});
      this.mountChanged();
   }
   function §\x17\x02\t§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.datacenter.Player.Inventory;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         if(_loc5_.type == 97)
         {
            _loc2_.push(_loc5_);
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc2_;
   }
   function §\x18\x06\x19§(§\x16\f\x12§)
   {
      this["\x1d\b\x05"]._visible = !_loc2_;
      this["\x1c\n\x1a"]._visible = !_loc2_;
   }
   function §\x18\x06\x11§(§\x16\f\x12§)
   {
      this["\x1d\b\x02"]._visible = !_loc2_;
      this["\x1c\n\x07"]._visible = !_loc2_;
   }
   function §\x18\x06\x04§(§\x16\f\x12§)
   {
      this["\x1d\x07\x1b"]._visible = !_loc2_;
      this["\x1c\t\b"]._visible = !_loc2_;
   }
   function §\x18\x06\f§(§\x16\f\x12§)
   {
      this["\x1d\x07\x1d"]._visible = !_loc2_;
      this._btnInventory._visible = !_loc2_;
   }
   function §\x18\x06\x12§(§\x16\f\x12§)
   {
      this["\x1e\x10\x17"]._visible = !_loc2_;
      this["\x1d\x12\x12"]._visible = !_loc2_;
      if(!_loc2_)
      {
         this["\x19\x01\x0f"](0);
         this["\x18\x1e\x16"](0);
      }
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1e\x10\x14"]._visible = !_loc2_;
      this["\x1c\x11\x13"]._visible = !_loc2_;
      if(!_loc2_)
      {
         this["\x19\x01\x0f"](14);
         this["\x18\x1e\x16"](-13);
      }
   }
   function §\x19\x01\x0f§(§\x1b\x1a\x14§)
   {
      this._btnInventory._y = 146 + _loc2_;
      this["\x1c\n\x1a"]._y = 146 + _loc2_;
   }
   function §\x18\x1e\x16§(§\x1b\x1a\x14§)
   {
      this["\x1c\t\b"]._y = 383 + _loc2_;
      this["\x1c\n\x07"]._y = 383 + _loc2_;
   }
   function §\x18\x05\x1c§(§\x16\f\x12§)
   {
      this["\x18\x06\x19"](_loc2_);
      this["\x18\x06\x11"](_loc2_);
      this["\x18\x06\x04"](_loc2_);
      this["\x18\x06\f"](_loc2_);
   }
   function §\x18\x07\x05§()
   {
      this["\x18\x05\x1c"](true);
      this["\x18\x06\x12"](true);
      this["\x18\x06\x0f"](true);
   }
   function §\x17\x10\x11§(§\x16\x17\x0e§, §\x17\x0b\x16§)
   {
      var _loc4_ = _loc2_.selectedItem.id;
      var _loc5_ = _loc2_.selectedItem.modelID;
      var _loc6_ = !_loc2_.dataProvider.length ? new ank.utils.ExtendedArray() : _loc2_.dataProvider;
      if(!_loc2_.dataProvider.length)
      {
         _loc6_.push({label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_MAN"),id:1});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_WOMAN"),id:2});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_FECONDABLE"),id:3});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_FECONDEE"),id:4});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_MOUNTABLE"),id:5});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_NONAME"),id:6});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_CAPACITY"),id:7});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_MUSTXP"),id:8});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_TIRED"),id:9});
         _loc6_.push({label:this.api.lang.getText("MOUNT_FILTER_NOTIRED"),id:10});
      }
      _loc3_.sortOn("modelID");
      for(var i in _loc3_)
      {
         var _loc7_ = false;
         loop1:
         for(var j in _loc6_)
         {
            if(_loc6_[j].modelID != _loc3_[i].modelID)
            {
               continue;
            }
            _loc7_ = true;
            while(true)
            {
               if(§§pop() == null)
               {
                  break loop1;
               }
            }
         }
         if(!_loc7_)
         {
            _loc6_.push({label:_loc3_[i].modelName,id:11,modelID:_loc3_[i].modelID});
         }
      }
      _loc6_.sortOn(["id","modelName"],Array.NUMERIC);
      var _loc8_ = -1;
      for(var i in _loc6_)
      {
         if(_loc6_[i].id == _loc4_ && _loc6_[i].modelID == _loc5_)
         {
            _loc8_ = _global.parseInt(i);
         }
      }
      _loc2_.dataProvider = _loc6_;
      _loc2_.selectedIndex = _loc8_ == -1 ? 0 : _loc8_;
   }
   function §\x18\x18\x07§(§\x17\x0b\x16§, §\x16\x17\x10§)
   {
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = _loc3_.selectedItem.id;
      loop11:
      switch(_loc5_)
      {
         case 0:
            _loc4_ = _loc2_;
            break;
         case 1:
            for(var i in _loc2_)
            {
               if(!_loc2_[i].sex)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 2:
            for(var i in _loc2_)
            {
               if(_loc2_[i].sex)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 3:
            for(var i in _loc2_)
            {
               if(_loc2_[i].fecondable && _loc2_[i].fecondation == -1 || _loc2_[i].fecondable && _loc2_[i].tired == _loc2_[i].tiredMax)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 4:
            for(var i in _loc2_)
            {
               if(_loc2_[i].fecondation > 0)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 5:
            for(var i in _loc2_)
            {
               if(_loc2_[i].mountable)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 6:
            for(var i in _loc2_)
            {
               if(_loc2_[i].name == this.api.lang.getText("NO_NAME"))
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 7:
            for(var i in _loc2_)
            {
               if(_loc2_[i]["\x16\x17\x01"].length > 0)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 8:
            for(var i in _loc2_)
            {
               if(_loc2_[i].mountable && _loc2_[i].level < 5)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 9:
            for(var i in _loc2_)
            {
               if(_loc2_[i].tired == _loc2_[i].tiredMax)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 10:
            for(var i in _loc2_)
            {
               if(_loc2_[i].tired < _loc2_[i].tiredMax)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
            break;
         case 11:
            §§enumerate(_loc2_);
            while(true)
            {
               var _loc0_ = null;
               if((_loc0_ = §§enumeration()) == null)
               {
                  break loop11;
               }
               var i = _loc0_;
               if(_loc2_[i].modelID == _loc3_.selectedItem.modelID)
               {
                  _loc4_.push(_loc2_[i]);
               }
            }
      }
      return _loc4_;
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticR_front","anim_front",11);
      _loc3_.attachMovie("staticR_back","anim_back",10);
   }
   function mountChanged(oEvent)
   {
      this["\x18\x07\x05"]();
      var _loc3_ = this.api.datacenter.Player.mount;
      var _loc4_ = _loc3_ != undefined;
      if(_loc4_)
      {
         this["\x1c\x19\x0f"].text = _loc3_.modelName;
         this["\x1c\x19\x10"].text = _loc3_.name;
         this["\x1d\x06\x01"]["\x17\x12\x07"]();
         this["\x1d\x06\x01"].contentPath = _loc3_.gfxFile;
         var _loc5_ = new ank.battlefield.datacenter..Sprite("-1",undefined,"",0,0);
         _loc5_.mount = _loc3_;
         this.api.colors.addSprite(this["\x1d\x06\x01"],_loc5_);
      }
      this["\x1c\x19\x11"]._visible = !_loc4_;
      this["\x1c\x19\x0f"]._visible = _loc4_;
      this["\x1c\x19\x10"]._visible = _loc4_;
      this["\x1d\x06\x01"]._visible = _loc4_;
      this["\x1d\x0f\x0e"]._visible = _loc4_;
   }
   function modelChanged(oEvent)
   {
      this["\x18\x07\x05"]();
      switch(_loc2_.target)
      {
         case this["\x1c\x0f\x19"]:
            this["\x1d\x07\x01"].dataProvider = this["\x18\x18\x07"](this["\x1c\x0f\x19"],this["\x1c\f\x13"]);
            this["\x1d\x07\x01"].sortOn("modelID");
            this["\x17\x10\x11"](this["\x1c\f\x13"],this.mounts.concat(this.parkMounts));
            this["\x17\x10\x11"](this["\x1c\f\x12"],this.mounts.concat(this.parkMounts));
            break;
         case this["\x1c\x0f\x1c"]:
            this["\x1d\x06\x18"].dataProvider = this["\x18\x18\x07"](this["\x1c\x0f\x1c"],this["\x1c\f\x12"]);
            this["\x1d\x07\x01"].sortOn("modelID");
            this["\x17\x10\x11"](this["\x1c\f\x13"],this.mounts.concat(this.parkMounts));
            this["\x17\x10\x11"](this["\x1c\f\x12"],this.mounts.concat(this.parkMounts));
            break;
         case this.api.datacenter.Player.Inventory:
            this["\x1d\x06\x0e"].dataProvider = this["\x17\x02\t"]();
      }
   }
   function click(oEvent)
   {
      var _loc3_ = this.api.network.Exchange;
      loop0:
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnInventoryMount:
            this["\x1d\x1c\x16"] = dofus.graphics.gapi.ui.MountStorage["\x17\x12\x18"];
            this["\x1d\x12\x12"].mount = this.api.datacenter.Player.mount;
            this["\x18\x05\x1c"](false);
            this["\x18\x06\x0f"](true);
            this["\x18\x06\x12"](false);
            this["\x18\x06\f"](true);
            break;
         case this["\x1c\n\x1a"]:
            switch(this["\x1d\x1c\x16"])
            {
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x17"]:
                  _loc3_["\x1a\b\x0b"](this["\x1c\x11\x13"]["\x18\x10\x17"].ID);
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x19"]:
                  _loc3_["\x1a\b\r"](this["\x1d\x12\x12"].mount.ID);
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x18"]:
                  _loc3_["\x1a\b\f"](this.api.datacenter.Player.mount.ID);
            }
            break;
         case this._btnInventory:
            switch(this["\x1d\x1c\x16"])
            {
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x1a"]:
                  _loc3_["\x1a\b\t"](this["\x1d\x12\x12"].mount.ID);
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x19"]:
                  _loc3_["\x1a\b\r"](this["\x1d\x12\x12"].mount.ID);
                  _loc3_["\x1a\b\t"](this["\x1d\x12\x12"].mount.ID);
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x17"]:
            }
            break;
         case this["\x1c\n\x07"]:
            switch(this["\x1d\x1c\x16"])
            {
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x1a"]:
                  _loc3_["\x1a\b\n"](this["\x1d\x12\x12"].mount.ID);
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x17"]:
                  break;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x18"]:
                  _loc3_["\x1a\b\f"](this["\x1d\x12\x12"].mount.ID);
                  _loc3_["\x1a\b\n"](this["\x1d\x12\x12"].mount.ID);
            }
            break;
         case this["\x1c\t\b"]:
            switch(this["\x1d\x1c\x16"])
            {
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x1a"]:
                  _loc3_["\x1a\b\b"](this["\x1d\x12\x12"].mount.ID);
                  break loop0;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x19"]:
                  _loc3_["\x1a\b\r"](this["\x1d\x12\x12"].mount.ID);
                  _loc3_["\x1a\b\b"](this["\x1d\x12\x12"].mount.ID);
                  break loop0;
               case dofus.graphics.gapi.ui.MountStorage["\x17\x12\x18"]:
                  _loc3_["\x1a\b\f"](this["\x1d\x12\x12"].mount.ID);
                  _loc3_["\x1a\b\b"](this["\x1d\x12\x12"].mount.ID);
            }
      }
   }
   function itemSelected(oEvent)
   {
      this["\x18\x05\x1c"](false);
      switch(_loc2_.target)
      {
         case this["\x1d\x07\x01"]:
            this["\x1d\x1c\x16"] = dofus.graphics.gapi.ui.MountStorage["\x17\x12\x1a"];
            this["\x1d\x12\x12"].mount = _loc2_.row.item;
            this["\x18\x06\x0f"](true);
            this["\x18\x06\x19"](true);
            this["\x18\x06\x12"](false);
            break;
         case this["\x1d\x06\x18"]:
            this["\x1d\x1c\x16"] = dofus.graphics.gapi.ui.MountStorage["\x17\x12\x19"];
            this["\x1d\x12\x12"].mount = _loc2_.row.item;
            this["\x18\x06\x0f"](true);
            this["\x18\x06\x11"](true);
            this["\x18\x06\x12"](false);
            break;
         case this["\x1d\x06\x0e"]:
            this["\x18\x06\x11"](true);
            this["\x18\x06\f"](true);
            this["\x1d\x1c\x16"] = dofus.graphics.gapi.ui.MountStorage["\x17\x12\x17"];
            this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.row.item;
            this["\x18\x06\x04"](true);
            this["\x18\x06\x12"](true);
            this["\x18\x06\x0f"](false);
            break;
         case this["\x1c\f\x13"]:
            this["\x1d\x07\x01"].dataProvider = this["\x18\x18\x07"](this["\x1c\x0f\x19"],this["\x1c\f\x13"]);
            this["\x18\x07\x05"]();
            break;
         case this["\x1c\f\x12"]:
            this["\x1d\x06\x18"].dataProvider = this["\x18\x18\x07"](this["\x1c\x0f\x1c"],this["\x1c\f\x12"]);
            this["\x18\x07\x05"]();
            break;
         default:
            this["\x18\x07\x05"]();
      }
   }
   function itemRollOver(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1d\x06\x0e"]:
            break;
         case this["\x1d\x06\x18"]:
         case this["\x1d\x07\x01"]:
            this.gapi.showTooltip(_loc2_.row.item["\x18\x02\x01"](),_loc2_.target,20,{bXLimit:true,bYLimit:false});
      }
   }
   function itemRollOut(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function nameChanged(oEvent)
   {
      this["\x1c\x19\x10"].text = _loc2_.name;
   }
}
