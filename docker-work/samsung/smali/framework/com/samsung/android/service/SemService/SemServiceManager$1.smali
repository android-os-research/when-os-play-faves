.class Lcom/samsung/android/service/SemService/SemServiceManager$1;
.super Ljava/lang/Object;
.source "SemServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/SemService/SemServiceManager;->deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

.field final synthetic blacklist val$aid:Ljava/util/ArrayList;

.field final synthetic blacklist val$flag:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/service/SemService/SemServiceManager;

    .line 709
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    iput-object p2, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 35

    .line 711
    move-object/from16 v1, p0

    const-string v2, "Flag Error"

    const-string v3, "03"

    const-string v4, "SEC_ESE_ServiceManager"

    const/4 v5, -0x1

    .line 713
    .local v5, "ret":I
    const/16 v6, 0xe

    new-array v6, v6, [B

    fill-array-data v6, :array_d08

    .line 715
    .local v6, "selectSCRSCmd":[B
    const/4 v7, 0x0

    .line 716
    .local v7, "baRsp":[B
    const v8, 0x16800

    new-array v9, v8, [B

    .line 717
    .local v9, "aidListByteData":[B
    const/4 v10, 0x0

    .line 718
    .local v10, "aidListByteDataLen":I
    const/4 v11, 0x5

    new-array v12, v11, [B

    fill-array-data v12, :array_d14

    .line 719
    .local v12, "getWhiteListCmd":[B
    new-array v13, v11, [B

    fill-array-data v13, :array_d1c

    .line 721
    .local v13, "getWhiteListCmdMore":[B
    const/4 v14, 0x0

    .line 722
    .local v14, "isOpen":Z
    const/4 v15, 0x0

    .line 723
    .local v15, "isMoreData":Z
    const/16 v16, 0x0

    .line 726
    .local v16, "listNull":Z
    :try_start_26
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    if-eqz v8, :cond_b91

    .line 733
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2c} :catch_c71
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_26 .. :try_end_2c} :catch_c4a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_26 .. :try_end_2c} :catch_c23
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_bf6
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2c} :catch_bce

    const-string v11, "02"

    if-nez v2, :cond_8a

    :try_start_30
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_8a

    .line 734
    :cond_3f
    const-string v2, "AID Null Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v5, -0xd

    .line 737
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "AID Error"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .end local v16    # "listNull":Z
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v2
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_4e} :catch_7e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_30 .. :try_end_4e} :catch_72
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_4e} :catch_66
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_5a
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_4e} :catch_4e

    .line 984
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    .restart local v16    # "listNull":Z
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_4e
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    goto/16 :goto_bdc

    .line 977
    :catch_5a
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    goto/16 :goto_c04

    .line 974
    :catch_66
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    goto/16 :goto_c31

    .line 971
    :catch_72
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    goto/16 :goto_c58

    .line 968
    :catch_7e
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    goto/16 :goto_c7f

    .line 739
    :cond_8a
    :goto_8a
    :try_start_8a
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v2
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_90} :catch_c71
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8a .. :try_end_90} :catch_c4a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8a .. :try_end_90} :catch_c23
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_bf6
    .catch Ljava/lang/Error; {:try_start_8a .. :try_end_90} :catch_bce

    move v5, v2

    .line 740
    if-nez v5, :cond_b31

    .line 745
    const/4 v14, 0x1

    .line 747
    :try_start_94
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v2
    :try_end_9a
    .catch Ljava/lang/NullPointerException; {:try_start_94 .. :try_end_9a} :catch_b1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_94 .. :try_end_9a} :catch_b09
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_94 .. :try_end_9a} :catch_af5
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_ae1
    .catch Ljava/lang/Error; {:try_start_94 .. :try_end_9a} :catch_acd

    move-object v7, v2

    .line 748
    const-string v2, "RESP Error"

    if-eqz v7, :cond_a76

    :try_start_9f
    array-length v8, v7
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_a0} :catch_b1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9f .. :try_end_a0} :catch_b09
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9f .. :try_end_a0} :catch_af5
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a0} :catch_ae1
    .catch Ljava/lang/Error; {:try_start_9f .. :try_end_a0} :catch_acd

    move-object/from16 v18, v6

    .end local v6    # "selectSCRSCmd":[B
    .local v18, "selectSCRSCmd":[B
    const/4 v6, 0x2

    if-lt v8, v6, :cond_a67

    .line 754
    :try_start_a5
    array-length v8, v7

    .line 755
    .local v8, "baRspLen":I
    const/16 v19, 0x0

    .line 757
    .local v19, "failFlag":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v20

    .line 758
    .local v21, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v20, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b9
    .catch Ljava/lang/NullPointerException; {:try_start_a5 .. :try_end_b9} :catch_a55
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a5 .. :try_end_b9} :catch_a43
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a5 .. :try_end_b9} :catch_a31
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b9} :catch_a1f
    .catch Ljava/lang/Error; {:try_start_a5 .. :try_end_b9} :catch_a0d

    move/from16 v22, v10

    .end local v10    # "aidListByteDataLen":I
    .local v22, "aidListByteDataLen":I
    :try_start_bb
    const-string v10, "Select SW : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v8, -0x2

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v6, 0x2

    if-lt v8, v6, :cond_979

    add-int/lit8 v6, v8, -0x2

    aget-byte v6, v7, v6

    const/16 v10, -0x70

    if-ne v6, v10, :cond_979

    add-int/lit8 v6, v8, -0x1

    aget-byte v6, v7, v6

    if-nez v6, :cond_979

    .line 762
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    const-string v10, "01"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_f9
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_f9} :catch_9fb
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_bb .. :try_end_f9} :catch_9e9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_bb .. :try_end_f9} :catch_9d7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f9} :catch_9c5
    .catch Ljava/lang/Error; {:try_start_bb .. :try_end_f9} :catch_9b3

    const-string v10, "RSP SW : "

    move/from16 v23, v8

    .end local v8    # "baRspLen":I
    .local v23, "baRspLen":I
    const-string v8, "BDAL Error"

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, -0x8

    const/16 v27, -0x80

    move/from16 v28, v14

    .end local v14    # "isOpen":Z
    .local v28, "isOpen":Z
    const-string v14, "Start ALL BDAL"

    move/from16 v29, v15

    .end local v15    # "isMoreData":Z
    .local v29, "isMoreData":Z
    const/4 v15, 0x0

    if-eqz v6, :cond_1de

    .line 763
    :try_start_110
    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v6, 0x5

    new-array v6, v6, [B

    aput-byte v27, v6, v15

    const/4 v11, 0x1

    aput-byte v26, v6, v11

    const/4 v14, 0x2

    aput-byte v15, v6, v14

    aput-byte v11, v6, v25

    aput-byte v15, v6, v24

    .line 766
    .local v6, "deactivationCMD":[B
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v11, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v11

    move-object v7, v11

    .line 767
    if-eqz v7, :cond_185

    array-length v11, v7

    const/4 v14, 0x2

    if-lt v11, v14, :cond_185

    .line 773
    array-length v2, v7

    move v8, v2

    .line 775
    .end local v23    # "baRspLen":I
    .restart local v8    # "baRspLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v10, v8, -0x2

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v2, 0x2

    if-lt v8, v2, :cond_170

    add-int/lit8 v2, v8, -0x2

    aget-byte v2, v7, v2

    const/16 v10, -0x70

    if-ne v2, v10, :cond_170

    add-int/lit8 v2, v8, -0x1

    aget-byte v2, v7, v2

    if-nez v2, :cond_170

    .line 777
    const-string v2, "BDAL Success"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    .line 779
    :cond_170
    const-string v2, "BDAL Fail"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    add-int/lit8 v19, v19, 0x1

    .line 782
    .end local v6    # "deactivationCMD":[B
    :goto_177
    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object/from16 v11, v21

    move/from16 v10, v22

    move/from16 v15, v29

    goto/16 :goto_9ab

    .line 768
    .end local v8    # "baRspLen":I
    .restart local v6    # "deactivationCMD":[B
    .restart local v23    # "baRspLen":I
    :cond_185
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v8
    :try_end_18e
    .catch Ljava/lang/NullPointerException; {:try_start_110 .. :try_end_18e} :catch_1ce
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_110 .. :try_end_18e} :catch_1be
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_110 .. :try_end_18e} :catch_1ae
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_18e} :catch_19e
    .catch Ljava/lang/Error; {:try_start_110 .. :try_end_18e} :catch_18e

    .line 984
    .end local v6    # "deactivationCMD":[B
    .end local v19    # "failFlag":I
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "baRspLen":I
    .restart local v5    # "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_18e
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_bdc

    .line 977
    :catch_19e
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c04

    .line 974
    :catch_1ae
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c31

    .line 971
    :catch_1be
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c58

    .line 968
    :catch_1ce
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c7f

    .line 783
    .restart local v19    # "failFlag":I
    .restart local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "baRspLen":I
    :cond_1de
    :try_start_1de
    const-string v6, "Start Get-L"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e3
    .catch Ljava/lang/NullPointerException; {:try_start_1de .. :try_end_1e3} :catch_967
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1de .. :try_end_1e3} :catch_955
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1de .. :try_end_1e3} :catch_943
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e3} :catch_931
    .catch Ljava/lang/Error; {:try_start_1de .. :try_end_1e3} :catch_91f

    .line 784
    const/4 v6, 0x0

    move/from16 v15, v22

    .end local v22    # "aidListByteDataLen":I
    .local v6, "k":I
    .local v15, "aidListByteDataLen":I
    :goto_1e6
    move-object/from16 v22, v7

    .end local v7    # "baRsp":[B
    .local v22, "baRsp":[B
    const/16 v7, 0x14

    if-ge v6, v7, :cond_4b4

    .line 785
    if-eqz v29, :cond_294

    .line 786
    :try_start_1ee
    const-string v7, "M"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v7, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7
    :try_end_1f9
    .catch Ljava/lang/NullPointerException; {:try_start_1ee .. :try_end_1f9} :catch_283
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1ee .. :try_end_1f9} :catch_272
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1ee .. :try_end_1f9} :catch_261
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f9} :catch_250
    .catch Ljava/lang/Error; {:try_start_1ee .. :try_end_1f9} :catch_23f

    .line 788
    .end local v22    # "baRsp":[B
    .restart local v7    # "baRsp":[B
    move-object/from16 v30, v13

    .end local v13    # "getWhiteListCmdMore":[B
    .local v30, "getWhiteListCmdMore":[B
    :try_start_1fb
    array-length v13, v7
    :try_end_1fc
    .catch Ljava/lang/NullPointerException; {:try_start_1fb .. :try_end_1fc} :catch_232
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1fb .. :try_end_1fc} :catch_225
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1fb .. :try_end_1fc} :catch_218
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_1fc} :catch_20b
    .catch Ljava/lang/Error; {:try_start_1fb .. :try_end_1fc} :catch_1fe

    .end local v23    # "baRspLen":I
    .local v13, "baRspLen":I
    goto/16 :goto_29d

    .line 984
    .end local v6    # "k":I
    .end local v13    # "baRspLen":I
    .end local v19    # "failFlag":I
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1fe
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_bdc

    .line 977
    :catch_20b
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c04

    .line 974
    :catch_218
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c31

    .line 971
    :catch_225
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c58

    .line 968
    :catch_232
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_c7f

    .line 984
    .end local v7    # "baRsp":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .local v13, "getWhiteListCmdMore":[B
    .restart local v22    # "baRsp":[B
    :catch_23f
    move-exception v0

    move-object/from16 v30, v13

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    goto/16 :goto_bdc

    .line 977
    .end local v30    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_250
    move-exception v0

    move-object/from16 v30, v13

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    goto/16 :goto_c04

    .line 974
    .end local v30    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_261
    move-exception v0

    move-object/from16 v30, v13

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    goto/16 :goto_c31

    .line 971
    .end local v30    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_272
    move-exception v0

    move-object/from16 v30, v13

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    goto/16 :goto_c58

    .line 968
    .end local v30    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_283
    move-exception v0

    move-object/from16 v30, v13

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    goto/16 :goto_c7f

    .line 790
    .end local v30    # "getWhiteListCmdMore":[B
    .restart local v6    # "k":I
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v19    # "failFlag":I
    .restart local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "baRspLen":I
    :cond_294
    move-object/from16 v30, v13

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    :try_start_296
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v7, v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7
    :try_end_29c
    .catch Ljava/lang/NullPointerException; {:try_start_296 .. :try_end_29c} :catch_4a3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_296 .. :try_end_29c} :catch_492
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_296 .. :try_end_29c} :catch_481
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_29c} :catch_470
    .catch Ljava/lang/Error; {:try_start_296 .. :try_end_29c} :catch_45f

    .line 791
    .end local v22    # "baRsp":[B
    .restart local v7    # "baRsp":[B
    :try_start_29c
    array-length v13, v7
    :try_end_29d
    .catch Ljava/lang/NullPointerException; {:try_start_29c .. :try_end_29d} :catch_450
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_29c .. :try_end_29d} :catch_441
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_29c .. :try_end_29d} :catch_432
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_29d} :catch_423
    .catch Ljava/lang/Error; {:try_start_29c .. :try_end_29d} :catch_414

    .line 794
    .end local v23    # "baRspLen":I
    .local v13, "baRspLen":I
    :goto_29d
    move-object/from16 v31, v12

    .end local v12    # "getWhiteListCmd":[B
    .local v31, "getWhiteListCmd":[B
    :try_start_29f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2a4
    .catch Ljava/lang/NullPointerException; {:try_start_29f .. :try_end_2a4} :catch_407
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_29f .. :try_end_2a4} :catch_3fa
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_29f .. :try_end_2a4} :catch_3ed
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2a4} :catch_3e0
    .catch Ljava/lang/Error; {:try_start_29f .. :try_end_2a4} :catch_3d3

    move/from16 v32, v5

    .end local v5    # "ret":I
    .local v32, "ret":I
    :try_start_2a6
    const-string v5, "List SW : "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v12, v13, -0x2

    aget-byte v12, v7, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v12, v13, -0x1

    aget-byte v12, v7, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v5, 0x2

    if-lt v13, v5, :cond_308

    add-int/lit8 v5, v13, -0x2

    aget-byte v5, v7, v5

    const/16 v12, 0x63

    if-ne v5, v12, :cond_308

    add-int/lit8 v5, v13, -0x1

    aget-byte v5, v7, v5

    const/16 v12, 0x10

    if-ne v5, v12, :cond_308

    .line 797
    const-string v5, "M-Get List"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v29, 0x1

    .line 800
    add-int/lit8 v5, v13, -0x2

    add-int/2addr v5, v15

    const v12, 0x16800

    if-le v5, v12, :cond_2f3

    .line 801
    const-string v5, "Size Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fc

    .line 803
    :cond_2f3
    add-int/lit8 v5, v13, -0x2

    const/4 v12, 0x0

    invoke-static {v7, v12, v9, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    add-int/lit8 v5, v13, -0x2

    add-int/2addr v15, v5

    .line 784
    :goto_2fc
    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v13

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move/from16 v5, v32

    goto/16 :goto_1e6

    .line 806
    :cond_308
    const/4 v5, 0x2

    if-lt v13, v5, :cond_3a6

    add-int/lit8 v5, v13, -0x2

    aget-byte v5, v7, v5

    const/16 v12, -0x70

    if-ne v5, v12, :cond_3a6

    add-int/lit8 v5, v13, -0x1

    aget-byte v5, v7, v5

    if-nez v5, :cond_3a6

    .line 807
    const-string v5, "Get List Succ"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31e
    .catch Ljava/lang/NullPointerException; {:try_start_2a6 .. :try_end_31e} :catch_50f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2a6 .. :try_end_31e} :catch_502
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2a6 .. :try_end_31e} :catch_4f5
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_31e} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_2a6 .. :try_end_31e} :catch_4db

    .line 808
    const/4 v5, 0x0

    .line 810
    .end local v29    # "isMoreData":Z
    .local v5, "isMoreData":Z
    add-int/lit8 v12, v13, -0x2

    add-int/2addr v12, v15

    move/from16 v22, v5

    const v5, 0x16800

    .end local v5    # "isMoreData":Z
    .local v22, "isMoreData":Z
    if-le v12, v5, :cond_32f

    .line 811
    :try_start_329
    const-string v5, "Size Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_338

    .line 813
    :cond_32f
    add-int/lit8 v5, v13, -0x2

    const/4 v12, 0x0

    invoke-static {v7, v12, v9, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    add-int/lit8 v5, v13, -0x2

    add-int/2addr v15, v5

    .line 816
    :goto_338
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v5, v9, v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;

    move-result-object v5

    .line 817
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_35d

    .line 818
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "k":I
    .local v17, "k":I
    const-string v6, "L CNT : "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35c
    .catch Ljava/lang/NullPointerException; {:try_start_329 .. :try_end_35c} :catch_399
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_329 .. :try_end_35c} :catch_38c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_329 .. :try_end_35c} :catch_37f
    .catch Ljava/lang/Exception; {:try_start_329 .. :try_end_35c} :catch_372
    .catch Ljava/lang/Error; {:try_start_329 .. :try_end_35c} :catch_365

    goto :goto_35f

    .line 817
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_35d
    move/from16 v17, v6

    .line 835
    .end local v6    # "k":I
    :goto_35f
    move/from16 v23, v13

    move/from16 v29, v22

    goto/16 :goto_4c0

    .line 984
    .end local v5    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "baRspLen":I
    .end local v19    # "failFlag":I
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_365
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v15, v22

    move/from16 v14, v28

    move/from16 v5, v32

    goto/16 :goto_bdc

    .line 977
    :catch_372
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v15, v22

    move/from16 v14, v28

    move/from16 v5, v32

    goto/16 :goto_c04

    .line 974
    :catch_37f
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v15, v22

    move/from16 v14, v28

    move/from16 v5, v32

    goto/16 :goto_c31

    .line 971
    :catch_38c
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v15, v22

    move/from16 v14, v28

    move/from16 v5, v32

    goto/16 :goto_c58

    .line 968
    :catch_399
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v15, v22

    move/from16 v14, v28

    move/from16 v5, v32

    goto/16 :goto_c7f

    .line 806
    .end local v22    # "isMoreData":Z
    .restart local v6    # "k":I
    .restart local v13    # "baRspLen":I
    .restart local v19    # "failFlag":I
    .restart local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v29    # "isMoreData":Z
    :cond_3a6
    move/from16 v17, v6

    .line 821
    .end local v6    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x2

    if-lt v13, v5, :cond_3c8

    add-int/lit8 v5, v13, -0x2

    :try_start_3ad
    aget-byte v5, v7, v5

    const/16 v6, 0x6a

    if-ne v5, v6, :cond_3c8

    add-int/lit8 v5, v13, -0x1

    aget-byte v5, v7, v5

    const/16 v6, -0x78

    if-ne v5, v6, :cond_3c8

    .line 822
    const-string v5, "List Null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/16 v16, 0x1

    .line 826
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v15    # "aidListByteDataLen":I
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5

    .line 828
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v15    # "aidListByteDataLen":I
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :cond_3c8
    const-string v5, "Get List Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v15    # "aidListByteDataLen":I
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5
    :try_end_3d3
    .catch Ljava/lang/NullPointerException; {:try_start_3ad .. :try_end_3d3} :catch_50f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3ad .. :try_end_3d3} :catch_502
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3ad .. :try_end_3d3} :catch_4f5
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3d3} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_3ad .. :try_end_3d3} :catch_4db

    .line 984
    .end local v13    # "baRspLen":I
    .end local v17    # "k":I
    .end local v19    # "failFlag":I
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v15    # "aidListByteDataLen":I
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_3d3
    move-exception v0

    move/from16 v32, v5

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    goto/16 :goto_bdc

    .line 977
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    :catch_3e0
    move-exception v0

    move/from16 v32, v5

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    goto/16 :goto_c04

    .line 974
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    :catch_3ed
    move-exception v0

    move/from16 v32, v5

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    goto/16 :goto_c31

    .line 971
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    :catch_3fa
    move-exception v0

    move/from16 v32, v5

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    goto/16 :goto_c58

    .line 968
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    :catch_407
    move-exception v0

    move/from16 v32, v5

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    goto/16 :goto_c7f

    .line 984
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_414
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_bdc

    .line 977
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_423
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c04

    .line 974
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_432
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c31

    .line 971
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_441
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c58

    .line 968
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_450
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c7f

    .line 984
    .end local v7    # "baRsp":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    .local v22, "baRsp":[B
    :catch_45f
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_bdc

    .line 977
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_470
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c04

    .line 974
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_481
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c31

    .line 971
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_492
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c58

    .line 968
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v12    # "getWhiteListCmd":[B
    :catch_4a3
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v31, v12

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move-object/from16 v7, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v12    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    goto/16 :goto_c7f

    .line 784
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v6    # "k":I
    .restart local v12    # "getWhiteListCmd":[B
    .local v13, "getWhiteListCmdMore":[B
    .restart local v19    # "failFlag":I
    .restart local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "baRspLen":I
    :cond_4b4
    move/from16 v32, v5

    move/from16 v17, v6

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    .end local v5    # "ret":I
    .end local v6    # "k":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v17    # "k":I
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    move-object/from16 v5, v20

    move-object/from16 v7, v22

    .line 835
    .end local v17    # "k":I
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "baRsp":[B
    .local v5, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "baRsp":[B
    :goto_4c0
    const/4 v6, 0x0

    .line 836
    .local v6, "tempStr":Ljava/lang/String;
    const/4 v12, 0x1

    :try_start_4c2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13
    :try_end_4c6
    .catch Ljava/lang/NullPointerException; {:try_start_4c2 .. :try_end_4c6} :catch_910
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4c2 .. :try_end_4c6} :catch_901
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4c2 .. :try_end_4c6} :catch_8f2
    .catch Ljava/lang/Exception; {:try_start_4c2 .. :try_end_4c6} :catch_8e3
    .catch Ljava/lang/Error; {:try_start_4c2 .. :try_end_4c6} :catch_8d4

    move-object v12, v13

    .line 838
    .local v12, "addFlag":Ljava/lang/Boolean;
    if-nez v5, :cond_51c

    .line 839
    :try_start_4c9
    const-string/jumbo v2, "whiteAidList Null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4cf
    .catch Ljava/lang/NullPointerException; {:try_start_4c9 .. :try_end_4cf} :catch_50f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4c9 .. :try_end_4cf} :catch_502
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4c9 .. :try_end_4cf} :catch_4f5
    .catch Ljava/lang/Exception; {:try_start_4c9 .. :try_end_4cf} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_4c9 .. :try_end_4cf} :catch_4db

    .line 840
    const/16 v2, -0xd

    move/from16 v32, v2

    move-object/from16 v33, v9

    move-object/from16 v11, v21

    move/from16 v8, v23

    .end local v32    # "ret":I
    .local v2, "ret":I
    goto/16 :goto_823

    .line 984
    .end local v2    # "ret":I
    .end local v5    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "tempStr":Ljava/lang/String;
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .end local v19    # "failFlag":I
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "baRspLen":I
    .restart local v32    # "ret":I
    :catch_4db
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_bdc

    .line 977
    :catch_4e8
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c04

    .line 974
    :catch_4f5
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c31

    .line 971
    :catch_502
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c58

    .line 968
    :catch_50f
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c7f

    .line 841
    .restart local v5    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "tempStr":Ljava/lang/String;
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v19    # "failFlag":I
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "baRspLen":I
    :cond_51c
    :try_start_51c
    iget-object v13, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_522
    .catch Ljava/lang/NullPointerException; {:try_start_51c .. :try_end_522} :catch_910
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_51c .. :try_end_522} :catch_901
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_51c .. :try_end_522} :catch_8f2
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_522} :catch_8e3
    .catch Ljava/lang/Error; {:try_start_51c .. :try_end_522} :catch_8d4

    const-string v13, "COM List : "

    move-object/from16 v17, v6

    .end local v6    # "tempStr":Ljava/lang/String;
    .local v17, "tempStr":Ljava/lang/String;
    const-string v6, ""

    move-object/from16 v20, v7

    .end local v7    # "baRsp":[B
    .local v20, "baRsp":[B
    const-string v7, "#"

    move-object/from16 v33, v9

    .end local v9    # "aidListByteData":[B
    .local v33, "aidListByteData":[B
    const-string v9, "*"

    if-eqz v11, :cond_656

    .line 842
    :try_start_532
    const-string v2, "Start LD"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_650

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_650

    .line 845
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_546
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_646

    .line 846
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_54d
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_63e

    .line 847
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_631

    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_593

    move-object/from16 v11, v21

    goto/16 :goto_633

    .line 852
    :cond_593
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b9

    .line 854
    const-string v10, "N A-DAL"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, v21

    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    goto/16 :goto_640

    .line 857
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5b9
    move-object/from16 v11, v21

    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5f6

    .line 858
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 859
    .end local v17    # "tempStr":Ljava/lang/String;
    .local v10, "tempStr":Ljava/lang/String;
    invoke-virtual {v10, v9, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 861
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5f3

    .line 863
    const-string v14, "* A-DAL"

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    move-object/from16 v17, v10

    goto :goto_640

    .line 861
    :cond_5f3
    move-object/from16 v17, v10

    goto :goto_638

    .line 867
    .end local v10    # "tempStr":Ljava/lang/String;
    .restart local v17    # "tempStr":Ljava/lang/String;
    :cond_5f6
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_638

    .line 868
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 869
    .end local v17    # "tempStr":Ljava/lang/String;
    .restart local v10    # "tempStr":Ljava/lang/String;
    invoke-virtual {v10, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 871
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_62e

    .line 873
    const-string v14, "# A-DAL"

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    move-object/from16 v17, v10

    goto :goto_640

    .line 871
    :cond_62e
    move-object/from16 v17, v10

    goto :goto_638

    .line 849
    .end local v10    # "tempStr":Ljava/lang/String;
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "tempStr":Ljava/lang/String;
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_631
    move-object/from16 v11, v21

    .line 850
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_633
    const-string v10, "COM Data Error"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_638
    :goto_638
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v11

    goto/16 :goto_54d

    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_63e
    move-object/from16 v11, v21

    .line 845
    .end local v8    # "j":I
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_640
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v11

    goto/16 :goto_546

    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_646
    move-object/from16 v11, v21

    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move/from16 v8, v23

    .end local v2    # "i":I
    goto/16 :goto_823

    .line 844
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_650
    move-object/from16 v11, v21

    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v12

    goto/16 :goto_809

    .line 882
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_656
    move-object/from16 v11, v21

    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .local v21, "addFlag":Ljava/lang/Boolean;
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_812

    .line 883
    const-string v12, "Start BLD"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_785

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_785

    .line 886
    const/4 v2, 0x0

    move-object/from16 v12, v21

    .end local v21    # "addFlag":Ljava/lang/Boolean;
    .restart local v2    # "i":I
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    :goto_678
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_77d

    .line 887
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v8, v10

    .line 888
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .local v8, "addFlag":Ljava/lang/Boolean;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_685
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_764

    .line 889
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_75b

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6c9

    goto/16 :goto_75b

    .line 894
    :cond_6c9
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6eb

    .line 896
    const-string v12, "N"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v8, v14

    .line 898
    move-object v12, v8

    goto/16 :goto_765

    .line 899
    :cond_6eb
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_723

    .line 900
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 901
    .end local v17    # "tempStr":Ljava/lang/String;
    .local v12, "tempStr":Ljava/lang/String;
    invoke-virtual {v12, v9, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 903
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_720

    .line 905
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v8, v17

    .line 907
    move-object/from16 v17, v12

    move-object v12, v8

    goto :goto_765

    .line 903
    :cond_720
    move-object/from16 v17, v12

    goto :goto_760

    .line 909
    .end local v12    # "tempStr":Ljava/lang/String;
    .restart local v17    # "tempStr":Ljava/lang/String;
    :cond_723
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_760

    .line 910
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 911
    .end local v17    # "tempStr":Ljava/lang/String;
    .restart local v12    # "tempStr":Ljava/lang/String;
    invoke-virtual {v12, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 913
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_758

    .line 915
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v8, v17

    .line 917
    move-object/from16 v17, v12

    move-object v12, v8

    goto :goto_765

    .line 913
    :cond_758
    move-object/from16 v17, v12

    goto :goto_760

    .line 892
    .end local v12    # "tempStr":Ljava/lang/String;
    .restart local v17    # "tempStr":Ljava/lang/String;
    :cond_75b
    :goto_75b
    const-string v12, "COM Data Error"

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_760
    :goto_760
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_685

    :cond_764
    move-object v12, v8

    .line 923
    .end local v8    # "addFlag":Ljava/lang/Boolean;
    .end local v10    # "j":I
    .local v12, "addFlag":Ljava/lang/Boolean;
    :goto_765
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_779

    .line 924
    const-string v8, "A-DAL"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_779
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_678

    :cond_77d
    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move/from16 v8, v23

    .end local v2    # "i":I
    goto/16 :goto_823

    .line 928
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v21    # "addFlag":Ljava/lang/Boolean;
    :cond_785
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_809

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_809

    .line 929
    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v6, 0x5

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v27, v6, v7

    const/4 v9, 0x1

    aput-byte v26, v6, v9

    const/4 v12, 0x2

    aput-byte v7, v6, v12

    aput-byte v9, v6, v25

    aput-byte v7, v6, v24

    .line 932
    .local v6, "deactivationCMD":[B
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7
    :try_end_7ad
    .catch Ljava/lang/NullPointerException; {:try_start_532 .. :try_end_7ad} :catch_8c7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_532 .. :try_end_7ad} :catch_8ba
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_532 .. :try_end_7ad} :catch_8ad
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_7ad} :catch_8a0
    .catch Ljava/lang/Error; {:try_start_532 .. :try_end_7ad} :catch_893

    .line 933
    .end local v20    # "baRsp":[B
    .restart local v7    # "baRsp":[B
    if-eqz v7, :cond_800

    :try_start_7af
    array-length v9, v7

    const/4 v12, 0x2

    if-lt v9, v12, :cond_800

    .line 939
    array-length v2, v7

    .line 941
    .end local v23    # "baRspLen":I
    .local v2, "baRspLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v7, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v7, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v8, 0x2

    if-lt v2, v8, :cond_7f3

    add-int/lit8 v8, v2, -0x2

    aget-byte v8, v7, v8

    const/16 v9, -0x70

    if-ne v8, v9, :cond_7f3

    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_7f3

    .line 943
    const-string v8, "BDAL Success"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7fa

    .line 945
    :cond_7f3
    const-string v8, "BDAL Fail"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    add-int/lit8 v19, v19, 0x1

    .line 948
    .end local v6    # "deactivationCMD":[B
    :goto_7fa
    move v8, v2

    move-object/from16 v6, v17

    move-object/from16 v12, v21

    goto :goto_823

    .line 934
    .end local v2    # "baRspLen":I
    .restart local v6    # "deactivationCMD":[B
    .restart local v23    # "baRspLen":I
    :cond_800
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v15    # "aidListByteDataLen":I
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v8
    :try_end_809
    .catch Ljava/lang/NullPointerException; {:try_start_7af .. :try_end_809} :catch_888
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7af .. :try_end_809} :catch_87d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7af .. :try_end_809} :catch_872
    .catch Ljava/lang/Exception; {:try_start_7af .. :try_end_809} :catch_867
    .catch Ljava/lang/Error; {:try_start_7af .. :try_end_809} :catch_85c

    .line 954
    .end local v6    # "deactivationCMD":[B
    .end local v21    # "addFlag":Ljava/lang/Boolean;
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v15    # "aidListByteDataLen":I
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v20    # "baRsp":[B
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :cond_809
    :goto_809
    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move/from16 v8, v23

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v21    # "addFlag":Ljava/lang/Boolean;
    goto :goto_823

    .line 950
    :cond_812
    :try_start_812
    const-string v2, "Type Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_817
    .catch Ljava/lang/NullPointerException; {:try_start_812 .. :try_end_817} :catch_8c7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_812 .. :try_end_817} :catch_8ba
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_812 .. :try_end_817} :catch_8ad
    .catch Ljava/lang/Exception; {:try_start_812 .. :try_end_817} :catch_8a0
    .catch Ljava/lang/Error; {:try_start_812 .. :try_end_817} :catch_893

    .line 951
    const/16 v2, -0xd

    move/from16 v32, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move/from16 v8, v23

    .line 954
    .end local v17    # "tempStr":Ljava/lang/String;
    .end local v20    # "baRsp":[B
    .end local v21    # "addFlag":Ljava/lang/Boolean;
    .end local v23    # "baRspLen":I
    .local v6, "tempStr":Ljava/lang/String;
    .restart local v7    # "baRsp":[B
    .local v8, "baRspLen":I
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    :goto_823
    :try_start_823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DL CNT : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x1

    if-ge v2, v9, :cond_84c

    .line 956
    const-string v2, "DA List Null"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v32

    goto :goto_854

    .line 958
    :cond_84c
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v2, v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I

    move-result v2
    :try_end_852
    .catch Ljava/lang/NullPointerException; {:try_start_823 .. :try_end_852} :catch_888
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_823 .. :try_end_852} :catch_87d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_823 .. :try_end_852} :catch_872
    .catch Ljava/lang/Exception; {:try_start_823 .. :try_end_852} :catch_867
    .catch Ljava/lang/Error; {:try_start_823 .. :try_end_852} :catch_85c

    .line 959
    .end local v32    # "ret":I
    .local v2, "ret":I
    add-int v19, v19, v2

    .line 961
    .end local v6    # "tempStr":Ljava/lang/String;
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    :goto_854
    move-object/from16 v20, v5

    move v10, v15

    move/from16 v15, v29

    move v5, v2

    goto/16 :goto_9ab

    .line 984
    .end local v2    # "ret":I
    .end local v5    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "baRspLen":I
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "failFlag":I
    .restart local v32    # "ret":I
    :catch_85c
    move-exception v0

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_bdc

    .line 977
    :catch_867
    move-exception v0

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c04

    .line 974
    :catch_872
    move-exception v0

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c31

    .line 971
    :catch_87d
    move-exception v0

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c58

    .line 968
    :catch_888
    move-exception v0

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c7f

    .line 984
    .end local v7    # "baRsp":[B
    .restart local v20    # "baRsp":[B
    :catch_893
    move-exception v0

    move-object v2, v0

    move v10, v15

    move-object/from16 v7, v20

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_bdc

    .line 977
    :catch_8a0
    move-exception v0

    move-object v2, v0

    move v10, v15

    move-object/from16 v7, v20

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c04

    .line 974
    :catch_8ad
    move-exception v0

    move-object v2, v0

    move v10, v15

    move-object/from16 v7, v20

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c31

    .line 971
    :catch_8ba
    move-exception v0

    move-object v2, v0

    move v10, v15

    move-object/from16 v7, v20

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c58

    .line 968
    :catch_8c7
    move-exception v0

    move-object v2, v0

    move v10, v15

    move-object/from16 v7, v20

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c7f

    .line 984
    .end local v20    # "baRsp":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    :catch_8d4
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v33, v9

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .restart local v20    # "baRsp":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_bdc

    .line 977
    .end local v20    # "baRsp":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    :catch_8e3
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v33, v9

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .restart local v20    # "baRsp":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c04

    .line 974
    .end local v20    # "baRsp":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    :catch_8f2
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v33, v9

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .restart local v20    # "baRsp":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c31

    .line 971
    .end local v20    # "baRsp":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    :catch_901
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v33, v9

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .restart local v20    # "baRsp":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c58

    .line 968
    .end local v20    # "baRsp":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    :catch_910
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v33, v9

    move-object v2, v0

    move v10, v15

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .restart local v20    # "baRsp":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c7f

    .line 984
    .end local v15    # "aidListByteDataLen":I
    .end local v20    # "baRsp":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .local v5, "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .local v12, "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .local v22, "aidListByteDataLen":I
    :catch_91f
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_bdc

    .line 977
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_931
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c04

    .line 974
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_943
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c31

    .line 971
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_955
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c58

    .line 968
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_967
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c7f

    .line 761
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v8    # "baRspLen":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .local v15, "isMoreData":Z
    .restart local v19    # "failFlag":I
    .local v20, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_979
    move/from16 v32, v5

    move/from16 v23, v8

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object/from16 v11, v21

    .line 963
    .end local v5    # "ret":I
    .end local v8    # "baRspLen":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .end local v21    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "baRspLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    :try_start_989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selet Fail"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/16 v5, -0xb

    move/from16 v10, v22

    move/from16 v8, v23

    move/from16 v15, v29

    .line 967
    .end local v22    # "aidListByteDataLen":I
    .end local v23    # "baRspLen":I
    .end local v29    # "isMoreData":Z
    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    .restart local v8    # "baRspLen":I
    .local v10, "aidListByteDataLen":I
    .restart local v15    # "isMoreData":Z
    :goto_9ab
    if-lez v19, :cond_9af

    const/16 v5, -0x12

    .line 987
    .end local v8    # "baRspLen":I
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "failFlag":I
    .end local v20    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9af
    move/from16 v14, v28

    goto/16 :goto_c98

    .line 984
    .end local v10    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v22    # "aidListByteDataLen":I
    :catch_9b3
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    move/from16 v10, v22

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_bdc

    .line 977
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_9c5
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    move/from16 v10, v22

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c04

    .line 974
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_9d7
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    move/from16 v10, v22

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c31

    .line 971
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_9e9
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    move/from16 v10, v22

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c58

    .line 968
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_9fb
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    move/from16 v10, v22

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c7f

    .line 984
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_a0d
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_bdc

    .line 977
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_a1f
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c04

    .line 974
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_a31
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c31

    .line 971
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_a43
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c58

    .line 968
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_a55
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c7f

    .line 748
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_a67
    move/from16 v32, v5

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto :goto_a86

    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .local v6, "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_a76
    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 749
    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    :goto_a86
    const-string v5, "Select Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5
    :try_end_a91
    .catch Ljava/lang/NullPointerException; {:try_start_989 .. :try_end_a91} :catch_ac1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_989 .. :try_end_a91} :catch_ab5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_989 .. :try_end_a91} :catch_aa9
    .catch Ljava/lang/Exception; {:try_start_989 .. :try_end_a91} :catch_a9d
    .catch Ljava/lang/Error; {:try_start_989 .. :try_end_a91} :catch_a91

    .line 984
    .restart local v7    # "baRsp":[B
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_a91
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_bdc

    .line 977
    :catch_a9d
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c04

    .line 974
    :catch_aa9
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c31

    .line 971
    :catch_ab5
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c58

    .line 968
    :catch_ac1
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v5, v32

    goto/16 :goto_c7f

    .line 984
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_acd
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_bdc

    .line 977
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_ae1
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c04

    .line 974
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_af5
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c31

    .line 971
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b09
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c58

    .line 968
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b1d
    move-exception v0

    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v28    # "isOpen":Z
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_c7f

    .line 741
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v28    # "isOpen":Z
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v32    # "ret":I
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_b31
    move/from16 v32, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    :try_start_b3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_b4a
    .catch Ljava/lang/NullPointerException; {:try_start_b3f .. :try_end_b4a} :catch_b87
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b3f .. :try_end_b4a} :catch_b7d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b3f .. :try_end_b4a} :catch_b73
    .catch Ljava/lang/Exception; {:try_start_b3f .. :try_end_b4a} :catch_b69
    .catch Ljava/lang/Error; {:try_start_b3f .. :try_end_b4a} :catch_b5f

    move/from16 v5, v32

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    :try_start_b4c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "OPEN Error"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .end local v14    # "isOpen":Z
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v2

    .line 984
    .restart local v7    # "baRsp":[B
    .restart local v14    # "isOpen":Z
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v32    # "ret":I
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_b5f
    move-exception v0

    move/from16 v5, v32

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_bdc

    .line 977
    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    :catch_b69
    move-exception v0

    move/from16 v5, v32

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_c04

    .line 974
    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    :catch_b73
    move-exception v0

    move/from16 v5, v32

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_c31

    .line 971
    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    :catch_b7d
    move-exception v0

    move/from16 v5, v32

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_c58

    .line 968
    .end local v5    # "ret":I
    .restart local v32    # "ret":I
    :catch_b87
    move-exception v0

    move/from16 v5, v32

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    .end local v32    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_c7f

    .line 727
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v15    # "isMoreData":Z
    :cond_b91
    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v15    # "isMoreData":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v5, -0xd

    .line 730
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .end local v14    # "isOpen":Z
    .end local v16    # "listNull":Z
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v6
    :try_end_ba8
    .catch Ljava/lang/NullPointerException; {:try_start_b4c .. :try_end_ba8} :catch_bc6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b4c .. :try_end_ba8} :catch_bbe
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b4c .. :try_end_ba8} :catch_bb6
    .catch Ljava/lang/Exception; {:try_start_b4c .. :try_end_ba8} :catch_baf
    .catch Ljava/lang/Error; {:try_start_b4c .. :try_end_ba8} :catch_ba8

    .line 984
    .restart local v5    # "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v14    # "isOpen":Z
    .restart local v16    # "listNull":Z
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v22    # "aidListByteDataLen":I
    .restart local v29    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_ba8
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    goto :goto_bdc

    .line 977
    :catch_baf
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    goto :goto_c04

    .line 974
    :catch_bb6
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    goto/16 :goto_c31

    .line 971
    :catch_bbe
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    goto/16 :goto_c58

    .line 968
    :catch_bc6
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v29

    goto/16 :goto_c7f

    .line 984
    .end local v18    # "selectSCRSCmd":[B
    .end local v22    # "aidListByteDataLen":I
    .end local v29    # "isMoreData":Z
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v15    # "isMoreData":Z
    :catch_bce
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    move-object v2, v0

    .line 985
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/Error;
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    :goto_bdc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v5, -0x5a

    goto/16 :goto_c98

    .line 977
    .end local v2    # "e":Ljava/lang/Error;
    .end local v18    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_bf6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    move-object v2, v0

    .line 978
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/Exception;
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    :goto_c04
    if-eqz v16, :cond_c09

    .line 979
    const/4 v5, 0x0

    goto/16 :goto_c97

    .line 981
    :cond_c09
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/16 v5, -0x5a

    goto/16 :goto_c97

    .line 974
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v18    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_c23
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    move-object v2, v0

    .line 975
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    :goto_c31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to link."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/16 v5, -0x5a

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_c97

    .line 971
    .end local v18    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_c4a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    move-object v2, v0

    .line 972
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    :goto_c58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find class."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v5, -0x5a

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_c97

    .line 968
    .end local v18    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmdMore":[B
    .end local v31    # "getWhiteListCmd":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_c71
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v33, v9

    move/from16 v22, v10

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move/from16 v29, v15

    move-object v2, v0

    .line 969
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/NullPointerException;
    .restart local v18    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmd":[B
    .restart local v33    # "aidListByteData":[B
    :goto_c7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to connect service."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/16 v5, -0x5a

    .line 987
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_c97
    nop

    .line 990
    :goto_c98
    if-eqz v14, :cond_ca7

    .line 991
    :try_start_c9a
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 992
    const/4 v14, 0x0

    goto :goto_ca7

    .line 1008
    :catch_ca1
    move-exception v0

    move-object v2, v0

    goto :goto_cd8

    .line 1006
    :catch_ca4
    move-exception v0

    move-object v2, v0

    goto :goto_cef

    .line 994
    :cond_ca7
    :goto_ca7
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d05

    .line 995
    const-string v2, "Set PROP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.action.CDA_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v2, "BRIntent":Landroid/content/Intent;
    const-string v3, "com.sec.action.CDA_VALUE"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    const-string v3, "com.samsung.android.app.telephonyui"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    iget-object v3, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    const-string/jumbo v3, "security.cdafinish"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd7
    .catch Ljava/lang/Exception; {:try_start_c9a .. :try_end_cd7} :catch_ca4
    .catch Ljava/lang/Error; {:try_start_c9a .. :try_end_cd7} :catch_ca1

    goto :goto_d05

    .line 1009
    .local v2, "e":Ljava/lang/Error;
    :goto_cd8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Error "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d06

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    :goto_cef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d05
    :goto_d05
    nop

    .line 1011
    :goto_d06
    return-void

    nop

    :array_d08
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_d14
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d1c
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method
