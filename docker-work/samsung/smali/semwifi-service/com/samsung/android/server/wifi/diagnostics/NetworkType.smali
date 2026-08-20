.class public final enum Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/diagnostics/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum CARRIER:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum FAVORITE:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum MOBILE_HOTSPOT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum NORMAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum OPEN_ROAMING:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum PASSPOINT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field public static final enum UNUSED_TYPE_WECHAT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->NORMAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v3, "UNUSED_TYPE_WECHAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNUSED_TYPE_WECHAT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v5, "PASSPOINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->PASSPOINT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 22
    new-instance v5, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v7, "MOBILE_HOTSPOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->MOBILE_HOTSPOT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 23
    new-instance v7, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v9, "CARRIER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CARRIER:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 24
    new-instance v9, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v11, "FAVORITE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->FAVORITE:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 25
    new-instance v11, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v13, "CAPTIVE_PORTAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 26
    new-instance v13, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v15, "EPHEMERAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 27
    new-instance v15, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v14, "OPEN_ROAMING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->OPEN_ROAMING:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 28
    new-instance v14, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const-string v12, "UNKNOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 18
    sput-object v12, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .registers 2

    .line 18
    const-class v0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .registers 1

    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object v0
.end method
