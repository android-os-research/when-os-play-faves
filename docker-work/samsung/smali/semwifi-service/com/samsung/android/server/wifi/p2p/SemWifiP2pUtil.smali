.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;
.super Ljava/lang/Object;
.source "SemWifiP2pUtil.java"


# static fields
.field private static final REGEX_MAC:Ljava/lang/String; = "([0-9a-fA-F]{2}:)([0-9a-fA-F]{2}:){3}([0-9a-fA-F]{2}:[0-9a-fA-F]{2})"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSecuredStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "([0-9a-fA-F]{2}:)([0-9a-fA-F]{2}:){3}([0-9a-fA-F]{2}:[0-9a-fA-F]{2})"

    const-string v1, "$1$3"

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->getSecuredStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->getSecuredStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
