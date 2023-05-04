(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Construction_parse_response.t : ConstructionParseResponse contains an array of operations that occur in a transaction blob. This should match the array of operations provided to `/construction/preprocess` and `/construction/payloads`. 
 *)

type t =
  { operations : Operation.t list
  ; (* [DEPRECATED by `account_identifier_signers` in `v1.4.4`] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty.  *)
    signers : string list
  ; account_identifier_signers : Account_identifier.t list
  ; metadata : Yojson.Safe.t option [@default None]
  }
[@@deriving yojson { strict = false }, show, eq]

(** ConstructionParseResponse contains an array of operations that occur in a transaction blob. This should match the array of operations provided to `/construction/preprocess` and `/construction/payloads`.  *)
let create (operations : Operation.t list) : t =
  { operations; signers = []; account_identifier_signers = []; metadata = None }
