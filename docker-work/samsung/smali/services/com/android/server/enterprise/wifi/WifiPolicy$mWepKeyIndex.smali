.class final enum Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "mWepKeyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 219
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v3, "wepkey2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v5, "wepkey3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v5, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v7, "wepkey4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 218
    sput-object v7, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .registers 2

    .line 218
    const-class v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .registers 1

    .line 218
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method
