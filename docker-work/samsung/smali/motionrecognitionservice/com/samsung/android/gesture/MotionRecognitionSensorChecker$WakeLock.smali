.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLock"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPm:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 3795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    .line 3792
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3796
    nop

    .line 3797
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mContext:Landroid/content/Context;

    .line 3798
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    .line 3799
    const/4 v1, 0x1

    const-string v2, "MotionRecognitionSensorChecker"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3801
    return-void
.end method


# virtual methods
.method acquire()V
    .registers 3

    .line 3811
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    .line 3812
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3813
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v1, "Acquire wakelock!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    :cond_e
    return-void
.end method

.method acquire(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 3804
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    .line 3805
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3806
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v1, "Acquire wakelock using timer!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :cond_e
    return-void
.end method

.method release()V
    .registers 3

    .line 3818
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    .line 3819
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3820
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3821
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v1, "Release wakelock!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_16
    return-void
.end method
