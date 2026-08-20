.class public Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;
.super Ljava/lang/Object;
.source "SemSoftapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSoftApmanager:SemSoftapUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getStaPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 3

    .line 47
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_18

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v0

    if-eqz p0, :cond_18

    .line 49
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    .line 51
    :cond_18
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 69
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_34

    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne p0, v2, :cond_34

    iget-boolean p0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-nez p0, :cond_34

    .line 74
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    if-nez p0, :cond_34

    .line 75
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-nez p0, :cond_34

    iget-boolean p0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-nez p0, :cond_34

    const/4 p0, 0x1

    move v1, p0

    .line 78
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAvailableToShareConfig, canShare:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApmanager:SemSoftapUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSmartViewEnabled()Z
    .registers 5

    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 21
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isP2pConnected()Z

    move-result v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartViewEnabled:p2pstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApmanager:SemSoftapUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_48

    .line 25
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_48

    .line 26
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_48

    if-eqz v0, :cond_48

    const-string p0, "isSmartViewEnabled:true"

    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_48
    const-string p0, "isSmartViewEnabled:false"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 56
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 57
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    .line 58
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    .line 59
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    .line 60
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 61
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_43

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_43

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v1

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    .line 63
    :cond_44
    :goto_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSupportedSecureConfig:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApmanager:SemSoftapUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWirelessDexEnabled()Z
    .registers 4

    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 36
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    const-string v0, "SemSoftApmanager:SemSoftapUtils"

    if-eqz p0, :cond_26

    .line 37
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 38
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-ne p0, v2, :cond_26

    const-string p0, "isWirelessDexEnabled:true"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_26
    const-string p0, "isWirelessDexEnabled:false"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
