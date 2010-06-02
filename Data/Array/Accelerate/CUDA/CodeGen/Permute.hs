-- |
-- Module      : Data.Array.Accelerate.CUDA.CodeGen.Permute
-- Copyright   : [2008..2010] Manuel M T Chakravarty, Gabriele Keller, Sean Lee
-- License     : BSD3
--
-- Maintainer  : Manuel M T Chakravarty <chak@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-partable (GHC extensions)
--

module Data.Array.Accelerate.CUDA.CodeGen.Permute (permute, backpermute)
  where

import Language.C
import Language.C.Data.Ident


-- Automatically generated
-- ~~~~~~~~~~~~~~~~~~~~~~~
--
permute :: String -> CExtDecl
permute name =
  CFDefExt (CFunDef ((:) (CTypeQual (CAttrQual (CAttr (Ident "global" (207367368) (NodeInfo (Position "permute.c" (27) (16)) (Name (6595)))) ([]) (NodeInfo (Position "permute.c" (27) (16)) (Name (6596)))))) ((:) (CTypeSpec (CVoidType (NodeInfo (Position "permute.c" (27) (25)) (Name (6598))))) ([]))) (CDeclr (Just (Ident name (232140133) (NodeInfo (Position "permute.c" (28) (1)) (Name (6597))))) ((:) (CFunDeclr (Right ((,) ((:) (CDecl ((:) (CTypeSpec (CTypeDef (Ident "TyOut" (246676808) (NodeInfo (Position "permute.c" (30) (5)) (Name (6600)))) (NodeInfo (Position "permute.c" (30) (5)) (Name (6601))))) ([])) ((:) ((,,) (Just (CDeclr (Just (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (30) (12)) (Name (6602))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (30) (11)) (Name (6604)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (30) (12)) (Name (6603))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (30) (5)) (Name (6605)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (31) (5)) (Name (6607))))) ((:) (CTypeSpec (CTypeDef (Ident "TyIn0" (231898372) (NodeInfo (Position "permute.c" (31) (11)) (Name (6606)))) (NodeInfo (Position "permute.c" (31) (11)) (Name (6608))))) ([]))) ((:) ((,,) (Just (CDeclr (Just (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (31) (18)) (Name (6609))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (31) (17)) (Name (6611)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (31) (18)) (Name (6610))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (31) (5)) (Name (6612)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (32) (5)) (Name (6613))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (32) (11)) (Name (6614))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (32) (20)) (Name (6615))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (32) (25)) (Name (6616))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (32) (24)) (Name (6618)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (32) (25)) (Name (6617))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (32) (5)) (Name (6619)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (33) (5)) (Name (6620))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (33) (11)) (Name (6621))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (33) (20)) (Name (6623))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "length" (217835360) (NodeInfo (Position "permute.c" (33) (24)) (Name (6622))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (33) (24)) (Name (6624))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (33) (5)) (Name (6625)))) ([]))))) (False))) ([]) (NodeInfo (Position "permute.c" (29) (1)) (Name (6626)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (28) (1)) (Name (6599)))) ([]) (CCompound ([]) ((:) (CBlockDecl (CDecl ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (36) (5)) (Name (6627))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (36) (14)) (Name (6629))))) ([]))) ((:) ((,,) (Just (CDeclr (Just (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (36) (18)) (Name (6628))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (36) (18)) (Name (6630))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (36) (5)) (Name (6631))))) ((:) (CBlockDecl (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (37) (5)) (Name (6632))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (37) (11)) (Name (6633))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (37) (20)) (Name (6635))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "gridSize" (425274938) (NodeInfo (Position "permute.c" (37) (24)) (Name (6634))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (37) (24)) (Name (6636))))) (Just (CInitExpr (CCall (CVar (Ident "__umul24" (340403796) (NodeInfo (Position "permute.c" (37) (35)) (Name (6637)))) (NodeInfo (Position "permute.c" (37) (35)) (Name (6638)))) ((:) (CMember (CVar (Ident "blockDim" (439769293) (NodeInfo (Position "permute.c" (37) (44)) (Name (6639)))) (NodeInfo (Position "permute.c" (37) (44)) (Name (6640)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (37) (53)) (Name (6641)))) (False) (NodeInfo (Position "permute.c" (37) (52)) (Name (6642)))) ((:) (CMember (CVar (Ident "gridDim" (213249579) (NodeInfo (Position "permute.c" (37) (56)) (Name (6643)))) (NodeInfo (Position "permute.c" (37) (56)) (Name (6644)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (37) (64)) (Name (6645)))) (False) (NodeInfo (Position "permute.c" (37) (63)) (Name (6646)))) ([]))) (NodeInfo (Position "permute.c" (37) (43)) (Name (6647)))) (NodeInfo (Position "permute.c" (37) (43)) (Name (6648))))) (Nothing)) ([])) (NodeInfo (Position "permute.c" (37) (5)) (Name (6649))))) ((:) (CBlockStmt (CFor (Left (Just (CAssign (CAssignOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (10)) (Name (6650)))) (NodeInfo (Position "permute.c" (39) (10)) (Name (6651)))) (CBinary (CAddOp) (CCall (CVar (Ident "__umul24" (340403796) (NodeInfo (Position "permute.c" (39) (16)) (Name (6652)))) (NodeInfo (Position "permute.c" (39) (16)) (Name (6653)))) ((:) (CMember (CVar (Ident "blockDim" (439769293) (NodeInfo (Position "permute.c" (39) (25)) (Name (6654)))) (NodeInfo (Position "permute.c" (39) (25)) (Name (6655)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (34)) (Name (6656)))) (False) (NodeInfo (Position "permute.c" (39) (33)) (Name (6657)))) ((:) (CMember (CVar (Ident "blockIdx" (462756685) (NodeInfo (Position "permute.c" (39) (37)) (Name (6658)))) (NodeInfo (Position "permute.c" (39) (37)) (Name (6659)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (46)) (Name (6660)))) (False) (NodeInfo (Position "permute.c" (39) (45)) (Name (6661)))) ([]))) (NodeInfo (Position "permute.c" (39) (24)) (Name (6662)))) (CMember (CVar (Ident "threadIdx" (424617805) (NodeInfo (Position "permute.c" (39) (51)) (Name (6663)))) (NodeInfo (Position "permute.c" (39) (51)) (Name (6664)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (61)) (Name (6665)))) (False) (NodeInfo (Position "permute.c" (39) (60)) (Name (6666)))) (NodeInfo (Position "permute.c" (39) (49)) (Name (6667)))) (NodeInfo (Position "permute.c" (39) (14)) (Name (6668)))))) (Just (CBinary (CLeOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (64)) (Name (6669)))) (NodeInfo (Position "permute.c" (39) (64)) (Name (6670)))) (CVar (Ident "length" (217835360) (NodeInfo (Position "permute.c" (39) (70)) (Name (6671)))) (NodeInfo (Position "permute.c" (39) (70)) (Name (6672)))) (NodeInfo (Position "permute.c" (39) (68)) (Name (6673))))) (Just (CAssign (CAddAssOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (78)) (Name (6674)))) (NodeInfo (Position "permute.c" (39) (78)) (Name (6675)))) (CVar (Ident "gridSize" (425274938) (NodeInfo (Position "permute.c" (39) (85)) (Name (6676)))) (NodeInfo (Position "permute.c" (39) (85)) (Name (6677)))) (NodeInfo (Position "permute.c" (39) (82)) (Name (6678))))) (CCompound ([]) ((:) (CBlockStmt (CIf (CConst (CIntConst (CInteger (0) (DecRepr) (Flags (0))) (NodeInfo (Position "permute.c" (41) (13)) (Name (6679))))) (CExpr (Just (CAssign (CAssignOp) (CIndex (CVar (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (41) (16)) (Name (6680)))) (NodeInfo (Position "permute.c" (41) (16)) (Name (6681)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (41) (22)) (Name (6682)))) (NodeInfo (Position "permute.c" (41) (22)) (Name (6683)))) (NodeInfo (Position "permute.c" (41) (21)) (Name (6684)))) (CIndex (CVar (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (41) (29)) (Name (6685)))) (NodeInfo (Position "permute.c" (41) (29)) (Name (6686)))) (CIndex (CVar (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (41) (35)) (Name (6687)))) (NodeInfo (Position "permute.c" (41) (35)) (Name (6688)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (41) (45)) (Name (6689)))) (NodeInfo (Position "permute.c" (41) (45)) (Name (6690)))) (NodeInfo (Position "permute.c" (41) (44)) (Name (6691)))) (NodeInfo (Position "permute.c" (41) (34)) (Name (6692)))) (NodeInfo (Position "permute.c" (41) (27)) (Name (6693))))) (NodeInfo (Position "permute.c" (41) (27)) (Name (6694)))) (Just (CExpr (Just (CAssign (CAssignOp) (CIndex (CVar (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (42) (14)) (Name (6695)))) (NodeInfo (Position "permute.c" (42) (14)) (Name (6696)))) (CIndex (CVar (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (42) (20)) (Name (6697)))) (NodeInfo (Position "permute.c" (42) (20)) (Name (6698)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (42) (30)) (Name (6699)))) (NodeInfo (Position "permute.c" (42) (30)) (Name (6700)))) (NodeInfo (Position "permute.c" (42) (29)) (Name (6701)))) (NodeInfo (Position "permute.c" (42) (19)) (Name (6702)))) (CIndex (CVar (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (42) (38)) (Name (6703)))) (NodeInfo (Position "permute.c" (42) (38)) (Name (6704)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (42) (44)) (Name (6705)))) (NodeInfo (Position "permute.c" (42) (44)) (Name (6706)))) (NodeInfo (Position "permute.c" (42) (43)) (Name (6707)))) (NodeInfo (Position "permute.c" (42) (36)) (Name (6708))))) (NodeInfo (Position "permute.c" (42) (36)) (Name (6709))))) (NodeInfo (Position "permute.c" (41) (9)) (Name (6710))))) ([])) (NodeInfo (Position "permute.c" (40) (5)) (Name (6711)))) (NodeInfo (Position "permute.c" (39) (5)) (Name (6712))))) ([])))) (NodeInfo (Position "permute.c" (35) (1)) (Name (6713)))) (NodeInfo (Position "permute.c" (27) (16)) (Name (6714))))

backpermute :: String -> CExtDecl
backpermute name =
  CFDefExt (CFunDef ((:) (CTypeQual (CAttrQual (CAttr (Ident "global" (207367368) (NodeInfo (Position "permute.c" (27) (16)) (Name (6595)))) ([]) (NodeInfo (Position "permute.c" (27) (16)) (Name (6596)))))) ((:) (CTypeSpec (CVoidType (NodeInfo (Position "permute.c" (27) (25)) (Name (6598))))) ([]))) (CDeclr (Just (Ident name (232140133) (NodeInfo (Position "permute.c" (28) (1)) (Name (6597))))) ((:) (CFunDeclr (Right ((,) ((:) (CDecl ((:) (CTypeSpec (CTypeDef (Ident "TyOut" (246676808) (NodeInfo (Position "permute.c" (30) (5)) (Name (6600)))) (NodeInfo (Position "permute.c" (30) (5)) (Name (6601))))) ([])) ((:) ((,,) (Just (CDeclr (Just (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (30) (12)) (Name (6602))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (30) (11)) (Name (6604)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (30) (12)) (Name (6603))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (30) (5)) (Name (6605)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (31) (5)) (Name (6607))))) ((:) (CTypeSpec (CTypeDef (Ident "TyIn0" (231898372) (NodeInfo (Position "permute.c" (31) (11)) (Name (6606)))) (NodeInfo (Position "permute.c" (31) (11)) (Name (6608))))) ([]))) ((:) ((,,) (Just (CDeclr (Just (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (31) (18)) (Name (6609))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (31) (17)) (Name (6611)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (31) (18)) (Name (6610))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (31) (5)) (Name (6612)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (32) (5)) (Name (6613))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (32) (11)) (Name (6614))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (32) (20)) (Name (6615))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (32) (25)) (Name (6616))))) ((:) (CPtrDeclr ([]) (NodeInfo (Position "permute.c" (32) (24)) (Name (6618)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (32) (25)) (Name (6617))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (32) (5)) (Name (6619)))) ((:) (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (33) (5)) (Name (6620))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (33) (11)) (Name (6621))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (33) (20)) (Name (6623))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "length" (217835360) (NodeInfo (Position "permute.c" (33) (24)) (Name (6622))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (33) (24)) (Name (6624))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (33) (5)) (Name (6625)))) ([]))))) (False))) ([]) (NodeInfo (Position "permute.c" (29) (1)) (Name (6626)))) ([])) (Nothing) ([]) (NodeInfo (Position "permute.c" (28) (1)) (Name (6599)))) ([]) (CCompound ([]) ((:) (CBlockDecl (CDecl ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (36) (5)) (Name (6627))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (36) (14)) (Name (6629))))) ([]))) ((:) ((,,) (Just (CDeclr (Just (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (36) (18)) (Name (6628))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (36) (18)) (Name (6630))))) (Nothing) (Nothing)) ([])) (NodeInfo (Position "permute.c" (36) (5)) (Name (6631))))) ((:) (CBlockDecl (CDecl ((:) (CTypeQual (CConstQual (NodeInfo (Position "permute.c" (37) (5)) (Name (6632))))) ((:) (CTypeSpec (CUnsigType (NodeInfo (Position "permute.c" (37) (11)) (Name (6633))))) ((:) (CTypeSpec (CIntType (NodeInfo (Position "permute.c" (37) (20)) (Name (6635))))) ([])))) ((:) ((,,) (Just (CDeclr (Just (Ident "gridSize" (425274938) (NodeInfo (Position "permute.c" (37) (24)) (Name (6634))))) ([]) (Nothing) ([]) (NodeInfo (Position "permute.c" (37) (24)) (Name (6636))))) (Just (CInitExpr (CCall (CVar (Ident "__umul24" (340403796) (NodeInfo (Position "permute.c" (37) (35)) (Name (6637)))) (NodeInfo (Position "permute.c" (37) (35)) (Name (6638)))) ((:) (CMember (CVar (Ident "blockDim" (439769293) (NodeInfo (Position "permute.c" (37) (44)) (Name (6639)))) (NodeInfo (Position "permute.c" (37) (44)) (Name (6640)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (37) (53)) (Name (6641)))) (False) (NodeInfo (Position "permute.c" (37) (52)) (Name (6642)))) ((:) (CMember (CVar (Ident "gridDim" (213249579) (NodeInfo (Position "permute.c" (37) (56)) (Name (6643)))) (NodeInfo (Position "permute.c" (37) (56)) (Name (6644)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (37) (64)) (Name (6645)))) (False) (NodeInfo (Position "permute.c" (37) (63)) (Name (6646)))) ([]))) (NodeInfo (Position "permute.c" (37) (43)) (Name (6647)))) (NodeInfo (Position "permute.c" (37) (43)) (Name (6648))))) (Nothing)) ([])) (NodeInfo (Position "permute.c" (37) (5)) (Name (6649))))) ((:) (CBlockStmt (CFor (Left (Just (CAssign (CAssignOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (10)) (Name (6650)))) (NodeInfo (Position "permute.c" (39) (10)) (Name (6651)))) (CBinary (CAddOp) (CCall (CVar (Ident "__umul24" (340403796) (NodeInfo (Position "permute.c" (39) (16)) (Name (6652)))) (NodeInfo (Position "permute.c" (39) (16)) (Name (6653)))) ((:) (CMember (CVar (Ident "blockDim" (439769293) (NodeInfo (Position "permute.c" (39) (25)) (Name (6654)))) (NodeInfo (Position "permute.c" (39) (25)) (Name (6655)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (34)) (Name (6656)))) (False) (NodeInfo (Position "permute.c" (39) (33)) (Name (6657)))) ((:) (CMember (CVar (Ident "blockIdx" (462756685) (NodeInfo (Position "permute.c" (39) (37)) (Name (6658)))) (NodeInfo (Position "permute.c" (39) (37)) (Name (6659)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (46)) (Name (6660)))) (False) (NodeInfo (Position "permute.c" (39) (45)) (Name (6661)))) ([]))) (NodeInfo (Position "permute.c" (39) (24)) (Name (6662)))) (CMember (CVar (Ident "threadIdx" (424617805) (NodeInfo (Position "permute.c" (39) (51)) (Name (6663)))) (NodeInfo (Position "permute.c" (39) (51)) (Name (6664)))) (Ident "x" (120) (NodeInfo (Position "permute.c" (39) (61)) (Name (6665)))) (False) (NodeInfo (Position "permute.c" (39) (60)) (Name (6666)))) (NodeInfo (Position "permute.c" (39) (49)) (Name (6667)))) (NodeInfo (Position "permute.c" (39) (14)) (Name (6668)))))) (Just (CBinary (CLeOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (64)) (Name (6669)))) (NodeInfo (Position "permute.c" (39) (64)) (Name (6670)))) (CVar (Ident "length" (217835360) (NodeInfo (Position "permute.c" (39) (70)) (Name (6671)))) (NodeInfo (Position "permute.c" (39) (70)) (Name (6672)))) (NodeInfo (Position "permute.c" (39) (68)) (Name (6673))))) (Just (CAssign (CAddAssOp) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (39) (78)) (Name (6674)))) (NodeInfo (Position "permute.c" (39) (78)) (Name (6675)))) (CVar (Ident "gridSize" (425274938) (NodeInfo (Position "permute.c" (39) (85)) (Name (6676)))) (NodeInfo (Position "permute.c" (39) (85)) (Name (6677)))) (NodeInfo (Position "permute.c" (39) (82)) (Name (6678))))) (CCompound ([]) ((:) (CBlockStmt (CIf (CConst (CIntConst (CInteger (1) (DecRepr) (Flags (0))) (NodeInfo (Position "permute.c" (41) (13)) (Name (6679))))) (CExpr (Just (CAssign (CAssignOp) (CIndex (CVar (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (41) (16)) (Name (6680)))) (NodeInfo (Position "permute.c" (41) (16)) (Name (6681)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (41) (22)) (Name (6682)))) (NodeInfo (Position "permute.c" (41) (22)) (Name (6683)))) (NodeInfo (Position "permute.c" (41) (21)) (Name (6684)))) (CIndex (CVar (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (41) (29)) (Name (6685)))) (NodeInfo (Position "permute.c" (41) (29)) (Name (6686)))) (CIndex (CVar (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (41) (35)) (Name (6687)))) (NodeInfo (Position "permute.c" (41) (35)) (Name (6688)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (41) (45)) (Name (6689)))) (NodeInfo (Position "permute.c" (41) (45)) (Name (6690)))) (NodeInfo (Position "permute.c" (41) (44)) (Name (6691)))) (NodeInfo (Position "permute.c" (41) (34)) (Name (6692)))) (NodeInfo (Position "permute.c" (41) (27)) (Name (6693))))) (NodeInfo (Position "permute.c" (41) (27)) (Name (6694)))) (Just (CExpr (Just (CAssign (CAssignOp) (CIndex (CVar (Ident "d_out" (247197784) (NodeInfo (Position "permute.c" (42) (14)) (Name (6695)))) (NodeInfo (Position "permute.c" (42) (14)) (Name (6696)))) (CIndex (CVar (Ident "d_indices" (445867323) (NodeInfo (Position "permute.c" (42) (20)) (Name (6697)))) (NodeInfo (Position "permute.c" (42) (20)) (Name (6698)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (42) (30)) (Name (6699)))) (NodeInfo (Position "permute.c" (42) (30)) (Name (6700)))) (NodeInfo (Position "permute.c" (42) (29)) (Name (6701)))) (NodeInfo (Position "permute.c" (42) (19)) (Name (6702)))) (CIndex (CVar (Ident "d_in0" (232419348) (NodeInfo (Position "permute.c" (42) (38)) (Name (6703)))) (NodeInfo (Position "permute.c" (42) (38)) (Name (6704)))) (CVar (Ident "idx" (1978985) (NodeInfo (Position "permute.c" (42) (44)) (Name (6705)))) (NodeInfo (Position "permute.c" (42) (44)) (Name (6706)))) (NodeInfo (Position "permute.c" (42) (43)) (Name (6707)))) (NodeInfo (Position "permute.c" (42) (36)) (Name (6708))))) (NodeInfo (Position "permute.c" (42) (36)) (Name (6709))))) (NodeInfo (Position "permute.c" (41) (9)) (Name (6710))))) ([])) (NodeInfo (Position "permute.c" (40) (5)) (Name (6711)))) (NodeInfo (Position "permute.c" (39) (5)) (Name (6712))))) ([])))) (NodeInfo (Position "permute.c" (35) (1)) (Name (6713)))) (NodeInfo (Position "permute.c" (27) (16)) (Name (6714))))
