class dofus.§\x18\x03\x10§.gapi.ui.MonsterAndLookSelector extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MonsterAndLookSelector";
   static var §\x16\x03\x1b§ = ["static","walk","run","hit","bonus","anim0","anim1","anim2","anim3","anim4","anim5","anim6","anim7","anim8","anim9","anim10","anim11","anim12","anim12","anim13","anim14","anim15","anim16","anim17","anim18","anim111","anim112","anim113","anim114","anim115","anim116","anim117","emote1","emote2","emote3","emote4","emote5","emote6","emote7","emote8","emote9","emote10","emote11","emote12","emote13","emote14","emote15","emote16","emote17","emote18","emote19","emote20","emote21","emoteStatic1","emoteStatic14","emoteStatic15","emoteStatic16","emoteStatic19","emoteStatic20","emoteStatic21","die"];
   function MonsterAndLookSelector()
   {
      super();
   }
   function §\x18\x17§(§\x16\x0e\x1b§)
   {
      this["\x1c\x06\x13"] = _loc2_;
      return this.monster;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MonsterAndLookSelector.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x07"]});
      if(this["\x1c\x06\x13"])
      {
         this.addToQueue({object:this,method:this["\x18\x16\x0e"]});
      }
      else
      {
         this.addToQueue({object:this,method:this["\x18\x16\t"]});
      }
   }
   function initTexts()
   {
      if(this["\x1c\x06\x13"])
      {
         this["\x1e\x10\t"].title = "Liste des monstres";
      }
      else
      {
         this["\x1e\x10\t"].title = "Liste des look";
      }
      this["\x1d\x03\x18"].text = this.api.lang.getText("TYPE");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnSelect.label = this.api.lang.getText("SELECT");
      this._btnSearch.label = this.api.lang.getText("OK");
      this._tiSearch.text = !this._tiSearch.text.length ? "Recherche..." : this._tiSearch.text;
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnSelect.addEventListener("click",this);
      this["\x1c\f\x1b"].addEventListener("itemSelected",this);
      this["\x1c\f\n"].addEventListener("itemSelected",this);
      this["\x1c\r\x03"].addEventListener("selectItem",this);
      this["\x1c\r\x03"].addEventListener("overItem",this);
      this["\x1c\r\x03"].addEventListener("outItem",this);
      this["\x1c\r\x03"].addEventListener("dblClickItem",this);
      this["\x1c\r\x03"]["\x19\x02\n"] = false;
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this._btnSearch.addEventListener("click",this);
      var ref = this;
      var _loc2_ = new Object();
      _loc2_.onSetFocus = function(§\x19\x13\f§, §\x19\x06\x1a§)
      {
         if(eval(Selection.getFocus())._parent == ref._tiSearch)
         {
            if(ref._tiSearch.text == "Recherche...")
            {
               ref._tiSearch.text = "";
            }
         }
         else if(ref._tiSearch.text == "")
         {
            ref._tiSearch.text = "Recherche...";
         }
      };
      Selection.addListener(_loc2_);
   }
   function §\x18\t\x07§(§\x17\x0b\x1b§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      while(_loc4_ < dofus.graphics.gapi.ui.MonsterAndLookSelector["\x16\x03\x1b"].length)
      {
         _loc3_.push({label:dofus.graphics.gapi.ui.MonsterAndLookSelector["\x16\x03\x1b"][_loc4_]});
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\f\n"].dataProvider = _loc3_;
   }
   function initData(§\x17\x0b\x1b§)
   {
      this._cciSprite["\x17\x06\x1b"] = false;
      this["\x1c\x10\x14"] = _loc2_;
      _loc2_.sortOn("label");
      this["\x1c\f\x1b"].dataProvider = _loc2_;
      this["\x1c\f\x1b"].selectedIndex = 0;
      this["\x17\x10\x13"]("");
   }
   function §\x18\x16\t§()
   {
      var ui = this;
      var _loc2_ = new XML();
      _loc2_.ignoreWhite = true;
      _loc2_.onLoad = function()
      {
         var _loc2_ = dofus.Constants["\x16\x05\x10"];
         var _loc3_ = new ank.utils.ExtendedArray();
         var _loc4_ = new ank.utils.ExtendedArray();
         var _loc5_ = this.firstChild.firstChild;
         while(_loc5_ != undefined)
         {
            var _loc6_ = _loc5_.attributes.name;
            var _loc7_ = new ank.utils.ExtendedArray();
            var _loc8_ = _loc5_.firstChild;
            while(_loc8_ != undefined)
            {
               var _loc9_ = _loc8_.attributes.id;
               var _loc10_ = _loc8_.attributes.name;
               var _loc11_ = {iconFile:_loc2_ + _loc9_ + ".swf",name:_loc10_,id:_loc9_,gfxId:_loc9_};
               _loc7_.push(_loc11_);
               _loc4_.push(_loc11_);
               _loc8_ = _loc8_.nextSibling;
            }
            _loc3_.push({label:_loc6_,data:_loc7_});
            _loc5_ = _loc5_.nextSibling;
         }
         _loc3_.push({label:"-- ALL --",data:_loc4_});
         ui.initData(_loc3_);
      };
      _loc2_.load(dofus.Constants["\x1b\x1a\x03"]);
   }
   function §\x18\x16\x0e§(§\x1a\x1b\x12§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = "";
      }
      var _loc3_ = this.api.lang["\x17\x1c\x04"]();
      var _loc4_ = dofus.Constants["\x16\x05\x10"];
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = new ank.utils.ExtendedArray();
      var _loc7_ = new Object();
      for(var a in _loc3_)
      {
         var _loc8_ = _loc3_[a];
         var _loc9_ = _loc8_.b;
         var _loc10_ = _loc7_[_loc9_];
         if(_loc10_ == undefined)
         {
            _loc10_ = {label:this.api.lang["\x17\x1c\x06"](_loc9_).n,data:new ank.utils.ExtendedArray()};
            _loc7_[_loc9_] = _loc10_;
            _loc5_.push(_loc10_);
         }
         var _loc11_ = a;
         var _loc12_ = _loc8_.n;
         var _loc13_ = _loc8_.g;
         var _loc14_ = {iconFile:_loc4_ + _loc13_ + ".swf",name:_loc12_,id:_loc11_,gfxId:_loc13_};
         _loc6_.push(_loc14_);
         _loc10_.data.push(_loc14_);
      }
      _loc5_.push({label:"-- ALL --",data:_loc6_});
      this.initData(_loc5_);
   }
   function select(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ != undefined)
      {
         if(this["\x1c\x06\x13"])
         {
            this["\x17\x07\x19"]({type:"select",ui:"MonsterSelector",monsterId:_loc3_.id});
         }
         else
         {
            this["\x17\x07\x19"]({type:"select",ui:"LookSelector",lookId:_loc3_.id});
         }
         this["\x16\x15\n"]();
      }
   }
   function §\x17\x10\x13§(§\x1a\x1b\x12§)
   {
      var _loc3_ = this["\x1c\f\x1b"].selectedItem.data;
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = new ank.utils.ExtendedString(_loc3_[_loc5_].name)["\x1a\x0b\x15"]().toUpperCase();
         if(!(_loc2_.length && (_loc2_ != "Recherche..." && (_loc2_.length && _loc6_.indexOf(_loc2_) == -1))))
         {
            _loc4_.push(_loc3_[_loc5_]);
         }
         _loc5_ = _loc5_ + 1;
      }
      this["\x1c\r\x03"].dataProvider = _loc4_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnCancel":
            this["\x17\x07\x19"]({type:"cancel"});
            this["\x16\x15\n"]();
         case "_btnSelect":
            this.select({target:{§\x17\x01\x04§:this["\x1c\r\x03"].selectedContentData}});
            break;
         case "_btnSearch":
            this["\x1c\f\x1b"].selectedIndex = 0;
            this["\x17\x10\x13"](new ank.utils.ExtendedString(this._tiSearch.text)["\x1a\x0b\x15"]().toUpperCase());
      }
   }
   function dblClickItem(oEvent)
   {
      this.select(_loc2_);
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ != undefined)
      {
         this._cciSprite.data = {name:_loc3_.name,gfxFile:dofus.Constants["\x16\x1c\x1a"] + _loc3_.gfxId + ".swf",title:_loc3_.id};
         this._cciSprite.enabled = true;
      }
      else
      {
         this._cciSprite.data = undefined;
         this._cciSprite.enabled = false;
      }
   }
   function overItem(oEvent)
   {
      if(_loc2_.target.contentData != undefined)
      {
         this.gapi.showTooltip(_loc2_.target.contentData.name + " (" + _loc2_.target.contentData.id + ", GFX: " + _loc2_.target.contentData.gfxId + ")",_loc2_.target,-20);
      }
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\f\x1b"]:
            var _loc3_ = this["\x1c\f\x1b"].selectedItem.data;
            this["\x1c\r\x03"].dataProvider = _loc3_;
            this["\x1c\x1c\x03"].text = _loc3_.length + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText(!this["\x1c\x06\x13"] ? "LOOK" : "MONSTER"),"m",_loc3_.length < 2);
            break;
         case this["\x1c\f\n"]:
            this._cciSprite.setAnim(this["\x1c\f\n"].selectedItem.label,true);
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this._tiSearch["\x17\x11\x18"])
      {
         this.click({target:this._btnSearch});
         return false;
      }
      return true;
   }
}
