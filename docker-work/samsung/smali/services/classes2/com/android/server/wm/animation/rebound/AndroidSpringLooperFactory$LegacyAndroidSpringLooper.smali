.class public Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;
.super Lcom/android/server/wm/animation/rebound/SpringLooper;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyAndroidSpringLooper"
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mLastTime:J

.field public final mLooperRunnable:Ljava/lang/Runnable;

.field public mStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperRunnable(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;-><init>(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)V

    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static create()Lcom/android/server/wm/animation/rebound/SpringLooper;
    .registers 2

    .line 51
    new-instance v0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 3

    .line 72
    iget-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
