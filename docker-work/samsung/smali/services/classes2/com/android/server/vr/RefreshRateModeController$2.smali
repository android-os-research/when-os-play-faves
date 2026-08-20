.class public Lcom/android/server/vr/RefreshRateModeController$2;
.super Ljava/lang/Object;
.source "RefreshRateModeController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    .line 79
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5

    if-nez p1, :cond_4d

    .line 92
    iget-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {p1}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmLock(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 93
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {v0}, Lcom/android/server/vr/RefreshRateModeController;->getNormalRefreshRateMode()Z

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmIsNormalRefreshRate(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v1

    if-eq v1, v0, :cond_48

    .line 95
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v1, v0}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fputmIsNormalRefreshRate(Lcom/android/server/vr/RefreshRateModeController;Z)V

    .line 96
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "RefreshRateMode"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayChanged mIsNormalRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {v2}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmIsNormalRefreshRate(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3f
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController$2;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {p0}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmService(Lcom/android/server/vr/RefreshRateModeController;)Lcom/android/server/vr/XrManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeAllowedLocked()V

    .line 101
    :cond_48
    monitor-exit p1

    goto :goto_4d

    :catchall_4a
    move-exception p0

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4a

    throw p0

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
