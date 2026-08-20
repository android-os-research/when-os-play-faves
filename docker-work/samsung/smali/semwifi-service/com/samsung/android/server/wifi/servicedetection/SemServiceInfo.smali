.class public Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
.super Ljava/lang/Object;
.source "SemServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;
    }
.end annotation


# static fields
.field public static final CLOUD_GAMING:I = 0x0

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x3e8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemServiceDetection history:"

.field public static final INDEX_CLOUD_GAME_DETECTED:I = 0x3

.field public static final INDEX_MULTI_TYPE_DETECTED:I = 0x0

.field public static final INDEX_NRT_SERVICE_DETECTED:I = 0x5

.field public static final INDEX_NRT_SERVICE_TYPE:I = 0x7

.field public static final INDEX_QOS_RANK:I = 0x2

.field public static final INDEX_RT_SERVICE_DETECTED:I = 0x4

.field public static final INDEX_RT_SERVICE_TYPE:I = 0x6

.field public static final INDEX_SERVICE_CHANGE:I = 0x1

.field public static final INDEX_TWT_BENEFICIAL:I = 0x8

.field public static LATENCY_REQ_NRT:[I = null

.field public static LATENCY_REQ_RT:[I = null

.field public static final NONREALTIME:I = 0x2

.field public static final NRT_FILE_TRANSFER:I = 0x0

.field public static final NRT_IDLE:I = 0x3

.field public static final NRT_VIDEO:I = 0x2

.field public static final NRT_YOUTUBE_WEB:I = 0x1

.field public static final REALTIME:I = 0x1

.field public static final RT_AUDIO_CALL:I = 0x0

.field public static final RT_MOBILE_GAME:I = 0x1

.field public static final RT_VIDEO_CALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemServiceInfo"

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private mBurstLenPreMav:I

.field private mBurstMaxLvlPreMav:I

.field private mL1ServiceType:I

.field private mL2ServiceType:I

.field private mNsdResults:[I

.field private mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

.field private mTrafficIndex:I

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mValleyLenPreMav:I

.field private trackerActivated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 49
    fill-array-data v1, :array_10

    sput-object v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_RT:[I

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_NRT:[I

    return-void

    :array_10
    .array-data 4
        0x28
        0x28
        0x18
        0x28
    .end array-data

    :array_1c
    .array-data 4
        0x28
        0x28
        0x30
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    return-void
.end method

.method private setNsdResults([I)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    return-void
.end method

.method private setServiceType(II)V
    .registers 3

    .line 72
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    .line 73
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    return-void
.end method


# virtual methods
.method public getMainCategoryServiceType()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    return p0
.end method

.method public getNetworkServiceDetectionResults()[I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    if-nez v0, :cond_d

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 114
    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    .line 116
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    return-object p0

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getSubCategoryServiceType()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    return p0
.end method

.method public getTrackerStatus()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->trackerActivated:Z

    return p0
.end method

.method public getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    return-object p0
.end method

.method public getTrafficInfo()[I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 128
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 129
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 130
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 131
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getUsageStatsPackage()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public initializeNetworkServiceDetectionResults([I)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setNsdResults([I)V

    return-void
.end method

.method public initializeServiceType()V
    .registers 2

    const/4 v0, -0x1

    .line 77
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setServiceType(II)V

    return-void
.end method

.method public setTrackerStatus(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->trackerActivated:Z

    return-void
.end method

.method public setTrafficData(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    return-void
.end method

.method public setTrafficInfo(IIII)V
    .registers 5

    .line 120
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    .line 121
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    .line 122
    iput p3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    .line 123
    iput p4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    return-void
.end method

.method public setUsageStatsPackage(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateNetworkServiceDetectionResults([I)V
    .registers 2

    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setNsdResults([I)V

    return-void
.end method

.method public updateServiceType(II)V
    .registers 3

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setServiceType(II)V

    return-void
.end method
