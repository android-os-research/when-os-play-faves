.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 355
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_a7

    .line 356
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_22

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 357
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "screen_mode_setting"

    const/4 v2, -0x2

    invoke-static {p2, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    .line 358
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 359
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    :cond_49
    const-string p1, "SemMdnieManagerService"

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BOOT_ON - mScreenMode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mAutoModeEnabled - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmSupportScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-nez p1, :cond_83

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmSupportScreeenReadingMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 363
    :cond_83
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$mcheckScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 364
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmLock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_96
    const-string p2, "/sys/class/mdnie/mdnie/mode"

    .line 365
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 366
    monitor-exit p1

    goto :goto_a6

    :catchall_a3
    move-exception p0

    monitor-exit p1
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_a3

    throw p0

    :cond_a6
    :goto_a6
    return-void

    :cond_a7
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 370
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_be

    .line 371
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 372
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    return-void

    :cond_be
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 374
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 375
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 376
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    :cond_d4
    return-void
.end method
