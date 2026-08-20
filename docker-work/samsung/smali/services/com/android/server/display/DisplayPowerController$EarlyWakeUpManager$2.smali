.class public Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

.field public final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .registers 3

    .line 5345
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5351
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 5352
    :goto_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/server/display/DisplayBlanker;->setDisplayStateLimitForEarlyWakeUp(II)V

    .line 5354
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5355
    :try_start_21
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fputmEarlyDisplayReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    .line 5356
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    .line 5357
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw p0
.end method
