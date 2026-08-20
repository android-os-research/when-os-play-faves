.class public Lcom/android/server/UiModeManagerService$7;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 368
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmVrHeadset(Lcom/android/server/UiModeManagerService;Z)V

    .line 369
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 370
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 372
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method
