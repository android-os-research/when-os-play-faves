.class public final enum Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
.super Ljava/lang/Enum;
.source "QoSNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    const-string v3, "CAPTIVE_PORTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    const-string v5, "NO_INTERNET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 22
    new-instance v5, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    const-string v7, "SUSPICIOUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 18
    sput-object v7, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

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

.method public static from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .registers 6

    .line 25
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 30
    :cond_14
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .registers 2

    .line 18
    const-class v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .registers 1

    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object v0
.end method
