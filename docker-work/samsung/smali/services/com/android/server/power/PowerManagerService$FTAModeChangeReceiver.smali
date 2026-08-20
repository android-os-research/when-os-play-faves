.class public final Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FTAModeChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 7824
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "PowerManagerService"

    const-string v0, "[api] FTAModeChangeReceiver: onReceive: "

    .line 7827
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7828
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 7829
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_12
    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    .line 7830
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7831
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmFTAMode(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p1, "PowerManagerService"

    const-string v0, "FTA mode ON"

    .line 7832
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_28
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 7833
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 7834
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmFTAMode(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p1, "PowerManagerService"

    const-string v0, "FTA mode OFF"

    .line 7835
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 7838
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 7839
    monitor-exit p2

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit p2
    :try_end_51
    .catchall {:try_start_12 .. :try_end_51} :catchall_4f

    throw p0
.end method
