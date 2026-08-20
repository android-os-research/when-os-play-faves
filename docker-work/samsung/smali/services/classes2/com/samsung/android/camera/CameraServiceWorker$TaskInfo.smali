.class public final Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskInfo"
.end annotation


# instance fields
.field public displayId:I

.field public frontTaskId:I

.field public isFixedOrientationLandscape:Z

.field public isFixedOrientationPortrait:Z

.field public isResizable:Z

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
