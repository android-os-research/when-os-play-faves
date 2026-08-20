.class public final enum Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "ImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum CDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EDGE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EHRPD:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_0:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_A:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_B:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum GPRS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum GSM:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSDPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSPAP:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSUPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum LTE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum NR:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum TDSCDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum UMTS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum _1XRTT:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;


# instance fields
.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I
    .registers 1

    iget p0, p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 23

    .line 57
    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v1, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v3, "GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GPRS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v3, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v5, "EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EDGE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v5, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v7, "UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UMTS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v7, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v9, "CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->CDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v9, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v11, "EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v11, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v13, "EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v13, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v15, "_1XRTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v15, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v14, "HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSDPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 58
    new-instance v14, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v12, "HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSUPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v12, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v10, "HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v10, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v8, "EVDO_B"

    const/16 v6, 0xb

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v8, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v6, "LTE"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->LTE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v4, "EHRPD"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v2, v8}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EHRPD:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v2, "HSPAP"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v2, v8, v6}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPAP:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v2, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v8, "GSM"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v6, v4}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GSM:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v8, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v6, "TDSCDMA"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v8, v6, v4, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 59
    new-instance v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v4, "WIFI"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v2, v8}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v2, "NR"

    move-object/from16 v21, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v8, v6}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->NR:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v2, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v8, "ALL"

    const/16 v6, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x64

    invoke-direct {v2, v8, v6, v4}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 56
    const/16 v4, 0x14

    new-array v4, v4, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v2, v4, v6

    sput-object v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    .line 64
    iput p3, p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    .line 65
    return-void
.end method

.method public static from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .registers 6
    .param p0, "type"    # I

    .line 68
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 69
    .local v3, "n":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    iget v4, v3, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    if-ne v4, p0, :cond_f

    .line 70
    return-object v3

    .line 68
    .end local v3    # "n":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 74
    :cond_12
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .registers 6
    .param p0, "typeName"    # Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 79
    .local v3, "n":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 80
    return-object v3

    .line 78
    .end local v3    # "n":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    :cond_18
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .registers 1

    .line 56
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .registers 6
    .param p1, "types"    # [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget-object v3, p1, v2

    .line 105
    .local v3, "type":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    if-ne p0, v3, :cond_b

    .line 106
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v3    # "type":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 109
    :cond_e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$2;->$SwitchMap$com$sec$ims$settings$ImsProfile$NETWORK_TYPE:[I

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 97
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rtn":Ljava/lang/String;
    goto :goto_1c

    .line 94
    .end local v0    # "rtn":Ljava/lang/String;
    :pswitch_16
    const-string v0, "hspa+"

    .line 95
    .restart local v0    # "rtn":Ljava/lang/String;
    goto :goto_1c

    .line 91
    .end local v0    # "rtn":Ljava/lang/String;
    :pswitch_19
    const-string v0, "1xrtt"

    .line 92
    .restart local v0    # "rtn":Ljava/lang/String;
    nop

    .line 100
    :goto_1c
    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method
