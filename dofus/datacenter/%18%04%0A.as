class dofus.§\x17\x04\x19§.§\x18\x04\n§ extends Object
{
   function §\x18\x04\n§(§\x19\r\x13§)
   {
      super();
      this["\x1d\x1c\x04"] = _loc3_;
   }
   function §\f\x1c§()
   {
      return this["\x1d\x1c\x04"];
   }
   function §\x04§(§\x19\x10\x10§)
   {
      this["\x1d\x1c\x04"] = _loc2_;
      return this["\f\x1c"]();
   }
   function get isBossValue()
   {
      return 1;
   }
   function §\x1e\x1c\x1a§()
   {
      return (this["\x1d\x1c\x04"] & this.isBossValue) == this.isBossValue;
   }
   function get canManageBoostValue()
   {
      return 2;
   }
   function §\x1e\x14\n§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageBoostValue) == this.canManageBoostValue;
   }
   function get canManageRightsValue()
   {
      return 4;
   }
   function §\x1e\x14\x0e§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageRightsValue) == this.canManageRightsValue;
   }
   function get canInviteValue()
   {
      return 8;
   }
   function §\x1e\x14\b§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canInviteValue) == this.canInviteValue;
   }
   function get canBannValue()
   {
      return 16;
   }
   function §\x1e\x13\x16§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canBannValue) == this.canBannValue;
   }
   function get canManageXPContributionValue()
   {
      return 32;
   }
   function get canManageXPContribution()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageXPContributionValue) == this.canManageXPContributionValue;
   }
   function get canManageRanksValue()
   {
      return 64;
   }
   function §\x1e\x14\r§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageRanksValue) == this.canManageRanksValue;
   }
   function get canHireTaxCollectorValue()
   {
      return 128;
   }
   function §\x1e\x14\x07§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canHireTaxCollectorValue) == this.canHireTaxCollectorValue;
   }
   function get canManageOwnXPContributionValue()
   {
      return 256;
   }
   function get canManageOwnXPContribution()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageOwnXPContributionValue) == this.canManageOwnXPContributionValue;
   }
   function get canCollectValue()
   {
      return 512;
   }
   function §\x1e\x14\x03§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canCollectValue) == this.canCollectValue;
   }
   function get canUseMountParkValue()
   {
      return 4096;
   }
   function §\x1e\x14\x19§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canUseMountParkValue) == this.canUseMountParkValue;
   }
   function get canArrangeMountParkValue()
   {
      return 8192;
   }
   function §\x1e\x13\x11§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canArrangeMountParkValue) == this.canArrangeMountParkValue;
   }
   function get canManageOtherMountValue()
   {
      return 16384;
   }
   function §\x1e\x14\x0b§()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canManageOtherMountValue) == this.canManageOtherMountValue;
   }
   function get canPriorityDefendTaxCollectorValue()
   {
      return 32768;
   }
   function get canPriorityDefendTaxCollector()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canPriorityDefendTaxCollectorValue) == this.canPriorityDefendTaxCollectorValue;
   }
   function get canCollectOwnTaxCollectorValue()
   {
      return 65536;
   }
   function get canCollectOwnTaxCollector()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canCollectOwnTaxCollectorValue) == this.canCollectOwnTaxCollectorValue;
   }
   function get canEditGuildNotesValue()
   {
      return 131072;
   }
   function get canEditGuildNotes()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canEditGuildNotesValue) == this.canEditGuildNotesValue;
   }
   function get canEditGuildInformationsValue()
   {
      return 262144;
   }
   function get canEditGuildInformations()
   {
      return this["\x18\f\x1a"] || (this["\x1d\x1c\x04"] & this.canEditGuildInformationsValue) == this.canEditGuildInformationsValue;
   }
}
