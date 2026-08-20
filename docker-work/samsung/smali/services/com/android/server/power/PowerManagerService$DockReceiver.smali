.class public final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DockReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 7797
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 7800
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    .line 7801
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "PowerManagerService"

    .line 7804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] DockReceiver: onReceive: DockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDockState(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7807
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDockState(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-eq v0, p2, :cond_4f

    .line 7815
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDockState(Lcom/android/server/power/PowerManagerService;I)V

    .line 7816
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    invoke-static {p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 7817
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 7819
    :cond_4f
    monitor-exit p1

    return-void

    :catchall_51
    move-exception p0

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw p0
.end method
