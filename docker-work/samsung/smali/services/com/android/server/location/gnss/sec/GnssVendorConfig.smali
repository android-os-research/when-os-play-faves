.class public Lcom/android/server/location/gnss/sec/GnssVendorConfig;
.super Ljava/lang/Object;
.source "GnssVendorConfig.java"


# static fields
.field public static mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    if-nez v1, :cond_e

    .line 32
    new-instance v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 34
    :cond_e
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isBroadcomGnss()Z
    .registers 2

    .line 58
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/gps.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isIzatServiceEnabled()Z
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isQcomHardware()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isNonQcomGnss()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isLsiGnss()Z
    .registers 2

    .line 54
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/gps.cfg"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isMtkGnss()Z
    .registers 2

    .line 50
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/mnl.prop"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isNonQcomGnss()Z
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isMtkGnss()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public isQcomHardware()Z
    .registers 2

    .line 42
    sget-object p0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v0, "qcom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnisocGnss()Z
    .registers 2

    const-string/jumbo p0, "ro.hardware.chipname"

    const-string v0, "Unknown"

    .line 62
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unisoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
