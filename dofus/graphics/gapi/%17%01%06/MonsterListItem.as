class dofus.graphics.gapi.§\x17\x01\x06§.MonsterListItem extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MonsterListItem";
   static var SIZE = 20;
   var sAnim = "StaticR";
   function MonsterListItem()
   {
      super();
   }
   function §\x1e\x16\x16§()
   {
      return this["\x1e\b\x0f"];
   }
   function §\x11\b§(§\x1a\x11\x05§)
   {
      this["\x1e\b\x0f"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.beginDisplay();
      }
      return this["\x1e\x16\x16"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.MonsterListItem.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.beginDisplay});
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
   }
   function initialization(oEvent)
   {
      var mc = _loc2_.clip;
      mc._visible = false;
      mc.attachMovie("staticR","mcAnim",10);
      var monsterListItem = this;
      var nCompteur = 0;
      mc.onEnterFrame = function()
      {
         nCompteur++;
         if(nCompteur >= 3)
         {
            monsterListItem.prepareSprite(this);
            delete mc.onEnterFrame;
         }
      };
   }
   function prepareSprite(§\x18\x1b\f§)
   {
      if(_loc2_._width > _loc2_._height)
      {
         _loc2_._xscale = _loc2_._yscale = 100 * dofus.graphics.gapi.controls.MonsterListItem.SIZE / _loc2_._width;
      }
      else
      {
         _loc2_._yscale = _loc2_._xscale = 100 * dofus.graphics.gapi.controls.MonsterListItem.SIZE / _loc2_._height;
      }
      _loc2_._visible = true;
   }
   function beginDisplay()
   {
      if(this.contentPath == undefined)
      {
         return undefined;
      }
      this["\x1d\x06\x01"].forceReload = true;
      this["\x1d\x06\x01"].content.removeMovieClip();
      this["\x1d\x06\x01"].contentPath = this.contentPath;
   }
}
