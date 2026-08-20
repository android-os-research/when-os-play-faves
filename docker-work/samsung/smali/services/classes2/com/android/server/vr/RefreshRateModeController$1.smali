.class public Lcom/android/server/vr/RefreshRateModeController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "RefreshRateModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/RefreshRateModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/RefreshRateModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/RefreshRateModeController;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmLock(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 48
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v1, p1}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fputmIsDaydreamPersistentVrModeEnabled(Lcom/android/server/vr/RefreshRateModeController;Z)V

    .line 49
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "RefreshRateMode"

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPersistentVrStateChanged mIsDaydreamPersistentVrModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v3}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmIsDaydreamPersistentVrModeEnabled(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    if-eqz p1, :cond_3d

    .line 53
    iget-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p1}, Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V

    .line 54
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V

    goto :goto_4b

    .line 56
    :cond_3d
    iget-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {p1}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmLastRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V

    .line 57
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V

    .line 59
    :goto_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw p0
.end method
