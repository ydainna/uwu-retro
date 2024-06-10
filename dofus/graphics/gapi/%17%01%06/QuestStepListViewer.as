class dofus.graphics.gapi.§\x17\x01\x06§.QuestStepListViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "QuestStepListViewer";
   function QuestStepListViewer()
   {
      super();
   }
   function §\x1d\x16§(§\x17\x0b\x17§)
   {
      this["\x1c\x10\x0f"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this.steps;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.QuestStepListViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this["\x1d\x07\x05"].addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1d\x02\f"].text = this.api.lang.getText("QUESTS_ALL_STEPS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1c\x10\x0f"] != undefined)
      {
         this["\x1d\x07\x05"].dataProvider = this["\x1c\x10\x0f"];
         var _loc2_ = 0;
         while(_loc2_ < this["\x1c\x10\x0f"].length)
         {
            if(this["\x1c\x10\x0f"][_loc2_]["\x18\r\t"])
            {
               this["\x1d\x07\x05"].selectedIndex = _loc2_;
               this["\x1e\x0f\n"].text = this["\x1c\x10\x0f"][_loc2_].description;
               break;
            }
            _loc2_ = _loc2_ + 1;
         }
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      this["\x1e\x0f\n"].text = _loc3_.description;
   }
}
