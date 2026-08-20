.class public Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;
.super Ljava/lang/Object;
.source "SemScoringParams.java"


# static fields
.field private static final ENTRY:I = 0x1

.field private static final EXIT:I = 0x0

.field private static final GOOD:I = 0x3

.field public static final KEY_RSSI2:Ljava/lang/String; = "rssi2"

.field public static final KEY_RSSI5:Ljava/lang/String; = "rssi5"

.field public static final KEY_RSSI6:Ljava/lang/String; = "rssi6"

.field private static final SUFFICIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemScoringParams"


# instance fields
.field public band6GhzBonus:I

.field public currentNetworkBonusMin:I

.field public currentNetworkBonusPercent:I

.field public enable6GhzBeaconRssiBoost:Z

.field public estimateRssiErrorMargin:I

.field public lastSelectionMinutes:I

.field public final rssi2:[I

.field public final rssi5:[I

.field public final rssi6:[I

.field public savedNetworkBonus:I

.field public scoringBucketStepSize:I

.field public secureNetworkBonus:I

.field public throughputBonusDenominator:I

.field public throughputBonusDenominatorAfter800Mbps:I

.field public throughputBonusLimit:I

.field public throughputBonusNumerator:I

.field public throughputBonusNumeratorAfter800Mbps:I

.field public unmeteredNetworkBonus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_4e

    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi2:[I

    new-array v1, v0, [I

    .line 49
    fill-array-data v1, :array_5a

    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi5:[I

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_66

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi6:[I

    const/16 v0, 0x78

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusNumerator:I

    const/16 v0, 0x1b1

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusDenominator:I

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusNumeratorAfter800Mbps:I

    const/16 v1, 0x10

    .line 59
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusDenominatorAfter800Mbps:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->enable6GhzBeaconRssiBoost:Z

    const/16 v0, 0x140

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusLimit:I

    const/16 v0, 0x1f4

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->savedNetworkBonus:I

    const/16 v2, 0x3e8

    .line 63
    iput v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->unmeteredNetworkBonus:I

    .line 64
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->currentNetworkBonusMin:I

    const/16 v1, 0x14

    .line 65
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->currentNetworkBonusPercent:I

    const/16 v1, 0x21c

    .line 66
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->secureNetworkBonus:I

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->band6GhzBonus:I

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->scoringBucketStepSize:I

    const/16 v0, 0xf0

    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->lastSelectionMinutes:I

    const/4 v0, 0x5

    .line 70
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->estimateRssiErrorMargin:I

    return-void

    nop

    :array_4e
    .array-data 4
        -0x53
        -0x4e
        -0x49
        -0x3c
    .end array-data

    :array_5a
    .array-data 4
        -0x50
        -0x4b
        -0x46
        -0x39
    .end array-data

    :array_66
    .array-data 4
        -0x54
        -0x51
        -0x46
        -0x39
    .end array-data
.end method

.method private getRssiArray(I)[I
    .registers 4

    .line 197
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi2:[I

    return-object p0

    .line 199
    :cond_9
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi5:[I

    return-object p0

    .line 201
    :cond_12
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi6:[I

    return-object p0

    .line 205
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid frequency("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), using 5G as default rssi array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemScoringParams"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->rssi5:[I

    return-object p0
.end method


# virtual methods
.method public getBand6GhzBonus()I
    .registers 1

    .line 166
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->band6GhzBonus:I

    return p0
.end method

.method public getCurrentNetworkBonusMin()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->currentNetworkBonusMin:I

    return p0
.end method

.method public getCurrentNetworkBonusPercent()I
    .registers 1

    .line 151
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->currentNetworkBonusPercent:I

    return p0
.end method

.method public getEstimateRssiErrorMargin()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->estimateRssiErrorMargin:I

    return p0
.end method

.method public getLastSelectionMinutes()I
    .registers 1

    .line 184
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->lastSelectionMinutes:I

    return p0
.end method

.method public getSavedNetworkBonus()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->savedNetworkBonus:I

    return p0
.end method

.method public getScoringBucketStepSize()I
    .registers 1

    .line 176
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->scoringBucketStepSize:I

    return p0
.end method

.method public getSecureNetworkBonus()I
    .registers 1

    .line 159
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->secureNetworkBonus:I

    return p0
.end method

.method public getSufficientRssi(I)I
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getRssiArray(I)[I

    move-result-object p0

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public getThroughputBonusDenominator()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusDenominator:I

    return p0
.end method

.method public getThroughputBonusDenominatorAfter800Mbps()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusDenominatorAfter800Mbps:I

    return p0
.end method

.method public getThroughputBonusLimit()I
    .registers 1

    .line 118
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusLimit:I

    return p0
.end method

.method public getThroughputBonusNumerator()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusNumerator:I

    return p0
.end method

.method public getThroughputBonusNumeratorAfter800Mbps()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->throughputBonusNumeratorAfter800Mbps:I

    return p0
.end method

.method public getUnmeteredNetworkBonus()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->unmeteredNetworkBonus:I

    return p0
.end method

.method public is6GhzBeaconRssiBoostEnabled()Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->enable6GhzBeaconRssiBoost:Z

    return p0
.end method
