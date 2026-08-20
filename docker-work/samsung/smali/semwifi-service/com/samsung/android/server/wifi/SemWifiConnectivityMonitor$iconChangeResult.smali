.class final enum Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;
.super Ljava/lang/Enum;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "iconChangeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

.field public static final enum ACCEPTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

.field public static final enum DUPLICATED_REQUEST:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

.field public static final enum ETHERNET_DEFAULT:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

.field public static final enum MOBILE_DATA_NOT_CONNECTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

.field public static final enum MULTI_NETWORK:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1071
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->ACCEPTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    .line 1072
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const-string v3, "DUPLICATED_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->DUPLICATED_REQUEST:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    .line 1073
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const-string v5, "MULTI_NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->MULTI_NETWORK:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    .line 1074
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const-string v7, "MOBILE_DATA_NOT_CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->MOBILE_DATA_NOT_CONNECTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    .line 1075
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const-string v9, "ETHERNET_DEFAULT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->ETHERNET_DEFAULT:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1070
    sput-object v9, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1070
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;
    .registers 2

    .line 1070
    const-class v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;
    .registers 1

    .line 1070
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    return-object v0
.end method
