class dofus.graphics.gapi.ui.Register extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Register";
   static var §\x18\x17\x04§ = 100;
   var §\x1d\x16\x18§ = 0;
   var §\x1c\x04\x18§ = false;
   var §\x1d\x15\x05§ = 0;
   var §\x1c\x03\x02§ = false;
   var §\x1c\x03\x05§ = false;
   function Register()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Register.CLASS_NAME);
      this._oLoader = new LoadVars();
      var ref = this;
      this["\x1d\x07\r"] = new LoadVars();
      this["\x1d\x07\r"].onLoad = function(bSuccess)
      {
         ref["\x19\x18\x0b"](_loc2_);
      };
      this["\x1d\x07\r"].load(this.api.lang.getConfigText("WHERE_HEAR_LINK"));
   }
   function §\x16\x15\n§()
   {
      this["\x17\x07\x19"]({type:"close",target:this});
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1b\r\r"],params:[1]});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x18\t\x13"]});
      this.addToQueue({object:this,method:this["\x1a\x12\x15"],params:[this.api.datacenter.Basics.aks_detected_country]});
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("REGISTER_TITLE");
      this["\x1c\x12\x02"].text = this.api.lang.getText("REGISTER_SECTION1_TITLE");
      this["\x1c\x12\x01"].text = this.api.lang.getText("REGISTER_LOGIN");
      this._lblPassword.text = this.api.lang.getText("REGISTER_PASSOWRD1");
      this["\x1c\x15\x0e"].text = this.api.lang.getText("REGISTER_PASSOWRD2");
      this["\x1c\x17\x10"].text = this.api.lang.getText("REGISTER_EMAIL");
      this["\x1c\x1c\x18"].text = this.api.lang.getText("REGISTER_PERSONAL_DATAS");
      this["\x1c\x1a\x04"].text = this.api.lang.getText("REGISTER_LAST_NAME");
      this["\x1c\x18\x01"].text = this.api.lang.getText("REGISTER_FIRST_NAME");
      this["\x1c\x13\f"].text = this.api.lang.getText("REGISTER_BIRTHDAY");
      this["\x1c\x18\x07"].text = this.api.lang.getText("REGISTER_GENDER");
      this["\x1c\x17\x17"].text = this.api.lang.getText("REGISTER_GENDER_FEMALE");
      this["\x1c\x1a\x15"].text = this.api.lang.getText("REGISTER_GENDER_MALE");
      this["\x1c\x1a\x03"].text = this.api.lang.getText("REGISTER_HOW_HEAR_ABOUT");
      this["\x1c\x1b\x14"].text = this.api.lang.getText("REGISTER_NEWSLETTER");
      this["\x1d\x01\x01"].text = this.api.lang.getText("REGISTER_SECTION2_TITLE");
      this["\x1c\x1e\x1d"].text = this.api.lang.getText("REGISTER_QUESTION");
      this["\x1c\x1e\x1c"].text = this.api.lang.getText("REGISTER_ANSWER");
      this["\x1c\x1c\x01"].text = this.api.lang.getText("REGISTER_QUESTION_NOTICE");
      this["\x1d\x03\x1b"].text = this.api.lang.getText("REGISTER_CRYPTO_TITLE");
      this["\x1c\x15\x17"].text = this.api.lang.getText("REGISTER_CRYPTO");
      this["\x1c\x1a\r"].text = this.api.lang.getText("REGISTER_LOCALISATION");
      this["\x1c\x16\x04"].text = this.api.lang.getText("REGISTER_COUNTRY");
      this["\x1c\x15\t"].text = this.api.lang.getText("REGISTER_COMMUNITY_NOTICE");
      this["\x1c\x15\b"].text = this.api.lang.getText("REGISTER_COMMUNITY");
      this["\x1c\x14\x16"].text = this.api.lang.getText("REGISTER_CONDITIONS");
      this["\x1c\x13\x07"].text = this.api.lang.getText("BACK").toUpperCase();
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      var ref = this;
      this["\x1d\r\x1d"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1d\r\x14"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x0b\n"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1d\t\x10"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1c\t\x19"].addEventListener("stateChanged",this);
      this["\x1c\n\x04"].addEventListener("stateChanged",this);
      this["\x1d\n\x0e"].onRelease = function()
      {
         ref["\x18\t\x13"]();
      };
      this["\x1d\n\x0e"].onRollOver = function()
      {
         ref["\x1a\x1d\t"]();
      };
      this["\x1d\n\x0e"].onRollOut = function()
      {
         ref.hideTooltip();
      };
      this["\x1d\x11\x17"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1d\b\b"].onRelease = function()
      {
         ref.click({target:this});
      };
      this["\x1c\f\f"].addEventListener("itemSelected",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function initData()
   {
      this["\x1e\x0e\x14"].password = true;
      this["\x1e\x0e\x15"].password = true;
      this["\x1c\n\x04"]["\x1a\t\x0e"] = true;
      this["\x1c\t\x19"]["\x1a\t\x0e"] = true;
      var _loc2_ = new ank.utils.ExtendedArray();
      _loc2_.push({label:"-",data:"-1"});
      var _loc3_ = 1;
      while(_loc3_ < 32)
      {
         _loc2_.push({label:_loc3_,data:_loc3_});
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\f\x0f"].dataProvider = _loc2_;
      this["\x1c\f\x0f"].selectedIndex = 0;
      var _loc4_ = new ank.utils.ExtendedArray();
      _loc4_.push({label:"-",data:"-1"});
      var _loc5_ = 1;
      while(_loc5_ < 13)
      {
         var _loc6_ = new Date(0,_loc5_,0,0,0,0,0);
         _loc4_.push({label:eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](_loc6_,"MMM",this.api.config.language),data:_loc5_});
         _loc5_ = _loc5_ + 1;
      }
      this["\x1c\f\x16"].dataProvider = _loc4_;
      this["\x1c\f\x16"].selectedIndex = 0;
      var _loc7_ = new ank.utils.ExtendedArray();
      _loc7_.push({label:"-",data:"-1"});
      var _loc8_ = new Date().getFullYear() - 5;
      while(_loc8_ > new Date().getFullYear() - 105)
      {
         _loc7_.push({label:_loc8_,data:_loc8_});
         _loc8_ = _loc8_ - 1;
      }
      this["\x1c\f\x1c"].dataProvider = _loc7_;
      this["\x1c\f\x1c"].selectedIndex = 0;
      this.addToQueue({object:this,method:this["\x1a\x0b\x04"]});
      var _loc9_ = ank.utils.["\x17\x01\x15"]["\x17\x01\x14"][this.api.config.language];
      if(_loc9_ == undefined)
      {
         _loc9_ = ank.utils.["\x17\x01\x15"]["\x17\x01\x14"].en;
      }
      var _loc10_ = new ank.utils.ExtendedArray();
      _loc10_.push({label:"",data:"--"});
      for(var k in _loc9_)
      {
         _loc10_.push({label:_loc9_[k],data:k});
      }
      this["\x1c\f\f"].dataProvider = _loc10_;
      this["\x1c\f\f"].selectedIndex = 0;
      var _loc11_ = this.api.lang.getServerCommunities();
      var _loc12_ = new ank.utils.ExtendedArray();
      var _loc13_ = 1;
      _loc12_.push({label:"",data:"--"});
      var _loc14_ = 0;
      while(_loc14_ < _loc11_.length)
      {
         if(_loc11_[_loc14_].d)
         {
            _loc13_;
            _loc12_.push({label:_loc11_[_loc14_].n,data:_loc11_[_loc14_].i,c:_loc11_[_loc14_].c,index:_loc13_++});
         }
         _loc14_ = _loc14_ + 1;
      }
      this["\x1c\f\x0b"].dataProvider = _loc12_;
      this["\x1c\f\x0b"].selectedIndex = 0;
      this.sLogin.setFocus();
   }
   function §\x18\t\x13§(bForce)
   {
      if(this["\x1c\x03\x05"])
      {
         return undefined;
      }
      if(this["\x1d\x15\x05"] != 2 && !_loc2_)
      {
         return undefined;
      }
      this["\x1c\x03\x02"] = true;
      this["\x1d\x05\x07"].forceReload = true;
      this["\x1d\x05\x07"].contentPath = this.api.lang.getConfigText("CRYPTO_LINK");
      this["\x1e\x0e\b"].text = "";
   }
   function §\x1b\r\r§(§\x19\x0f\x02§)
   {
      switch(_loc2_)
      {
         case 1:
            this["\x1c\x04\x16"]._visible = false;
            this["\x1d\x01\x01"]._visible = false;
            this["\x1d\x03\x1b"]._visible = false;
            this["\x1c\x1a\r"]._visible = false;
            this["\x1c\x1c\x01"]._visible = false;
            this["\x1c\x1e\x1d"]._visible = false;
            this["\x1c\x1e\x1c"]._visible = false;
            this["\x1c\x15\x17"]._visible = false;
            this["\x1c\x16\x04"]._visible = false;
            this["\x1c\x15\b"]._visible = false;
            this["\x1c\x15\t"]._visible = false;
            this["\x1c\x14\x16"]._visible = false;
            this["\x1e\x0e\x18"]._visible = false;
            this["\x1e\x0e\x06"]._visible = false;
            this["\x1e\x0e\b"]._visible = false;
            this["\x1c\f\f"]._visible = false;
            this["\x1c\f\x0b"]._visible = false;
            this["\x1c\t\t"]._visible = false;
            this["\x1d\t\x10"]._visible = false;
            this["\x1d\x05\x07"]._visible = false;
            this["\x1d\n\x0e"]._visible = false;
            this["\x1c\x04\x15"]._visible = true;
            this["\x1c\x12\x02"]._visible = true;
            this["\x1c\x1c\x18"]._visible = true;
            this["\x1c\x12\x01"]._visible = true;
            this._lblPassword._visible = true;
            this["\x1c\x15\x0e"]._visible = true;
            this["\x1c\x17\x10"]._visible = true;
            this["\x1c\x1a\x04"]._visible = true;
            this["\x1c\x18\x01"]._visible = true;
            this["\x1c\x13\f"]._visible = true;
            this["\x1c\x18\x07"]._visible = true;
            this["\x1c\x17\x17"]._visible = true;
            this["\x1c\x1a\x15"]._visible = true;
            this["\x1c\x1a\x03"]._visible = true;
            this["\x1c\x1b\x14"]._visible = true;
            this.sLogin._visible = true;
            this["\x1e\x0e\x14"]._visible = true;
            this["\x1e\x0e\x15"]._visible = true;
            this["\x1e\x0e\t"]._visible = true;
            this["\x1e\x0e\n"]._visible = true;
            this["\x1e\x0e\f"]._visible = true;
            this["\x1c\f\x0f"]._visible = true;
            this["\x1c\f\x16"]._visible = true;
            this["\x1c\f\x1c"]._visible = true;
            this["\x1c\t\x19"]._visible = true;
            this["\x1d\x0b\n"]._visible = true;
            this["\x1c\n\x04"]._visible = true;
            this["\x1d\r\x14"]._visible = true;
            this["\x1c\f\x15"]._visible = true;
            this["\x1c\n\n"]._visible = true;
            this["\x1d\r\x1d"]._visible = true;
            if(this["\x1c\x1b\x15"].text != undefined)
            {
               this["\x1c\x1b\x15"].text = String(this.api.lang.getText("VALIDATE")).toUpperCase();
            }
            this["\x1c\x13\x07"]._visible = false;
            this["\x1d\b\b"]._visible = false;
            this.sLogin.tabIndex = 5;
            this["\x1e\x0e\x14"].tabIndex = 6;
            this["\x1e\x0e\x15"].tabIndex = 7;
            this["\x1e\x0e\t"].tabIndex = 8;
            this["\x1e\x0e\f"].tabIndex = 9;
            this["\x1e\x0e\n"].tabIndex = 10;
            this.sLogin.setFocus();
            break;
         case 2:
            this["\x1c\x04\x15"]._visible = false;
            this["\x1c\x12\x02"]._visible = false;
            this["\x1c\x1c\x18"]._visible = false;
            this["\x1c\x12\x01"]._visible = false;
            this._lblPassword._visible = false;
            this["\x1c\x15\x0e"]._visible = false;
            this["\x1c\x17\x10"]._visible = false;
            this["\x1c\x1a\x04"]._visible = false;
            this["\x1c\x18\x01"]._visible = false;
            this["\x1c\x13\f"]._visible = false;
            this["\x1c\x18\x07"]._visible = false;
            this["\x1c\x17\x17"]._visible = false;
            this["\x1c\x1a\x15"]._visible = false;
            this["\x1c\x1a\x03"]._visible = false;
            this["\x1c\x1b\x14"]._visible = false;
            this.sLogin._visible = false;
            this["\x1e\x0e\x14"]._visible = false;
            this["\x1e\x0e\x15"]._visible = false;
            this["\x1e\x0e\t"]._visible = false;
            this["\x1e\x0e\n"]._visible = false;
            this["\x1e\x0e\f"]._visible = false;
            this["\x1c\f\x0f"]._visible = false;
            this["\x1c\f\x16"]._visible = false;
            this["\x1c\f\x1c"]._visible = false;
            this["\x1c\t\x19"]._visible = false;
            this["\x1d\x0b\n"]._visible = false;
            this["\x1c\n\x04"]._visible = false;
            this["\x1d\r\x14"]._visible = false;
            this["\x1c\f\x15"]._visible = false;
            this["\x1c\n\n"]._visible = false;
            this["\x1d\r\x1d"]._visible = false;
            this["\x1c\x04\x16"]._visible = true;
            this["\x1d\x01\x01"]._visible = true;
            this["\x1d\x03\x1b"]._visible = true;
            this["\x1c\x1a\r"]._visible = true;
            this["\x1c\x1c\x01"]._visible = true;
            this["\x1c\x1e\x1d"]._visible = true;
            this["\x1c\x1e\x1c"]._visible = true;
            this["\x1c\x15\x17"]._visible = true;
            this["\x1c\x16\x04"]._visible = true;
            this["\x1c\x15\b"]._visible = true;
            this["\x1c\x15\t"]._visible = true;
            this["\x1c\x14\x16"]._visible = true;
            this["\x1e\x0e\x18"]._visible = true;
            this["\x1e\x0e\x06"]._visible = true;
            this["\x1e\x0e\b"]._visible = true;
            this["\x1c\f\f"]._visible = true;
            this["\x1c\f\x0b"]._visible = true;
            this["\x1c\t\t"]._visible = true;
            this["\x1d\t\x10"]._visible = true;
            this["\x1d\x05\x07"]._visible = true;
            this["\x1d\n\x0e"]._visible = true;
            if(this["\x1c\x1b\x15"].text != undefined)
            {
               this["\x1c\x1b\x15"].text = String(this.api.lang.getText("TERMINATE_WORD")).toUpperCase();
            }
            this["\x1c\x13\x07"]._visible = true;
            this["\x1d\b\b"]._visible = true;
            if(!this["\x1c\x03\x02"])
            {
               this["\x18\t\x13"](true);
            }
            this["\x1e\x0e\x18"].tabIndex = 5;
            this["\x1e\x0e\x06"].tabIndex = 6;
            this["\x1e\x0e\b"].tabIndex = 7;
            this["\x1e\x0e\x18"].setFocus();
      }
      this["\x1d\x15\x05"] = _loc2_;
   }
   function §\x1a\x12\x15§(sCountry)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_) === "UK")
      {
         _loc2_ = "GB";
      }
      var _loc3_ = this["\x1c\f\f"].dataProvider;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_].data == _loc2_)
         {
            this["\x1c\f\f"].selectedIndex = _loc4_;
            this["\x1a\x12\x11"](_loc2_);
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x1a\x12\x11§(sCountry)
   {
      var _loc3_ = this["\x1c\f\x0b"].dataProvider;
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_].c;
         var _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            if(_loc6_[_loc7_] == _loc2_)
            {
               this["\x1c\f\x0b"].selectedIndex = _loc3_[_loc5_].index;
               return undefined;
            }
            if(_loc6_[_loc7_] == "XX")
            {
               _loc4_ = _loc3_[_loc5_].index;
            }
            _loc7_ = _loc7_ + 1;
         }
         _loc5_ = _loc5_ + 1;
      }
      this["\x1c\f\x0b"].selectedIndex = _loc4_;
   }
   function §\x1a\x06\x1b§(§\x19\x0f\x02§)
   {
      switch(_loc2_)
      {
         case 1:
            if(this.sLogin.text.length <= 0 || (this["\x1e\x0e\x14"].text.length <= 0 || (this["\x1e\x0e\x15"].text.length <= 0 || (this["\x1e\x0e\t"].text.length <= 0 || (this["\x1e\x0e\f"].text.length <= 0 || (this["\x1e\x0e\n"].text.length <= 0 || (this["\x1c\f\x0f"].selectedItem.data == -1 || (this["\x1c\f\x16"].selectedItem.data == -1 || (this["\x1c\f\x1c"].selectedItem.data == -1 || this["\x1c\f\x15"].selectedItem.id == 0)))))))))
            {
               this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this.api.lang.getText("REGISTER_NOT_FULLFILLED"),"ERROR_BOX");
               return false;
            }
            if(this["\x1e\x0e\x14"].text.length < 8 || this["\x1e\x0e\x15"].text.length < 8)
            {
               this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this.api.lang.getText("PASSWORD_TOO_SHORT"),"ERROR_BOX");
               return false;
            }
            break;
         case 2:
            if(this["\x1e\x0e\x18"].text.length <= 0 || (this["\x1e\x0e\x06"].text.length <= 0 || (this["\x1e\x0e\b"].text.length <= 0 || (this["\x1c\f\f"].selectedItem.data == "--" || this["\x1c\f\x0b"].selectedItem.data == "--"))))
            {
               this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this.api.lang.getText("REGISTER_NOT_FULLFILLED"),"ERROR_BOX");
               return false;
            }
            break;
      }
      return true;
   }
   function §\x1b\x17\x0e§()
   {
      this._oLoader.registerFrom = "game_dofus";
      this._oLoader.lang = this.api.config.language;
      this._oLoader.validRegister1 = true;
      this._oLoader.loginAG = this.sLogin.text;
      this._oLoader.passAG = this["\x1e\x0e\x14"].text;
      this._oLoader.passAG2 = this["\x1e\x0e\x15"].text;
      this._oLoader.email = this["\x1e\x0e\t"].text;
      this._oLoader.lastname = this["\x1e\x0e\f"].text;
      this._oLoader.firstname = this["\x1e\x0e\n"].text;
      this._oLoader.datenaiss_d = this["\x1c\f\x0f"].selectedItem.data;
      this._oLoader.datenaiss_m = this["\x1c\f\x16"].selectedItem.data;
      this._oLoader.datenaiss_y = this["\x1c\f\x1c"].selectedItem.data;
      this._oLoader.sexe = !this["\x1c\t\x19"].selected ? "M" : "F";
      this._oLoader.knowgameid = this["\x1c\f\x15"].selectedItem.data;
      if(this["\x1c\n\n"].selected)
      {
         this._oLoader.valid_newsletter = true;
      }
      this._oLoader.question = this["\x1e\x0e\x18"].text;
      this._oLoader.answer = this["\x1e\x0e\x06"].text;
      this._oLoader.verifCode = this["\x1e\x0e\b"].text;
      this._oLoader.pays = this["\x1c\f\f"].selectedItem.data;
      this._oLoader.community_id = this["\x1c\f\x0b"].selectedItem.data;
      if(this["\x1c\t\t"].selected)
      {
         this._oLoader.valid_cgu = true;
      }
      this["\x1e\x05\x06"] = new LoadVars();
      this["\x1e\x05\x06"].owner = this;
      this["\x1e\x05\x06"].onLoad = function(bSuccess)
      {
         this.owner["\x19\x1c\t"](_loc2_);
      };
      this._oLoader.sendAndLoad(this.api.lang.getConfigText("REGISTER_LINK"),this["\x1e\x05\x06"],"POST");
      this["\x1c\x1b\x15"].text = this.api.lang.getText("LOADING");
      this["\x1c\x03\x05"] = true;
      this.api.ui.loadUIComponent("CenterText","CenterText",{text:this.api.lang.getText("WAITING_MSG_RECORDING"),timer:0,background:true},{bForceLoad:true});
   }
   function §\x1a\x0b\x04§()
   {
      if(this["\x1c\x04\x18"])
      {
         this["\x1c\f\x15"]._visible = false;
         this["\x1c\x1a\x03"]._visible = false;
         return undefined;
      }
      if(this["\x1b\x1d\x06"] == undefined)
      {
         if(++this["\x1d\x16\x18"] > dofus.graphics.gapi.ui.Register["\x18\x17\x04"])
         {
            return undefined;
         }
         this.addToQueue({object:this,method:this["\x1a\x0b\x04"]});
         return undefined;
      }
      var _loc2_ = new ank.utils.ExtendedArray();
      _loc2_.push({label:this.api.lang.getText("PLEASE_SELECT"),id:0});
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1d\x05"].length)
      {
         _loc2_.push({label:this["\x1b\x1d\x06"]["ID" + this["\x1b\x1d\x05"][_loc3_]],data:this["\x1b\x1d\x05"][_loc3_]});
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\f\x15"].dataProvider = _loc2_;
      this["\x1c\f\x15"].selectedIndex = 0;
   }
   function §\x1a\x1d\t§()
   {
      this.gapi.showTooltip(this.api.lang.getText("REGISTER_CLICK_TO_REGEN"),this["\x1d\n\x0e"],0,undefined);
   }
   function §\x18\x07\x03§()
   {
      this.gapi.hideTooltip();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         if(this.sLogin["\x17\x11\x18"] || (this["\x1e\x0e\x06"]["\x17\x11\x18"] || (this["\x1e\x0e\b"]["\x17\x11\x18"] || (this["\x1e\x0e\t"]["\x17\x11\x18"] || (this["\x1e\x0e\n"]["\x17\x11\x18"] || (this["\x1e\x0e\f"]["\x17\x11\x18"] || (this["\x1e\x0e\x14"]["\x17\x11\x18"] || (this["\x1e\x0e\x15"]["\x17\x11\x18"] || this["\x1e\x0e\x18"]["\x17\x11\x18"]))))))))
         {
            this.click({target:this["\x1d\x11\x17"]});
            return false;
         }
      }
      return true;
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\f\f"])
      {
         var _loc3_ = this["\x1c\f\f"].selectedItem.data;
         if(_loc3_.length != 2)
         {
            return undefined;
         }
         this["\x1a\x12\x11"](_loc3_);
      }
   }
   function stateChanged(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x19"]:
            this["\x1c\n\x04"].removeEventListener("stateChanged",this);
            this["\x1c\n\x04"].selected = !_loc2_.value;
            this["\x1c\n\x04"].addEventListener("stateChanged",this);
            break;
         case this["\x1c\n\x04"]:
            this["\x1c\t\x19"].removeEventListener("stateChanged",this);
            this["\x1c\t\x19"].selected = !_loc2_.value;
            this["\x1c\t\x19"].addEventListener("stateChanged",this);
      }
   }
   function click(oEvent)
   {
      if(this["\x1c\x03\x05"])
      {
         return undefined;
      }
      switch(_loc2_.target)
      {
         case this["\x1d\r\x1d"]:
            this["\x1c\n\n"].selected = !this["\x1c\n\n"].selected;
            break;
         case this["\x1d\x0b\n"]:
            this["\x1c\t\x19"].selected = true;
            break;
         case this["\x1d\r\x14"]:
            this["\x1c\n\x04"].selected = true;
            break;
         case this["\x1d\t\x10"]:
            this["\x1c\t\t"].selected = !this["\x1c\t\t"].selected;
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this["\x1d\x11\x17"]:
            switch(this["\x1d\x15\x05"])
            {
               case 1:
                  if(this["\x1a\x06\x1b"](1))
                  {
                     this["\x1b\r\r"](2);
                  }
                  break;
               case 2:
                  if(this["\x1a\x06\x1b"](2))
                  {
                     this["\x1b\x17\x0e"]();
                     break;
                  }
            }
            break;
         case this["\x1d\b\b"]:
            this["\x1b\r\r"](1);
      }
   }
   function §\x19\x1c\t§(bSuccess)
   {
      this["\x1c\x1b\x15"].text = this.api.lang.getText("TERMINATE_WORD").toUpperCase();
      this["\x1c\x03\x05"] = false;
      this.api.ui.unloadUIComponent("CenterText");
      if(!_loc2_)
      {
         this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this.api.lang.getText("REGISTRATION_ERROR"),"ERROR_BOX");
         this["\x18\t\x13"](true);
      }
      else if(this["\x1e\x05\x06"].result != "")
      {
         this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this["\x1e\x05\x06"].result,"ERROR_BOX");
         this["\x18\t\x13"](true);
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"),this.api.lang.getText("REGISTRATION_DONE",[this.sLogin.text,this["\x1e\x0e\x18"].text,this["\x1e\x0e\x06"].text,this["\x1e\x0e\t"].text]),"ERROR_BOX");
         this["\x16\x15\n"]();
      }
   }
   function §\x19\x18\x0b§(bSuccess)
   {
      if(_loc2_)
      {
         var _loc3_ = Number(this["\x1d\x07\r"].answer_count);
         this["\x1b\x1d\x06"] = new Array();
         this["\x1b\x1d\x05"] = new Array();
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_ = _loc4_ + 1;
            this["\x1b\x1d\x05"].push(Number(this["\x1d\x07\r"]["answer_id" + _loc5_]));
            this["\x1b\x1d\x06"]["ID" + this["\x1d\x07\r"]["answer_id" + _loc5_]] = this["\x1d\x07\r"]["answer_desc" + _loc5_];
            _loc4_ = _loc4_ + 1;
         }
      }
      else
      {
         this["\x1c\x04\x18"] = true;
      }
   }
}
