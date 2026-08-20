.class public Lcom/android/server/statusbar/StatusBarManagerService$4;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic val$barType:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 3

    .line 1687
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$barType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1690
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1691
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$barType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 1693
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mnotifyBarAttachChanged(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 1692
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method
