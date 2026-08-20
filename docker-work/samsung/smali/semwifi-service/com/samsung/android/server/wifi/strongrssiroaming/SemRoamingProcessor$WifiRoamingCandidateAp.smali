.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;
.super Ljava/lang/Object;
.source "SemRoamingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiRoamingCandidateAp"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private final mFrequency:I

.field private final mMaxNumberSpatialStreams:I

.field private final mPredictedThroughputMbps:I

.field private final mScanRssi:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPredictedThroughputMbps(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->getPredictedThroughputMbps()I

    move-result p0

    return p0
.end method

.method constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 8

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 363
    iput p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    .line 364
    iput p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    .line 365
    iput p4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelWidth:I

    .line 366
    iput p5, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelUtilization:I

    .line 367
    iput p6, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mMaxNumberSpatialStreams:I

    .line 368
    iput p7, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    return-void
.end method

.method private getPredictedThroughputMbps()I
    .registers 1

    .line 372
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    return p0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mbps freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelUtilization:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mMaxNumberSpatialStreams:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
