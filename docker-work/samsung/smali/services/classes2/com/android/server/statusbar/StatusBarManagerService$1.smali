.class public Lcom/android/server/statusbar/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
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

    .line 237
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 8

    const-string v0, "StatusBarManagerService"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_79

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_79

    .line 243
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 244
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmDisableRecords(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_38
    const/4 v2, -0x1

    if-ge v2, v1, :cond_74

    .line 246
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmDisableRecords(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 247
    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    if-ne v3, v0, :cond_71

    const-string v3, "StatusBarManagerService"

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove record of STATUS_BAR_DEX r = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmDisableRecords(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 253
    :cond_74
    monitor-exit p1

    goto :goto_79

    :catchall_76
    move-exception p0

    monitor-exit p1
    :try_end_78
    .catchall {:try_start_2d .. :try_end_78} :catchall_76

    throw p0

    :cond_79
    :goto_79
    return-void
.end method
