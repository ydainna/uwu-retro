class ank.utils.Compressor
{
   static var §\x1b\x1b\x05§ = new Array("_a","_b","_c","_d","_e","_f","_g","_h","_i","_j","_k","_l","_m","_n","_o","_p","_q","_r","_s","_t","_u","_v","_w","_x","_y","_z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9","-","_");
   static var §\x1b\x1b\x06§ = new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9","-","_");
   static var _self = new ank.utils.Compressor();
   function Compressor()
   {
      this.initialize();
   }
   function initialize()
   {
      var _loc2_ = ank.utils.Compressor["\x1b\x1b\x06"].length - 1;
      this["\x1c\x11\x04"] = new Object();
      while(_loc2_ >= 0)
      {
         this["\x1c\x11\x04"][ank.utils.Compressor["\x1b\x1b\x06"][_loc2_]] = _loc2_;
         _loc2_ = _loc2_ - 1;
      }
   }
   static function decode64(§\x16\x1d\x03§)
   {
      return ank.utils.Compressor._self["\x1c\x11\x04"][_loc2_];
   }
   static function §\x17\r\x07§(§\x1b\x17\x16§)
   {
      return ank.utils.Compressor["\x1b\x1b\x06"][_loc2_];
   }
}
