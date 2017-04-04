{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <git2.h>
module Bindings.Libgit2.Types where
import Foreign.Ptr
#strict_import

import Bindings.Libgit2.Common
{- typedef int64_t git_off_t; -}
#synonym_t git_off_t , CLong
{- typedef int64_t git_time_t; -}
#synonym_t git_time_t , CLong
{- typedef enum {
            GIT_OBJ_ANY = -2,
            GIT_OBJ_BAD = -1,
            GIT_OBJ__EXT1 = 0,
            GIT_OBJ_COMMIT = 1,
            GIT_OBJ_TREE = 2,
            GIT_OBJ_BLOB = 3,
            GIT_OBJ_TAG = 4,
            GIT_OBJ__EXT2 = 5,
            GIT_OBJ_OFS_DELTA = 6,
            GIT_OBJ_REF_DELTA = 7
        } git_otype; -}
#integral_t git_otype
#num GIT_OBJ_ANY
#num GIT_OBJ_BAD
#num GIT_OBJ__EXT1
#num GIT_OBJ_COMMIT
#num GIT_OBJ_TREE
#num GIT_OBJ_BLOB
#num GIT_OBJ_TAG
#num GIT_OBJ__EXT2
#num GIT_OBJ_OFS_DELTA
#num GIT_OBJ_REF_DELTA
{- typedef struct git_odb git_odb; -}
#opaque_t git_odb
{- typedef struct git_odb_backend git_odb_backend; -}
{-  #opaque_t git_odb_backend -}
{- typedef struct git_odb_object git_odb_object; -}
#opaque_t git_odb_object
{- typedef struct git_odb_stream git_odb_stream; -}
{-  #opaque_t git_odb_stream -}
{- typedef struct git_odb_writepack git_odb_writepack; -}
{-  #opaque_t git_odb_writepack -}
{- typedef struct git_refdb git_refdb; -}
#opaque_t git_refdb
{- typedef struct git_refdb_backend git_refdb_backend; -}
{-  #opaque_t git_refdb_backend -}
{- typedef struct git_repository git_repository; -}
#opaque_t git_repository
{- typedef struct git_object git_object; -}
#opaque_t git_object
{- typedef struct git_revwalk git_revwalk; -}
#opaque_t git_revwalk
{- typedef struct git_tag git_tag; -}
#opaque_t git_tag
{- typedef struct git_blob git_blob; -}
#opaque_t git_blob
{- typedef struct git_commit git_commit; -}
#opaque_t git_commit
{- typedef struct git_tree_entry git_tree_entry; -}
#opaque_t git_tree_entry
{- typedef struct git_tree git_tree; -}
#opaque_t git_tree
{- typedef struct git_treebuilder git_treebuilder; -}
#opaque_t git_treebuilder
{- typedef struct git_index git_index; -}
#opaque_t git_index
{- typedef struct git_config git_config; -}
#opaque_t git_config
{- typedef struct git_config_backend git_config_backend; -}
{-  #opaque_t git_config_backend -}
{- typedef struct git_reflog_entry git_reflog_entry; -}
#opaque_t git_reflog_entry
{- typedef struct git_reflog git_reflog; -}
#opaque_t git_reflog
{- typedef struct git_note git_note; -}
#opaque_t git_note
{- typedef struct git_packbuilder git_packbuilder; -}
#opaque_t git_packbuilder
{- typedef struct git_time {
            git_time_t time; int offset;
        } git_time; -}
#starttype git_time
#field time , CLong
#field offset , CInt
#stoptype
{- typedef struct git_signature {
            char * name; char * email; git_time when;
        } git_signature; -}
#starttype git_signature
#field name , CString
#field email , CString
#field when , <git_time>
#stoptype
{- typedef struct git_reference git_reference; -}
#opaque_t git_reference
{- typedef enum {
            GIT_REF_INVALID = 0,
            GIT_REF_OID = 1,
            GIT_REF_SYMBOLIC = 2,
            GIT_REF_LISTALL = GIT_REF_OID | GIT_REF_SYMBOLIC
        } git_ref_t; -}
#integral_t git_ref_t
#num GIT_REF_INVALID
#num GIT_REF_OID
#num GIT_REF_SYMBOLIC
#num GIT_REF_LISTALL
{- typedef enum {
            GIT_BRANCH_LOCAL = 1, GIT_BRANCH_REMOTE = 2
        } git_branch_t; -}
#integral_t git_branch_t
#num GIT_BRANCH_LOCAL
#num GIT_BRANCH_REMOTE
{- typedef enum {
            GIT_FILEMODE_NEW = 00,
            GIT_FILEMODE_TREE = 040000,
            GIT_FILEMODE_BLOB = 0100644,
            GIT_FILEMODE_BLOB_EXECUTABLE = 0100755,
            GIT_FILEMODE_LINK = 0120000,
            GIT_FILEMODE_COMMIT = 0160000
        } git_filemode_t; -}
#integral_t git_filemode_t
#num GIT_FILEMODE_UNREADABLE
#num GIT_FILEMODE_TREE
#num GIT_FILEMODE_BLOB
#num GIT_FILEMODE_BLOB_EXECUTABLE
#num GIT_FILEMODE_LINK
#num GIT_FILEMODE_COMMIT
{- typedef struct git_refspec git_refspec; -}
#opaque_t git_refspec
{- typedef struct git_remote git_remote; -}
#opaque_t git_remote
{- typedef struct git_push git_push; -}
#opaque_t git_push
{- typedef struct git_remote_head git_remote_head; -}
{-  #opaque_t git_remote_head -}
{- typedef struct git_remote_callbacks git_remote_callbacks; -}
{-  #opaque_t git_remote_callbacks -}


{- typedef enum {
            GIT_SUBMODULE_UPDATE_DEFAULT = -1,
            GIT_SUBMODULE_UPDATE_CHECKOUT = 0,
            GIT_SUBMODULE_UPDATE_REBASE = 1,
            GIT_SUBMODULE_UPDATE_MERGE = 2,
            GIT_SUBMODULE_UPDATE_NONE = 3
        } git_submodule_update_t; -}
#integral_t git_submodule_update_t
#num GIT_SUBMODULE_UPDATE_DEFAULT
#num GIT_SUBMODULE_UPDATE_CHECKOUT
#num GIT_SUBMODULE_UPDATE_REBASE
#num GIT_SUBMODULE_UPDATE_MERGE
#num GIT_SUBMODULE_UPDATE_NONE
{- typedef enum {
            GIT_SUBMODULE_IGNORE_DEFAULT = -1,
            GIT_SUBMODULE_IGNORE_NONE = 0,
            GIT_SUBMODULE_IGNORE_UNTRACKED = 1,
            GIT_SUBMODULE_IGNORE_DIRTY = 2,
            GIT_SUBMODULE_IGNORE_ALL = 3
        } git_submodule_ignore_t; -}
#integral_t git_submodule_ignore_t
#num GIT_SUBMODULE_IGNORE_UNSPECIFIED
#num GIT_SUBMODULE_IGNORE_NONE
#num GIT_SUBMODULE_IGNORE_UNTRACKED
#num GIT_SUBMODULE_IGNORE_DIRTY
#num GIT_SUBMODULE_IGNORE_ALL
