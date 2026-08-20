.class public final Lcom/android/server/UiModeManagerService$LocalService;
.super Lcom/android/server/UiModeManagerInternal;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 2412
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Lcom/android/server/UiModeManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public isNightMode()Z
    .registers 2

    .line 2416
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2417
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmConfiguration(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 2425
    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 2426
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onEarlySwitchUser(I)V
    .registers 6

    .line 2432
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmSetupWizardObserver(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2433
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mverifySetupWizardCompleted(Lcom/android/server/UiModeManagerService;)V

    .line 2434
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2435
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateNightModeFromSettingsLocked(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 2436
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z

    .line 2437
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEarlySwitchUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " userID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 2439
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V

    .line 2440
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_86

    .line 2441
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 2442
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterTimeChangeEvent(Lcom/android/server/UiModeManagerService;)V

    .line 2443
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;Z)V

    goto :goto_98

    .line 2446
    :cond_86
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 2447
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterTimeChangeEvent(Lcom/android/server/UiModeManagerService;)V

    .line 2448
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;Z)V

    .line 2451
    :cond_98
    :goto_98
    monitor-exit v0

    return-void

    :catchall_9a
    move-exception p0

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_1f .. :try_end_9c} :catchall_9a

    throw p0
.end method
