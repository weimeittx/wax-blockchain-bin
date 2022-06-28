#pragma once

#include <eosio/chain/authority.hpp>
#include <eosio/chain/types.hpp>
#include <eosio/chain/asset.hpp>

namespace eosio { namespace chain {

using action_name    = eosio::chain::action_name;

struct newaccount {
   account_name                     creator;
   account_name                     name;
   authority                        owner;
   authority                        active;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(newaccount);
   }
};

struct setcode {
   account_name                     account;
   uint8_t                          vmtype = 0;
   uint8_t                          vmversion = 0;
   bytes                            code;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(setcode);
   }
};

struct setabi {
   account_name                     account;
   bytes                            abi;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(setabi);
   }
};


struct updateauth {
   account_name                      account;
   permission_name                   permission;
   permission_name                   parent;
   authority                         auth;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(updateauth);
   }
};

struct deleteauth {
   deleteauth() = default;
   deleteauth(const account_name& account, const permission_name& permission)
   :account(account), permission(permission)
   {}

   account_name                      account;
   permission_name                   permission;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(deleteauth);
   }
};

struct linkauth {
   linkauth() = default;
   linkauth(const account_name& account, const account_name& code, const action_name& type, const permission_name& requirement)
   :account(account), code(code), type(type), requirement(requirement)
   {}

   account_name                      account;
   account_name                      code;
   action_name                       type;
   permission_name                   requirement;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(linkauth);
   }
};

struct unlinkauth {
   unlinkauth() = default;
   unlinkauth(const account_name& account, const account_name& code, const action_name& type)
   :account(account), code(code), type(type)
   {}

   account_name                      account;
   account_name                      code;
   action_name                       type;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(unlinkauth);
   }
};

struct canceldelay {
   permission_level      canceling_auth;
   transaction_id_type   trx_id;

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(canceldelay);
   }
};

struct onerror {
   uint128_t      sender_id;
   bytes          sent_trx;

   onerror( uint128_t sid, const char* data, size_t len )
   :sender_id(sid),sent_trx(data,data+len){}

   static account_name get_account() {
      return config::system_account_name;
   }

   static action_name get_name() {
      return N(onerror);
   }
};

struct transfer {
   account_name from;
   account_name to;
   asset        quantity;
   string       memo;
   static account_name get_account() {
      return N(eosio.token);
   }

   static action_name get_name() {
      return N(transfer);
   }
};

//上架合约
struct announcesale {
   name seller;
   vector <uint64_t> asset_ids;
   asset listing_price;
   symbol settlement_symbol;
   name maker_marketplace;
   static account_name get_account() {
      return N(atomicmarket);
   }

   static action_name get_name() {
      return N(announcesale);
   }
};
//新上架日志合约
struct lognewsale {
   uint64_t sale_id;
   name seller;
   vector <uint64_t> asset_ids;
   asset listing_price;
   symbol settlement_symbol;
   name maker_marketplace;
   name collection_name;
   double collection_fee;

   static account_name get_account() {
      return N(atomicmarket);
   }

   static action_name get_name() {
      return N(lognewsale);
   }


};

//buy
struct purchasesale {
   name buyer;
   uint64_t sale_id;
   uint64_t intended_delphi_median;
   name taker_marketplace;
   static account_name get_account() {
      return N(atomicmarket);
   }

   static action_name get_name() {
      return N(purchasesale);
   }
};
struct assertsale {
   uint64_t sale_id;
   vector <uint64_t> asset_ids_to_assert;
   asset listing_price_to_assert;
   symbol settlement_symbol_to_assert;
   static account_name get_account() {
      return N(atomicmarket);
   }

   static action_name get_name() {
      return N(assertsale);
   }
};


    
} } /// namespace eosio::chain

FC_REFLECT( eosio::chain::newaccount                       , (creator)(name)(owner)(active) )
FC_REFLECT( eosio::chain::setcode                          , (account)(vmtype)(vmversion)(code) )
FC_REFLECT( eosio::chain::setabi                           , (account)(abi) )
FC_REFLECT( eosio::chain::updateauth                       , (account)(permission)(parent)(auth) )
FC_REFLECT( eosio::chain::deleteauth                       , (account)(permission) )
FC_REFLECT( eosio::chain::linkauth                         , (account)(code)(type)(requirement) )
FC_REFLECT( eosio::chain::unlinkauth                       , (account)(code)(type) )
FC_REFLECT( eosio::chain::canceldelay                      , (canceling_auth)(trx_id) )
FC_REFLECT( eosio::chain::onerror                          , (sender_id)(sent_trx) )
FC_REFLECT( eosio::chain::transfer                         , (from)(to)(quantity)(memo) )
FC_REFLECT( eosio::chain::announcesale                     , (seller)(asset_ids)(listing_price)(settlement_symbol)(maker_marketplace) )
FC_REFLECT( eosio::chain::lognewsale                       , (sale_id)(seller)(asset_ids)(listing_price)(settlement_symbol)(maker_marketplace)(collection_name)(collection_fee) )
FC_REFLECT( eosio::chain::purchasesale                     , (buyer)(sale_id)(intended_delphi_median)(taker_marketplace) )
FC_REFLECT( eosio::chain::assertsale                     , (sale_id)(asset_ids_to_assert)(listing_price_to_assert)(settlement_symbol_to_assert) )
