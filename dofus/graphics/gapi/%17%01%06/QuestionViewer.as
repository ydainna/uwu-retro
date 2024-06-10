class dofus.graphics.gapi.§\x17\x01\x06§.QuestionViewer extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "QuestionViewer";
   static var §\x1a\x0e\x05§ = 30;
   static var §\x1a\b\x1d§ = 20;
   function QuestionViewer()
   {
      super();
   }
   function §\x1a\x1d§(§\x1a\x01\x10§)
   {
      this["\x1e\x05\x02"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this.question;
   }
   function §\x15\x11§(§\x16\x0b\x15§)
   {
      this["\x1c\x04\x06"] = _loc2_;
      return this.isFirstQuestion;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.QuestionViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\x06\x1b"]._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1c\x04\x06"])
      {
         var _loc2_ = this["\x1e\x05\x02"]["\x1a\x0e\x04"];
      }
      else if(this["\x1e\x05\x02"]["\x1a\x0e\x04"].length == 0)
      {
         var _loc3_ = new ank.utils.ExtendedArray();
         _loc3_.push({label:this._parent.api.lang.getText("CONTINUE_TO_SPEAK"),id:-1});
         _loc2_ = _loc3_;
      }
      else
      {
         _loc2_ = this["\x1e\x05\x02"]["\x1a\x0e\x04"];
      }
      var _loc4_ = _loc2_.length;
      this["\x1d\x06\x1b"]["\x1a\x0b\x16"]();
      this["\x1d\x06\x1b"]["\x1a\x19\x18"](undefined,dofus.graphics.gapi.controls.QuestionViewer["\x1a\x0e\x05"] * _loc4_);
      this.addToQueue({object:this,method:this["\x15\x1e\x0b"],params:[_loc2_]});
      this["\x1e\x0f\x16"].text = this["\x1e\x05\x02"].label;
   }
   function addListeners()
   {
      this["\x1d\x06\x1b"].addEventListener("itemSelected",this);
      this["\x1e\x0f\x16"].addEventListener("change",this);
   }
   function §\x15\x1e\x0b§(§\x17\x0b\x10§)
   {
      this["\x1d\x06\x1b"].dataProvider = _loc2_;
   }
   function change(oEvent)
   {
      this["\x1d\x06\x1b"]._y = this["\x1e\x0f\x16"]._y + dofus.graphics.gapi.controls.QuestionViewer["\x1a\b\x1d"] + this["\x1e\x0f\x16"].height;
      this["\x1d\x06\x1b"]._visible = true;
      this["\x1a\x19\x18"](undefined,this["\x1d\x06\x1b"]._y + this["\x1d\x06\x1b"].height);
      this["\x17\x07\x19"]({type:"resize"});
   }
   function itemSelected(oEvent)
   {
      this["\x17\x07\x19"]({type:"response",response:_loc2_.row.item});
   }
}
