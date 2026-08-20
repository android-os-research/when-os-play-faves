.class public final enum Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
.super Ljava/lang/Enum;
.source "ConnectivityManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/ConnectivityManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectivityTypeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method static bridge synthetic -$$Nest$smvalueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .registers 1

    invoke-static {p0}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 25
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 26
    new-instance v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v3, "TYPE_MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 27
    new-instance v3, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v5, "TYPE_WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 28
    new-instance v5, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v7, "TYPE_MOBILE_IMS"

    const/4 v8, 0x3

    const/16 v9, 0xb

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 29
    new-instance v7, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v9, "TYPE_MOBILE_CBS"

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 30
    new-instance v9, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v11, "TYPE_MOBILE_XCAP"

    const/4 v12, 0x5

    const/16 v13, 0x1b

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 31
    new-instance v11, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v13, "TYPE_MOBILE_EMERGENCY"

    const/4 v14, 0x6

    const/16 v15, 0xf

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 24
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    .line 37
    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .registers 7
    .param p0, "value"    # I

    .line 40
    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 41
    .local v0, "result":Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 42
    .local v4, "connectivityTypeExt":Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    iget v5, v4, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    if-ne v5, p0, :cond_12

    .line 43
    move-object v0, v4

    .line 44
    goto :goto_15

    .line 41
    .end local v4    # "connectivityTypeExt":Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 48
    :cond_15
    :goto_15
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .registers 1

    .line 24
    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-virtual {v0}, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    return v0
.end method
