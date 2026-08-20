.class public Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .registers 2

    .line 5290
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5293
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5296
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fputmEarlyLightSensorReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    .line 5297
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    .line 5298
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
