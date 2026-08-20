.class public Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 2101
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 2104
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)V

    .line 2105
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2106
    :try_start_d
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_22

    .line 2108
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mnotifyBarAttachChanged(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void

    :catchall_22
    move-exception p0

    .line 2107
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method
