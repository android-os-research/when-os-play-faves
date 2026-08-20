.class public Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public mStreamStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIII)V
    .registers 9

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 276
    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 277
    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 278
    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 281
    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 282
    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 283
    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 284
    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 314
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0
.end method

.method public markCompleted(IJJZLjava/util/List;Ljava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 291
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 296
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 297
    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 298
    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 299
    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 300
    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 301
    iput-object p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 302
    iput p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    return-void
.end method
