.class public Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V
    .registers 2

    .line 1463
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1468
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fputmRotationEvaluationScheduled(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Z)V

    .line 1469
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1470
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_21

    const/4 v0, -0x1

    if-lt v1, v0, :cond_20

    .line 1473
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    .line 1470
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method
