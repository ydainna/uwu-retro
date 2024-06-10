class dofus.datacenter.modreport.ModReportCategory extends Object
{
   static var NOT_A_CATEGORY_ID = -1;
   function ModReportCategory(§\x19\x04\x0b§, sName, §\x1a\x12\x01§, bRequiresOnlineCharacter, bRequiresOfflineCharacter, bAllowIncludeChatConversation, bForceIncludeChatConversation, bAllowIncludeCustomText, bIsFakeCategory, sFakeCategoryRedirectionText)
   {
      super();
      this.nCategoryID = _loc3_;
      this.sName = _loc4_;
      this.sDescription = _loc5_;
      this.bRequiresOnlineCharacter = bRequiresOnlineCharacter;
      this.bRequiresOfflineCharacter = bRequiresOfflineCharacter;
      this.bAllowIncludeChatConversation = bAllowIncludeChatConversation;
      this.bForceIncludeChatConversation = bForceIncludeChatConversation;
      this.bAllowIncludeCustomText = bAllowIncludeCustomText;
      this.bIsFakeCategory = bIsFakeCategory;
      this.sFakeCategoryRedirectionText = sFakeCategoryRedirectionText;
   }
   function §\x1e\x15\x03§()
   {
      return this.nCategoryID;
   }
   function §\x04\x1b§()
   {
      return this.sName;
   }
   function §\x01\x15§()
   {
      return this.sName;
   }
   function §\x1e\x18\r§()
   {
      return this.sDescription;
   }
   function get isRequiringOnlineCharacter()
   {
      return this.bRequiresOnlineCharacter;
   }
   function get isRequiringOfflineCharacter()
   {
      return this.bRequiresOfflineCharacter;
   }
   function get isAllowIncludeChatConversation()
   {
      return this.bAllowIncludeChatConversation;
   }
   function get isForceIncludeChatConversation()
   {
      return this.bForceIncludeChatConversation;
   }
   function get isAllowIncludeCustomText()
   {
      return this.bAllowIncludeCustomText;
   }
   function get isFakeCategory()
   {
      return this.bIsFakeCategory;
   }
   function get fakeCategoryRedirectionText()
   {
      return this.sFakeCategoryRedirectionText;
   }
}
