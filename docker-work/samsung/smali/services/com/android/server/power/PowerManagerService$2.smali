.class public Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic val$confirm:Z

.field public final synthetic val$haltMode:I

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;IZ)V
    .registers 5

    .line 6050
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/power/PowerManagerService$2;->val$haltMode:I

    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 6053
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "silent.sec"

    .line 6055
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6057
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6058
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v1, "SoftReset"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_69

    const-wide/16 v0, 0x7d0

    .line 6060
    :try_start_21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_69

    goto :goto_30

    :catch_25
    move-exception v0

    :try_start_26
    const-string v1, "PowerManagerService"

    const-string v2, "Failed to sleep"

    .line 6062
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6067
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NPE by silent reset. It\'s normal operation caused by device care"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6069
    :cond_38
    iget v0, p0, Lcom/android/server/power/PowerManagerService$2;->val$haltMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 6070
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_67

    :cond_49
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    .line 6072
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_67

    .line 6074
    :cond_5a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6076
    :goto_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_26 .. :try_end_6b} :catchall_69

    throw v0
.end method
