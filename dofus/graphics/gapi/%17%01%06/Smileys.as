class dofus.graphics.gapi.§\x17\x01\x06§.Smileys extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Smileys";
   function Smileys()
   {
      super();
   }
   function §\x1b\x14\x01§()
   {
      this.initData();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Smileys.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._cgSmileys.addEventListener("selectItem",this);
      this._cgEmotes.addEventListener("selectItem",this);
      this._cgEmotes.addEventListener("overItem",this);
      this._cgEmotes.addEventListener("outItem",this);
      this["\x1d\x06\x04"].addEventListener("initialization",this);
   }
   function initData()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      if(this.api.config.isStreaming)
      {
         this["\x1d\x06\x04"].contentPath = dofus.Constants["\x1b\x03\x16"] + "all.swf";
      }
      else
      {
         var _loc3_ = 1;
         while(_loc3_ <= 15)
         {
            var _loc4_ = new Object();
            _loc4_.iconFile = dofus.Constants["\x1b\x03\x16"] + _loc3_ + ".swf";
            _loc4_.index = _loc3_;
            _loc2_.push(_loc4_);
            _loc3_ = _loc3_ + 1;
         }
         this._cgSmileys.dataProvider = _loc2_;
      }
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = this.api.datacenter.Player.Emotes.getItems();
      for(var k in _loc6_)
      {
         var _loc7_ = new Object();
         var _loc8_ = Number(k);
         _loc7_.iconFile = dofus.Constants["\x17\f\x1a"] + _loc8_ + ".swf";
         _loc7_.index = _loc8_;
         _loc5_.push(_loc7_);
         _loc5_.sortOn("index",Array.NUMERIC);
      }
      this._cgEmotes.dataProvider = _loc5_;
   }
   function §\x16\x06\x18§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      var _loc4_ = 16;
      var _loc5_ = 4;
      var _loc7_ = 1;
      while(_loc7_ <= 15)
      {
         var _loc8_ = this["\x1d\x06\x04"].content.attachMovie(String(_loc7_),"smiley" + _loc7_,_loc7_);
         if(_loc8_._width > _loc8_._height)
         {
            var _loc6_ = _loc8_._height / _loc8_._width;
            _loc8_._height = _loc6_ * _loc4_;
            _loc8_._width = _loc4_;
         }
         else
         {
            _loc6_ = _loc8_._width / _loc8_._height;
            _loc8_._width = _loc6_ * _loc4_;
            _loc8_._height = _loc4_;
         }
         _loc8_._x = _loc2_ * (_loc4_ + _loc5_);
         _loc8_._y = _loc3_ * (_loc4_ + _loc5_);
         _loc8_.contentData = {index:_loc7_};
         var ref = this;
         _loc8_.onRelease = function()
         {
            ref.selectItem({target:this,owner:{_name:"_cgSmileys"}});
         };
         _loc8_.onRollOver = function()
         {
            this._parent.attachMovie("over","over",-1);
            this._parent.over._x = this._x;
            this._parent.over._y = this._y;
         };
         _loc8_.onReleaseOutside = _loc8_.onRollOut = function()
         {
            this._parent.createEmptyMovieClip("over",-1);
         };
         _loc2_ = _loc2_ + 1;
         if(_loc2_ == 5)
         {
            _loc2_ = 0;
            _loc3_ = _loc3_ + 1;
         }
         _loc7_ = _loc7_ + 1;
      }
   }
   function initialization(oEvent)
   {
      this["\x16\x06\x18"]();
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      switch(_loc2_.owner._name)
      {
         case "_cgSmileys":
            this["\x17\x07\x19"]({type:"selectSmiley",index:_loc3_.index});
            break;
         case "_cgEmotes":
            this["\x17\x07\x19"]({type:"selectEmote",index:_loc3_.index});
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ != undefined)
      {
         var _loc4_ = this.api.lang["\x17\x17\x0b"](_loc3_.index);
         var _loc5_ = _loc4_.n;
         var _loc6_ = _loc4_.s == undefined ? "" : " (/" + _loc4_.s + ")";
         this.gapi.showTooltip(_loc5_ + _loc6_,_loc2_.target,-20);
      }
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
