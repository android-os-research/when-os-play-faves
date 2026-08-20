.class public final Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceDumper"
.end annotation


# static fields
.field public static initialized:Z = false

.field public static mHandler:Landroid/os/Handler;

.field public static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field public mDelay:I

.field public final mDumpTraceRunnable:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDelay(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;-><init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    .line 524
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->initialized:Z

    if-nez p0, :cond_2e

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz p0, :cond_2e

    .line 525
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "PmsTraceDumper"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 526
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 527
    new-instance p0, Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    .line 528
    sput-boolean p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->initialized:Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 552
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_12

    const-string v0, "PowerManagerUtil"

    const-string v1, "Clear trace dumper jobs."

    .line 553
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public dumpTrace()V
    .registers 3

    .line 535
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_19

    const-string v0, "PowerManagerUtil"

    const-string v1, "Scheduled to dump trace now!"

    .line 536
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public dumpTraceWithDelay(I)V
    .registers 5

    .line 543
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_17

    .line 544
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    .line 545
    sget-object p1, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    sget-object p1, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method
