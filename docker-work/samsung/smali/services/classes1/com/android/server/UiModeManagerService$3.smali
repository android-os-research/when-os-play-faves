.class public Lcom/android/server/UiModeManagerService$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 298
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    goto :goto_26

    .line 303
    :cond_15
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_22

    const/4 p2, 0x1

    goto :goto_23

    :cond_22
    move p2, v0

    :goto_23
    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCharging(Lcom/android/server/UiModeManagerService;Z)V

    .line 306
    :goto_26
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 308
    :try_start_2d
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, p2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_4a

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCarModeEnabled(Lcom/android/server/UiModeManagerService;)Z

    move-result p2

    if-nez p2, :cond_45

    iget-object p2, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDockState(Lcom/android/server/UiModeManagerService;)I

    move-result p2

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$smisDeskDockState(I)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 309
    :cond_45
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 312
    :cond_4a
    monitor-exit p1

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_4c

    throw p0
.end method
