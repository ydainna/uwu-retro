class dofus.§\x18\x03\x10§.gapi.ui.WaitingQueue extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "WaitingQueue";
   function WaitingQueue()
   {
      super();
      this._btnLeaveQueue._visible = false;
   }
   function §\x1b\x01§(§\x1a\x01\x11§)
   {
      this["\x1e\x05\x03"] = _loc2_;
      return this.queueInfos;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.WaitingQueue.CLASS_NAME);
      if(this.api.datacenter.Basics.aks_is_free_community)
      {
         this._btnSubscribe._visible = false;
      }
   }
   function createChildren()
   {
      if(this["\x1e\x05\x03"] == undefined)
      {
         return undefined;
      }
      this._btnSubscribe._visible = false;
      this._btnLeaveQueue._visible = false;
      this.addToQueue({object:this,method:this["\x18\t\x0b"]});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function §\x18\t\x0b§()
   {
      this._btnSubscribe.addEventListener("click",this);
      this._btnLeaveQueue.addEventListener("click",this);
      this._btnSubscribe.label = this.api.lang.getText("SUBSCRIPTION");
      this._btnLeaveQueue.label = this.api.lang.getText("WAIT_QUEUE_LEAVE");
   }
   function §\x18\t\x14§()
   {
      var _loc2_ = this.api.lang.getServerInfos(this["\x1e\x05\x03"].queueId).n;
      if(_loc2_ != undefined)
      {
         this["\x1d\x04\f"].text = this["\x1c\x13\x14"].text = this["\x1c\x13\x17"].text = this["\x1c\x13\x0f"].text = this["\x1c\x13\x11"].text = this.api.lang.getText("WAITING_FOR_CONNECTION_ON",[_loc2_]);
      }
      else
      {
         this["\x1d\x04\f"].text = this["\x1c\x13\x14"].text = this["\x1c\x13\x17"].text = this["\x1c\x13\x0f"].text = this["\x1c\x13\x11"].text = this.api.lang.getText("WAITING_FOR_CONNECTION");
      }
      if(this["\x1e\x05\x03"].subscriber == true || this.api.datacenter.Basics.aks_is_free_community)
      {
         this["\x1d\x04\n"].text = this["\x1c\x13\x12"].text = this["\x1c\x13\x15"].text = this["\x1c\x13\r"].text = this._lblBlackBR.text = this.api.lang.getText("WAIT_QUEUE_ABO_MSG1",[this["\x1e\x05\x03"].position,this["\x1e\x05\x03"].totalAbo]);
         this["\x1d\x04\x0b"].text = this["\x1c\x13\x13"].text = this["\x1c\x13\x16"].text = this["\x1c\x13\x0e"].text = this["\x1c\x13\x10"].text = this.api.lang.getText("WAIT_QUEUE_ABO_MSG2",[this["\x1e\x05\x03"].totalNonAbo]);
      }
      else if(this["\x1e\x05\x03"].subscriber == false)
      {
         this._btnSubscribe._visible = true;
         this["\x1d\x04\n"].text = this["\x1c\x13\x12"].text = this["\x1c\x13\x15"].text = this["\x1c\x13\r"].text = this._lblBlackBR.text = this.api.lang.getText("WAIT_QUEUE_NON_ABO_MSG1",[this["\x1e\x05\x03"].position - this["\x1e\x05\x03"].totalAbo,this["\x1e\x05\x03"].totalNonAbo]);
         this["\x1d\x04\x0b"].text = this["\x1c\x13\x13"].text = this["\x1c\x13\x16"].text = this["\x1c\x13\x0e"].text = this["\x1c\x13\x10"].text = this.api.lang.getText("WAIT_QUEUE_NON_ABO_MSG2",[this["\x1e\x05\x03"].totalAbo]);
      }
      else
      {
         this["\x1d\x04\n"].text = this["\x1c\x13\x12"].text = this["\x1c\x13\x15"].text = this["\x1c\x13\r"].text = this._lblBlackBR.text = this.api.lang.getText("WAIT_QUEUE_POSITION",[this["\x1e\x05\x03"].position]);
      }
      if(this["\x1e\x05\x03"].queueId > -1 && this.api.lang.getConfigText("ENABLE_LEAVE_QUEUE"))
      {
         this._btnLeaveQueue._visible = true;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSubscribe":
            _root.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
            break;
         case "_btnLeaveQueue":
            this.api.kernel["\x16\x18\x1b"]();
      }
   }
}
