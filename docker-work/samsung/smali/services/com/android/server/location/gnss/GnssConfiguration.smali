.class public Lcom/android/server/location/gnss/GnssConfiguration;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;,
        Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    }
.end annotation


# static fields
.field public static final CONFIG_A_GLONASS_POS_PROTOCOL_SELECT:Ljava/lang/String; = "A_GLONASS_POS_PROTOCOL_SELECT"

.field public static final CONFIG_C2K_HOST:Ljava/lang/String; = "C2K_HOST"

.field public static final CONFIG_C2K_PORT:Ljava/lang/String; = "C2K_PORT"

.field public static final CONFIG_ENABLE_PSDS_PERIODIC_DOWNLOAD:Ljava/lang/String; = "ENABLE_PSDS_PERIODIC_DOWNLOAD"

.field public static final CONFIG_ES_EXTENSION_SEC:Ljava/lang/String; = "ES_EXTENSION_SEC"

.field public static final CONFIG_GPS_LOCK:Ljava/lang/String; = "GPS_LOCK"

.field public static final CONFIG_LONGTERM_PSDS_SERVER_1:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_1"

.field public static final CONFIG_LONGTERM_PSDS_SERVER_2:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_2"

.field public static final CONFIG_LONGTERM_PSDS_SERVER_3:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_3"

.field public static final CONFIG_LPP_PROFILE:Ljava/lang/String; = "LPP_PROFILE"

.field public static final CONFIG_NFW_PROXY_APPS:Ljava/lang/String; = "NFW_PROXY_APPS"

.field public static final CONFIG_NORMAL_PSDS_SERVER:Ljava/lang/String; = "NORMAL_PSDS_SERVER"

.field public static final CONFIG_REALTIME_PSDS_SERVER:Ljava/lang/String; = "REALTIME_PSDS_SERVER"

.field public static final CONFIG_SUPL_ES:Ljava/lang/String; = "SUPL_ES"

.field public static final CONFIG_SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field public static final CONFIG_SUPL_MODE:Ljava/lang/String; = "SUPL_MODE"

.field public static final CONFIG_SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field public static final CONFIG_SUPL_VER:Ljava/lang/String; = "SUPL_VER"

.field public static final CONFIG_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL:Ljava/lang/String; = "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

.field public static final DEBUG:Z

.field public static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field public static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field public static final MAX_EMERGENCY_MODE_EXTENSION_SECONDS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "GnssConfiguration"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEsExtensionSec:I

.field public final mProperties:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssConfiguration"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 115
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 116
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-void
.end method

.method public static isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 471
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 483
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 477
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static native native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.end method

.method private static native native_set_es_extension_sec(I)Z
.end method

.method private static native native_set_satellite_blocklist([I[I)Z
.end method


# virtual methods
.method public final getBooleanConfig(Ljava/lang/String;Z)Z
    .registers 3

    .line 461
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    return p2

    .line 465
    :cond_d
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getC2KHost()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "C2K_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getC2KPort(I)I
    .registers 3

    const-string v0, "C2K_PORT"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEsExtensionSec()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    return p0
.end method

.method public final getEsExtensionSecCarrier()I
    .registers 5

    const-string p0, "GnssConfiguration"

    const/4 v0, 0x0

    :try_start_3
    const-string/jumbo v1, "persist.sys.gps.dds.subId"

    const-string v2, "0"

    .line 405
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    const-string v1, "Sim slot property has wrong value, set 0"

    .line 407
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 410
    :goto_17
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_GPS_ConfigEsExtensionSec"

    invoke-virtual {v2, v1, v3, v0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v1

    const-string v2, "ES_EXTENSION_SEC: "

    const/16 v3, 0x12c

    if-le v1, v3, :cond_43

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " too high, reset to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_5e

    :cond_43
    if-gez v1, :cond_5d

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is negative, reset to zero."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_5d
    move v0, v1

    :goto_5e
    return v0
.end method

.method public getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    .registers 1

    .line 232
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getIntConfig(Ljava/lang/String;I)I
    .registers 5

    .line 447
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return p2

    .line 452
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return p0

    .line 454
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse config parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Using default value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getLppProfile()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-object p0
.end method

.method public getProxyApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 200
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 201
    array-length v0, p0

    if-nez v0, :cond_25

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 205
    :cond_25
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRangeCheckedConfigEsExtensionSec()I
    .registers 5

    const-string v0, "ES_EXTENSION_SEC"

    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "ES_EXTENSION_SEC: "

    const-string v2, "GnssConfiguration"

    const/16 v3, 0x12c

    if-le p0, v3, :cond_2b

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " too high, reset to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_46

    :cond_2b
    if-gez p0, :cond_45

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is negative, reset to zero."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_45
    move v1, p0

    :goto_46
    return v1
.end method

.method public getSuplEs(I)I
    .registers 3

    const-string v0, "SUPL_ES"

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplHost()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "SUPL_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuplMode(I)I
    .registers 3

    const-string v0, "SUPL_MODE"

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplPort(I)I
    .registers 3

    const-string v0, "SUPL_PORT"

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isLongTermPsdsServerConfigured()Z
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_2"

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LONGTERM_PSDS_SERVER_3"

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isPsdsPeriodicDownloadEnabled()Z
    .registers 3

    const-string v0, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isWifiOnlyModel()Z
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_14

    .line 529
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public loadPropertiesFromCarrierConfig()V
    .registers 8

    .line 337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_d

    return-void

    .line 343
    :cond_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 344
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 345
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_20
    const-string v1, "GnssConfiguration"

    if-nez v0, :cond_31

    .line 347
    sget-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "SIM not ready, use default carrier config."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 350
    :cond_31
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "gps."

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x4

    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 356
    sget-boolean v5, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v5, :cond_7b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gps config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_7b
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_87

    .line 359
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_39

    :cond_87
    if-eqz v3, :cond_39

    .line 361
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_39

    :cond_93
    return-void
.end method

.method public final loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V
    .registers 4

    .line 369
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/etc/gps_debug.conf"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1c

    const/4 v0, 0x0

    .line 372
    :try_start_8
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_17

    .line 373
    :try_start_d
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 375
    :try_start_10
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_27

    :catchall_14
    move-exception p0

    move-object v0, v1

    goto :goto_18

    :catchall_17
    move-exception p0

    :goto_18
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 376
    throw p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 378
    :catch_1c
    sget-boolean p0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz p0, :cond_27

    const-string p0, "GnssConfiguration"

    const-string p1, "Could not open GPS configuration file /etc/gps_debug.conf"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public final logConfigurations()V
    .registers 15

    .line 318
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 320
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    const-string v5, "SUPL_VER"

    .line 322
    invoke-virtual {p0, v5, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_24

    move v7, v8

    goto :goto_25

    :cond_24
    move v7, v0

    :goto_25
    const-string v9, "LPP_PROFILE"

    .line 325
    invoke-virtual {p0, v9, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    .line 326
    invoke-virtual {p0, v10, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    .line 327
    invoke-virtual {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_3b

    move v11, v8

    goto :goto_3c

    :cond_3b
    move v11, v0

    :goto_3c
    const-string v8, "GPS_LOCK"

    .line 328
    invoke-virtual {p0, v8, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v12

    .line 329
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v13

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    .line 330
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x84

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, p0

    .line 317
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)V

    return-void
.end method

.method public reloadGpsProperties()V
    .registers 4

    .line 244
    sget-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset GPS properties, previous size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    const-string/jumbo v0, "persist.sys.gps.lpp"

    .line 247
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 250
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v2, "LPP_PROFILE"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->setPsdsServer()V

    .line 258
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    return-void
.end method

.method public setEsExtensionSec()V
    .registers 4

    .line 431
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSecCarrier()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set ES extension seconds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 437
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 438
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method

.method public final setPsdsServer()V
    .registers 5

    .line 509
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isNonQcomGnss()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 511
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result v1

    const-string v2, "LONGTERM_PSDS_SERVER_1"

    if-eqz v1, :cond_3c

    .line 512
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    move-result v0

    const-string v1, "LONGTERM_PSDS_SERVER_2"

    if-eqz v0, :cond_2b

    .line 513
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v3, "http://gllto1.glpals.com/7day/v5/latest/lto2.dat"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v0, "http://gllto2.glpals.com/7day/v5/latest/lto2.dat"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4a

    .line 516
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v3, "http://gllto1.glpals.com/4day/v5/latest/lto2.dat"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v0, "http://gllto2.glpals.com/4day/v5/latest/lto2.dat"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4a

    .line 519
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 520
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v0, "http://1.ssiloc.com:80/p4/46F3"

    invoke-virtual {p0, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setSatelliteBlocklist([I[I)V
    .registers 3

    .line 228
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_satellite_blocklist([I[I)Z

    return-void
.end method
