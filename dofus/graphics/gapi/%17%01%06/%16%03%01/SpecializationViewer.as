class dofus.graphics.gapi.§\x17\x01\x06§.§\x16\x03\x01§.SpecializationViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpecializationViewer";
   function SpecializationViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x16\x03\x01"].SpecializationViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1c\x17\x16"].text = this.api.lang.getText("FEATS");
      this["\x1c\x1b\x1b"].text = this.api.lang.getText("NO_SPECIALIZATION");
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("specializationChanged",this);
   }
   function initData()
   {
      this.specializationChanged({specialization:this.api.datacenter.Player.specialization});
   }
   function §\x1a\x16\x13§(§\x1a\x02\x05§)
   {
      if(_loc2_ != undefined)
      {
         this["\x1c\x17\x16"].text = this.api.lang.getText("FEATS") + " (" + _loc2_.name + ")";
         this["\x1d\x06\x15"].dataProvider = _loc2_.feats;
      }
      else
      {
         this["\x1c\x17\x16"].text = this.api.lang.getText("FEATS");
         this["\x1d\x06\x15"].dataProvider = new ank.utils.ExtendedArray();
      }
   }
   function specializationChanged(oEvent)
   {
      this._mcTree.removeMovieClip();
      this._mcOrder.removeMovieClip();
      var _loc3_ = _loc2_.specialization;
      if(_loc3_ != undefined)
      {
         this["\x1c\x1b\x1b"]._visible = false;
         this["\x1c\x17\x16"]._visible = true;
         this["\x1d\x06\x15"]._visible = true;
         this.attachMovie("AlignmentViewerTree","_mcTree",this.getNextHighestDepth(),{_x:this["\x1d\x11\x04"]._x,_y:this["\x1d\x11\x04"]._y});
         this._mcTree.addEventListener("specializationSelected",this);
         this._mcTree.addEventListener("orderSelected",this);
         this.specializationSelected();
      }
      else
      {
         this["\x1c\x1b\x1b"]._visible = true;
         this["\x1c\x17\x16"]._visible = false;
         this["\x1d\x06\x15"]._visible = false;
      }
   }
   function specializationSelected(oEvent)
   {
      this._mcOrder.removeMovieClip();
      this["\x1a\x16\x13"](_loc2_.specialization);
   }
   function orderSelected(oEvent)
   {
      this._mcOrder.removeMovieClip();
      this.attachMovie("AlignmentViewerOrder","_mcOrder",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x07"]._x,_y:this["\x1d\x0e\x07"]._y,specialization:this.api.datacenter.Player.specialization});
   }
}
