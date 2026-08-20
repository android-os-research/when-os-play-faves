.class public final enum Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
.super Ljava/lang/Enum;
.source "CarrierConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/sec/CarrierConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Carrier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public static final enum USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;


# direct methods
.method public static constructor <clinit>()V
    .registers 49

    .line 374
    new-instance v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "USA_TMO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v3, "USA_ATT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v5, "USA_AIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v7, "USA_TMK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v9, "USA_TFN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v11, "USA_TFO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v11, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v13, "USA_TFA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v13, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v15, "USA_TFC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v14, "USA_XAU"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v12, "USA_XAA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 375
    new-instance v12, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v10, "USA_XAR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v8, "USA_XAG"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v8, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "USA_DSH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v4, "USA_DSA"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "USA_VZW"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "USA_SPR"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v4, "USA_XAS"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "USA_BST"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "USA_VMU"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v4, "USA_USC"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 376
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "USA_ACG"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 377
    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "JPN_DCM"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v4, "JPN_KDI"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v4, "JPN_RKT"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 378
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CAD_TLS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CAD_BMC"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CAD_RWC"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CAD_XAC"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 379
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "KOR_SKT"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "KOR_KTT"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "KOR_LGT"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 380
    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CHN_CMC"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CHN_CTC"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CHN_CHU"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CHN_CHN"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "CHN_CHC"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 381
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "ARG_UFN"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 382
    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "MEX_MNX"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "MEX_IUS"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "MEX_UNE"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 383
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "PER_PEO"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "PER_PNT"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "PER_PET"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 384
    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "SUI_SWC"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 385
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "TUR_TUR"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 386
    new-instance v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "SWA_IND"

    move-object/from16 v47, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v4}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 387
    new-instance v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v6, "NO_OPERATOR"

    move-object/from16 v48, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v2}, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/16 v2, 0x2f

    new-array v2, v2, [Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v41, v2, v0

    const/16 v0, 0x27

    aput-object v42, v2, v0

    const/16 v0, 0x28

    aput-object v43, v2, v0

    const/16 v0, 0x29

    aput-object v44, v2, v0

    const/16 v0, 0x2a

    aput-object v45, v2, v0

    const/16 v0, 0x2b

    aput-object v46, v2, v0

    const/16 v0, 0x2c

    aput-object v47, v2, v0

    const/16 v0, 0x2d

    aput-object v48, v2, v0

    const/16 v0, 0x2e

    aput-object v4, v2, v0

    .line 373
    sput-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->$VALUES:[Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    .registers 2

    .line 373
    const-class v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    .registers 1

    .line 373
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->$VALUES:[Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    invoke-virtual {v0}, [Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object v0
.end method
