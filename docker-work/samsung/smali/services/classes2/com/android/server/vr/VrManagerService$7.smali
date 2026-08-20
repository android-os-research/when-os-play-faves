.class public Lcom/android/server/vr/VrManagerService$7;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    .line 1203
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    if-nez p1, :cond_85

    .line 1216
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1217
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmChangedVrState(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    goto :goto_80

    .line 1226
    :cond_17
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$misDisplayStateVr(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "VrManagerService"

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayChanged mChangedVrState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmChangedVrState(Lcom/android/server/vr/VrManagerService;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmXrManagerService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/XrManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrModeEnabled(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vr/XrManagerService;->changeRefreshRateByVrMode(Z)V

    .line 1229
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, v2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fputmChangedVrState(Lcom/android/server/vr/VrManagerService;I)V

    goto :goto_80

    .line 1219
    :cond_51
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$misNormalRefreshRateMode(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "VrManagerService"

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayChanged mChangedVrState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmChangedVrState(Lcom/android/server/vr/VrManagerService;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$monVrModeChangedLocked(Lcom/android/server/vr/VrManagerService;)V

    .line 1222
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$7;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, v2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fputmChangedVrState(Lcom/android/server/vr/VrManagerService;I)V

    .line 1235
    :cond_80
    :goto_80
    monitor-exit p1

    goto :goto_85

    :catchall_82
    move-exception p0

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_9 .. :try_end_84} :catchall_82

    throw p0

    :cond_85
    :goto_85
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
