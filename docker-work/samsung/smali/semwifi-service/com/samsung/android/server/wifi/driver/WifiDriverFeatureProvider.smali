.class public Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
.super Ljava/lang/Object;
.source "WifiDriverFeatureProvider.java"


# static fields
.field private static final FEATURE_ID_ASSURANCE:I = 0xa

.field private static final FEATURE_ID_BIG_DATA:I = 0xe

.field private static final FEATURE_ID_DELAYED_WAKEUP:I = 0x5

.field private static final FEATURE_ID_MHS:I = 0x7

.field private static final FEATURE_ID_NCHO:I = 0x9

.field private static final FEATURE_ID_OPTIMIZER:I = 0x3

.field private static final FEATURE_ID_P2P:I = 0xd

.field private static final FEATURE_ID_PCAP_LOGGING:I = 0xb

.field private static final FEATURE_ID_PNO:I = 0x1

.field private static final FEATURE_ID_RFC8325:I = 0x6

.field private static final FEATURE_ID_ROAMING:I = 0x8

.field private static final FEATURE_ID_SCHEDULED_PM:I = 0x4

.field private static final FEATURE_ID_SECURITY:I = 0xc

.field private static final FEATURE_ID_TWT:I = 0x2

.field private static final LEN_FEATURE_VERSION:I = 0x4

.field private static final LEN_HW_FEATURE_FIELD:I = 0x2

.field private static final LEN_SOLUTION_NAME:I = 0x3

.field private static final LEN_SW_FEATURE_FIELD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDriverFeatureProvider"

.field private static final UNINITIALIZED:I = -0x1

.field static vendorReleaseVersion:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final ANDROID_VERSION_ROS:I

.field private final DBG:Z

.field private isReady:Z

.field mSwFeatureInteger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSwFeatureLong:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private numAntennas:I

.field private numMainCores:I

.field private solutionName:Ljava/lang/String;

.field private supportLowPowerRxCore:Z

.field private supportedConCurrencyMode:I

.field private wifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    const/16 v0, 0xb

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->ANDROID_VERSION_ROS:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isReady:Z

    const-string v1, "Unknown"

    .line 69
    iput-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->solutionName:Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->supportLowPowerRxCore:Z

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->numMainCores:I

    .line 74
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->numAntennas:I

    .line 75
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->supportedConCurrencyMode:I

    return-void
.end method

.method private configDefaultFeatureSet()V
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getVendorVersion()I

    return-void
.end method

.method private getVendorVersion()I
    .registers 2

    .line 161
    sget p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->vendorReleaseVersion:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    const-string p0, "ro.vendor.build.version.release"

    .line 162
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 165
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->vendorReleaseVersion:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_17} :catch_17

    .line 169
    :catch_17
    :cond_17
    sget p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->vendorReleaseVersion:I

    return p0
.end method

.method private isValid(Ljava/lang/String;)Z
    .registers 9

    const-string p0, "^[0-9a-fA-F]+$"

    const/4 v0, 0x0

    .line 297
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_78

    const/4 v1, 0x4

    .line 300
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "^[a-zA-Z]+$"

    .line 302
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 305
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v3, :cond_78

    if-eqz v4, :cond_78

    if-eqz p0, :cond_78

    .line 310
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x10

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v4, 0x9

    .line 313
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x4

    .line 317
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, v5, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_57} :catch_61

    if-ne v4, p1, :cond_78

    if-lt v5, v1, :cond_78

    if-lt v3, v1, :cond_78

    if-lez p0, :cond_78

    const/4 p0, 0x1

    return p0

    :catch_61
    move-exception p0

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validation error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDriverFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v0
.end method

.method private parseHwFeatures(I)V
    .registers 4

    and-int/lit8 v0, p1, 0xf

    .line 125
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 126
    :goto_d
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->supportLowPowerRxCore:Z

    and-int/lit8 v0, p1, 0x70

    shr-int/lit8 v0, v0, 0x5

    .line 127
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->numMainCores:I

    and-int/lit16 v0, p1, 0x700

    shr-int/lit8 v0, v0, 0x8

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->supportedConCurrencyMode:I

    and-int/lit16 p1, p1, 0x3800

    shr-int/lit8 p1, p1, 0xb

    .line 129
    iput p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->numAntennas:I

    return-void
.end method

.method private parseSwFeatures(Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_61

    add-int/lit8 v1, v0, 0x2

    .line 145
    :try_start_5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x4

    .line 146
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 147
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    if-le v1, v5, :cond_37

    .line 149
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureLong:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 151
    :cond_37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_48} :catch_4a

    :goto_48
    move v0, v4

    goto :goto_1

    :catch_4a
    move-exception p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDriverFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method private throwIfNotReady()V
    .registers 2

    .line 336
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isReady:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChipsetSolutionName()Ljava/lang/String;
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 292
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->solutionName:Ljava/lang/String;

    return-object p0
.end method

.method public getNchoFeature()I
    .registers 3

    .line 250
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 251
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOptimizerFeature()I
    .registers 3

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 222
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getScheduledPmFeature()I
    .registers 3

    .line 196
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 197
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTwtFeature()I
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 237
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isDelayedWakeupSupported()Z
    .registers 4

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_29

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isDualBandSimultaneousSupported()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 134
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->supportedConCurrencyMode:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isNchoGetDriverCapaSupported()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 242
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isScheduledPmSupported()Z
    .registers 4

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_29

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isTwtSupported()Z
    .registers 4

    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 227
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_29

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isWifi5Supported()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 256
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isWifi6ESupported()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 274
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isWifi6Supported()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 265
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isWifi7Supported()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 283
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->wifiStandard:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiOptimizerSupported()Z
    .registers 4

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->DBG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->throwIfNotReady()V

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->mSwFeatureInteger:Ljava/util/HashMap;

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_29

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public parse(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3d

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3d

    :cond_9
    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 91
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->solutionName:Ljava/lang/String;

    const/16 v1, 0x9

    .line 95
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 99
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parseHwFeatures(I)V

    add-int/lit8 v1, v0, 0x4

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    add-int v2, v1, v0

    .line 109
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parseSwFeatures(Ljava/lang/String;I)V

    goto :goto_40

    .line 87
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->configDefaultFeatureSet()V

    :goto_40
    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isReady:Z

    return-void
.end method
