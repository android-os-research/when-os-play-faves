.class public Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;
.super Ljava/lang/Object;
.source "WifiDriverNativeCommandHelper.java"


# static fields
.field public static final ANT_FILE:I = 0x4

.field public static final BAD_AP_FILE:I = 0x8

.field public static final CID_FILE:I = 0x1

.field public static final FRAMEBURST_FILE:I = 0x3

.field public static final MAC_FILE:I = 0x0

.field public static final MEMORY_DUMP_MODE_FILE:I = 0x7

.field public static final PSM_FILE:I = 0x2

.field public static final SOFT_AP_VER_FILE:I = 0x6

.field public static final SUPPORTED_FEATURE:I = 0x9

.field static final UPLOAD_MODE_DISABLED_STR:Ljava/lang/String; = "2"

.field static final UPLOAD_MODE_ENABLED_STR:Ljava/lang/String; = "3"

.field static final VENDOR_WLAN_DRIVER_MODE:Ljava/lang/String; = "vendor.wlandriver.mode"

.field static final VENDOR_WLAN_DRIVER_STATUS:Ljava/lang/String; = "vendor.wlandriver.status"

.field public static final WIFIVER_FILE:I = 0x5


# instance fields
.field private final driverPropertyIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 p0, 0x0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vendor.wlandriver.mode"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vendor.wlandriver.status"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAntInfo()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getChipsetVendorName()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getChipsetVendorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureInfo()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameburstInfo()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getMacAddress()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPsmInfo()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 83
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "vendor.wlandriver.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "vendor.wlandriver.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v1

    .line 86
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorProperty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getWifiCid()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getWifiVersions()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isUploadModeEnabled()Z
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const-string v0, "3"

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeFactoryMacAddress()Z
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->removeVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public setAntInfo(Ljava/lang/String;)Z
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x4

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setFactoryMacAddress(Ljava/lang/String;)Z
    .registers 4

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 109
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    invoke-interface {p0, v1, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setFrameburstInfo(Ljava/lang/String;)Z
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setPsmInfo(Ljava/lang/String;)Z
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setUploadModeEnabled(Z)Z
    .registers 3

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    if-eqz p1, :cond_7

    const-string p1, "3"

    goto :goto_9

    :cond_7
    const-string p1, "2"

    :goto_9
    const/4 v0, 0x7

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 94
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "vendor.wlandriver.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "vendor.wlandriver.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 97
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->setVendorProperty(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateBadApList()Z
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->updateVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public updateWifiVersions()Z
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->updateVendorConnFile(I)Z

    move-result p0

    return p0
.end method
