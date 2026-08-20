.class public Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;
.super Ljava/lang/Object;
.source "SemTrafficPatternTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;
    }
.end annotation


# static fields
.field public static final ETHER_ADDR_LEN:I = 0x6

.field public static final ETHER_SRC_ADDR_OFFSET:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemTrafficPatternTracker"


# instance fields
.field private mAccumulatedWakeTime:J

.field private mDlPacketCnt:J

.field private mDlPacketSizeMax:J

.field private mDlPacketSizeMin:J

.field private mDlPacketSizeSum:J

.field private mFirstUlPacketTime:J

.field private mInterPacketTimeDLMax1:J

.field private mInterPacketTimeDLMax2:J

.field private mInterPacketTimeUlMax:J

.field private mInterPacketTimeUlMin:J

.field private mLatestDlPacketTime:J

.field private mLatestUlPacketTime:J

.field private final mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

.field private mPrevWakeRatioCalculationTime:J

.field private mRunning:Z

.field private mUlPacketCnt:J

.field private mUlPacketSizeMax:J

.field private mUlPacketSizeMin:J

.field private mUlPacketSizeSum:J

.field private runTimeSleepTimerNs:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccumulatedWakeTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mAccumulatedWakeTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketCnt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMax:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMin:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeSum:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInterPacketTimeDLMax1(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax1:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInterPacketTimeDLMax2(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax2:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInterPacketTimeUlMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMax:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInterPacketTimeUlMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMin:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestDlPacketTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestUlPacketTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketCnt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMax:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMin:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeSum:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrunTimeSleepTimerNs(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->runTimeSleepTimerNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAccumulatedWakeTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mAccumulatedWakeTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketCnt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMax:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMin:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeSum:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirstUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mFirstUlPacketTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterPacketTimeDLMax1(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax1:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterPacketTimeDLMax2(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax2:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterPacketTimeUlMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMax:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterPacketTimeUlMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMin:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestDlPacketTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestUlPacketTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketCnt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMax:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMin:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeSum:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "wifipackettrackerjni"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SemTrafficPatternTracker"

    const-string v1, "Loaded wifipackettrackerjni lib"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catch_12
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mRunning:Z

    const-wide/32 v0, 0xf4240

    .line 59
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMin:J

    .line 63
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMin:J

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax1:J

    .line 70
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax2:J

    .line 71
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestDlPacketTime:J

    .line 73
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMax:J

    const-wide/32 v2, 0x1dcd6500

    .line 74
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMin:J

    .line 75
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mFirstUlPacketTime:J

    .line 76
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestUlPacketTime:J

    const-wide/32 v2, 0x2faf080

    .line 78
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->runTimeSleepTimerNs:J

    .line 79
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mAccumulatedWakeTime:J

    .line 80
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPrevWakeRatioCalculationTime:J

    if-eqz p2, :cond_33

    .line 84
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;-><init>(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    return-void

    .line 83
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null InterfaceParams"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native attachTwtDataPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private resetTrafficData()V
    .registers 5

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketCnt:J

    .line 116
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketCnt:J

    .line 118
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMax:J

    const-wide/32 v2, 0xf4240

    .line 119
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMin:J

    .line 120
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeSum:J

    .line 122
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMax:J

    .line 123
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMin:J

    .line 124
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeSum:J

    .line 126
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestUlPacketTime:J

    .line 128
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMax:J

    const-wide/32 v2, 0x1dcd6500

    .line 129
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMin:J

    .line 130
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax1:J

    .line 131
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax2:J

    return-void
.end method


# virtual methods
.method public getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;
    .registers 12

    .line 135
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;-><init>()V

    .line 136
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketCnt:J

    long-to-float v3, v1

    iput v3, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketCnt:F

    .line 137
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketCnt:J

    long-to-float v5, v3

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketCnt:F

    .line 139
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMax:J

    long-to-float v5, v5

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeMax:F

    .line 140
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeMin:J

    long-to-float v5, v5

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeMin:F

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v8, 0x0

    if-lez v7, :cond_26

    .line 141
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mUlPacketSizeSum:J

    long-to-float v7, v9

    long-to-float v9, v1

    div-float/2addr v7, v9

    goto :goto_27

    :cond_26
    move v7, v8

    :goto_27
    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeAvg:F

    .line 143
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMax:J

    long-to-float v7, v9

    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeMax:F

    .line 144
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeMin:J

    long-to-float v7, v9

    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeMin:F

    cmp-long v7, v3, v5

    if-lez v7, :cond_3d

    .line 145
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mDlPacketSizeSum:J

    long-to-float v7, v7

    long-to-float v3, v3

    div-float v8, v7, v3

    :cond_3d
    iput v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeAvg:F

    const-wide/16 v3, 0x1

    cmp-long v7, v1, v3

    if-lez v7, :cond_4c

    .line 149
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mLatestUlPacketTime:J

    iget-wide v7, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mFirstUlPacketTime:J

    sub-long/2addr v5, v7

    sub-long/2addr v1, v3

    div-long/2addr v5, v1

    :cond_4c
    long-to-float v1, v5

    .line 153
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeAvg:F

    .line 154
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMax:J

    long-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeMax:F

    .line 155
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeUlMin:J

    long-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeMin:F

    .line 157
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax1:J

    long-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    .line 158
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mInterPacketTimeDLMax2:J

    long-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax2:F

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->resetTrafficData()V

    return-object v0
.end method

.method public getWakeTimeRatio()F
    .registers 6

    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 168
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mAccumulatedWakeTime:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPrevWakeRatioCalculationTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 170
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPrevWakeRatioCalculationTime:J

    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mAccumulatedWakeTime:J

    return v2
.end method

.method public setRunTimeSleepTimer(I)V
    .registers 6

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 177
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->runTimeSleepTimerNs:J

    return-void
.end method

.method public start()V
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mRunning:Z

    if-nez v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->start()Z

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mRunning:Z

    .line 106
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->resetTrafficData()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->stop()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->mRunning:Z

    return-void
.end method
