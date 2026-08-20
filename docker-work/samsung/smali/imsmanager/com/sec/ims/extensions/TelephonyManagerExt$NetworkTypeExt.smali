.class public final enum Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
.super Ljava/lang/Enum;
.source "TelephonyManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/TelephonyManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkTypeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method static bridge synthetic -$$Nest$smvalueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .registers 1

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->valueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 24

    .line 25
    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v1, "NETWORK_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 26
    new-instance v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v3, "NETWORK_TYPE_GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 27
    new-instance v3, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v5, "NETWORK_TYPE_EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 28
    new-instance v5, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v7, "NETWORK_TYPE_UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 29
    new-instance v7, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v9, "NETWORK_TYPE_CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 30
    new-instance v9, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v11, "NETWORK_TYPE_EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 31
    new-instance v11, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v13, "NETWORK_TYPE_EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 32
    new-instance v13, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v15, "NETWORK_TYPE_1xRTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 33
    new-instance v15, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v14, "NETWORK_TYPE_HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 34
    new-instance v14, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v12, "NETWORK_TYPE_HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 35
    new-instance v12, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v10, "NETWORK_TYPE_HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 36
    new-instance v10, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v8, "NETWORK_TYPE_IDEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 37
    new-instance v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v6, "NETWORK_TYPE_EVDO_B"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 38
    new-instance v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v4, "NETWORK_TYPE_LTE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 39
    new-instance v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v2, "NETWORK_TYPE_EHRPD"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 40
    new-instance v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v6, "NETWORK_TYPE_HSPAP"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 41
    new-instance v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v4, "NETWORK_TYPE_GSM"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 42
    new-instance v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v2, "NETWORK_TYPE_TD_SCDMA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 43
    new-instance v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v6, "NETWORK_TYPE_IWLAN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 44
    new-instance v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v4, "NETWORK_TYPE_DC"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    move-object/from16 v22, v8

    const/16 v8, 0x1e

    invoke-direct {v6, v4, v2, v8}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 45
    new-instance v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string v8, "NETWORK_TYPE_TDLTE"

    const/16 v2, 0x14

    move-object/from16 v23, v6

    const/16 v6, 0x1f

    invoke-direct {v4, v8, v2, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 24
    const/16 v6, 0x15

    new-array v6, v6, [Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v22, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    const/16 v0, 0xf

    aput-object v18, v6, v0

    const/16 v0, 0x10

    aput-object v19, v6, v0

    const/16 v0, 0x11

    aput-object v20, v6, v0

    const/16 v0, 0x12

    aput-object v21, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    aput-object v4, v6, v2

    sput-object v6, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->$VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    .line 51
    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .registers 7
    .param p0, "value"    # I

    .line 54
    sget-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    .line 55
    .local v0, "result":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    invoke-static {}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->values()[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 56
    .local v4, "networkTypeExt":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    iget v5, v4, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    if-ne v5, p0, :cond_12

    .line 57
    move-object v0, v4

    .line 58
    goto :goto_15

    .line 55
    .end local v4    # "networkTypeExt":Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 62
    :cond_15
    :goto_15
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .registers 1

    .line 24
    sget-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->$VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-virtual {v0}, [Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    return v0
.end method
