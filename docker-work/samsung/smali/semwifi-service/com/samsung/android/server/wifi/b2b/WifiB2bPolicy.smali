.class public Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
.super Ljava/lang/Object;
.source "WifiB2bPolicy.java"


# static fields
.field private static final MAX_SSID_LEN:I = 0x20

.field static final NOT_CONFIGURED:I = 0x7fffffff

.field public static final ROAM_BAND_DEFAULT_ALL:I = 0x0

.field private static final ROAM_BAND_MAX:I = 0x7

.field private static final ROAM_BAND_MIN:I = 0x0

.field public static final ROAM_SCANPERIOD_DEFAULT:I = 0xa

.field private static final ROAM_SCAN_PERIOD_MAX:I = 0x3c

.field private static final ROAM_SCAN_PERIOD_MIN:I = 0x0

.field public static final RSSI_ROAMDELTA_DEFAULT:I = 0xa

.field private static final RSSI_ROAM_DELTA_MAX:I = 0x64

.field private static final RSSI_ROAM_DELTA_MIN:I = 0x0

.field public static final RSSI_THRESHOLD_DEFAULT:I = -0x4b

.field private static final RSSI_THRESHOLD_MAX:I = -0x32

.field private static final RSSI_THRESHOLD_MIN:I = -0x64


# instance fields
.field final networkName:Ljava/lang/String;

.field noDhcpInRoam:Z

.field noDisable:Z

.field roamBand:I

.field roamDelta:I

.field roamScanPeriod:I

.field roamTrigger:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    .line 39
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    if-eqz p1, :cond_13

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    return-void

    .line 47
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "network name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 177
    instance-of v0, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    if-eqz v0, :cond_f

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    return-object p0
.end method

.method public getRoamBand()I
    .registers 2

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getRoamDelta()I
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0
.end method

.method public getRoamTrigger()I
    .registers 2

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    return p0

    :cond_9
    const/16 p0, -0x4b

    return p0
.end method

.method hasRoamBandSetting()Z
    .registers 2

    .line 137
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method hasRoamDeltaSetting()Z
    .registers 2

    .line 90
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method hasRoamScanPeriodSetting()Z
    .registers 2

    .line 106
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hasRoamSettings()Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method hasRoamTriggerSetting()Z
    .registers 2

    .line 74
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method isRoamBandSetToDefault()Z
    .registers 1

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method isSupportedRoamBandSetting(I)Z
    .registers 5

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    :goto_9
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1a

    .line 129
    iget v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    and-int/2addr v2, v0

    if-lez v2, :cond_17

    and-int v2, p1, v0

    if-nez v2, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    mul-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_1a
    return v1
.end method

.method isValidNetworkName()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method isValidRoamBandSetting()Z
    .registers 2

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result v0

    if-ltz v0, :cond_f

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result p0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method isValidRoamDeltaSetting()Z
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    move-result v0

    if-ltz v0, :cond_10

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    move-result p0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method isValidRoamScanPeriodSetting()Z
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    move-result v0

    if-ltz v0, :cond_10

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    move-result p0

    const/16 v0, 0x3c

    if-gt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method isValidRoamTriggerSetting()Z
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    move-result v0

    const/16 v1, -0x32

    if-gt v0, v1, :cond_12

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    move-result p0

    const/16 v0, -0x64

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public noDHCPRenewalAfterRoam()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDhcpInRoam:Z

    return p0
.end method

.method public noNetworkDisable()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDisable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B2BPolicy for "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RoamTrigger:"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RoamDelta:"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RoamScanPeriod:"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RoamBand:"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDHCPRenewalAfterRoam()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, " SkipDHCPAfterRoam"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noNetworkDisable()Z

    move-result p0

    if-eqz p0, :cond_57

    const-string p0, " NeverDisabled"

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
