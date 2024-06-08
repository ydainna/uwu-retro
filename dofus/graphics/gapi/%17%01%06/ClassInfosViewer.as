class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ClassInfosViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ClassInfosViewer";
   function ClassInfosViewer()
   {
      super();
   }
   function §\x10\x18§(§\x19\x05\x05§)
   {
      this["\x1d\x14\x01"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this["\x1e\x15\x1a"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ClassInfosViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function initTexts()
   {
      this["\x1c\x15\x05"].text = this.api.lang.getText("CLASS_SPELLS");
   }
   function addListeners()
   {
      var _loc2_ = 0;
      while(_loc2_ < 20)
      {
         this["_ctr" + _loc2_].addEventListener("over",this);
         this["_ctr" + _loc2_].addEventListener("out",this);
         this["_ctr" + _loc2_].addEventListener("click",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x18\x13\x14§()
   {
      var _loc2_ = dofus.Constants["\x1b\x06\x14"];
      var _loc3_ = this.api.lang.getClassText(this["\x1d\x14\x01"]).s;
      var _loc4_ = 0;
      while(_loc4_ < 20)
      {
         var _loc5_ = this["_ctr" + _loc4_];
         _loc5_.contentPath = _loc2_ + _loc3_[_loc4_] + ".swf";
         _loc5_.params = {spellID:_loc3_[_loc4_]};
         _loc4_ = _loc4_ + 1;
      }
      this["\x1e\x0f\n"].text = this.api.lang.getClassText(this["\x1d\x14\x01"]).d;
      this["\x1b\x01\x02"](_loc3_[0]);
   }
   function §\x1b\x01\x02§(§\x19\x0e\x17§)
   {
      var _loc3_ = this.api.kernel.CharactersManager["\x18\x01\x05"](_loc2_ + "~1~");
      if(_loc3_.name == undefined)
      {
         this["\x1d\x01\x1d"].text = "";
         this["\x1d\x02\x01"].text = "";
         this["\x1d\x01\x1b"].text = "";
         this["\x1e\x0f\x1b"].text = "";
         this["\x1d\x05\x1d"].contentPath = "";
      }
      else if(this["\x1d\x01\x1d"].text != undefined)
      {
         this["\x1d\x01\x1d"].text = _loc3_.name;
         this["\x1d\x02\x01"].text = this.api.lang.getText("RANGEFULL") + " : " + _loc3_["\x1a\t\x17"];
         this["\x1d\x01\x1b"].text = this.api.lang.getText("ACTIONPOINTS") + " : " + _loc3_["\x16\x04\x03"];
         this["\x1e\x0f\x1b"].text = _loc3_.description + "\n" + _loc3_["\x17\x07\b"];
         this["\x1d\x05\x1d"].forceReload = true;
         this["\x1d\x05\x1d"].contentParams = _loc3_.params;
         this["\x1d\x05\x1d"].contentPath = _loc3_.iconFile;
      }
   }
   function click(oEvent)
   {
      this["\x1b\x01\x02"](_loc2_.target.params.spellID);
   }
}
