.class final enum Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
.super Ljava/lang/Enum;
.source "AdvertiseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum GATT_CONNECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v3, "DEVICE_DETECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v5, "AUTHENTICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 22
    new-instance v5, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v7, "GATT_CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->GATT_CONNECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 23
    new-instance v7, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v9, "REQUEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 24
    new-instance v9, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v11, "ACCEPT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 25
    new-instance v11, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v13, "REJECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 26
    new-instance v13, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v15, "CLOSE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 18
    sput-object v15, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
    .registers 2

    .line 18
    const-class v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
    .registers 1

    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    return-object v0
.end method
