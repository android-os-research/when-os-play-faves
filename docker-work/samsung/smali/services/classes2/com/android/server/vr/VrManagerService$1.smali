.class public Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$EventCallback;


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

    .line 187
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mlogEvent(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_c
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_20

    :cond_16
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_20
    if-eqz v1, :cond_37

    .line 198
    iget-object v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    .line 201
    :cond_32
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mcallFocusedActivityChangedLocked(Lcom/android/server/vr/VrManagerService;)V

    .line 203
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_5d

    .line 207
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmBootsToVr(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget v0, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5c

    if-eqz v1, :cond_4f

    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 208
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    :cond_4f
    const-string p1, "VrManagerService"

    const-string v0, "VrListenerSevice has died permanently, leaving system VR mode."

    .line 209
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetPersistentVrModeEnabled(Lcom/android/server/vr/VrManagerService;Z)V

    :cond_5c
    return-void

    :catchall_5d
    move-exception p0

    .line 203
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method
