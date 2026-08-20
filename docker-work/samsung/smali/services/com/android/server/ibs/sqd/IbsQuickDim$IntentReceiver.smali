.class public Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public static synthetic $r8$lambda$L-In_qf_-NgRbiPp6N3WjR5-N1c(Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->lambda$onReceive$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 480
    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$minitFilter(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/net/Uri;)V
    .registers 3

    .line 510
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.statsd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 511
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mhandlePkgRemoved(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 486
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmLock(Lcom/android/server/ibs/sqd/IbsQuickDim;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 487
    :try_start_14
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    .line 488
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mquitDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 489
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p2

    if-eqz p2, :cond_38

    const-string p2, "IbsQuickDim"

    const-string/jumbo v0, "screen off "

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_38
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 492
    monitor-exit p1

    goto/16 :goto_f1

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_58

    .line 494
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    goto/16 :goto_f1

    :cond_58
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 496
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_73

    const-string p1, "IbsQuickDim"

    const-string p2, "POWER_CONNECTED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_73
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    goto/16 :goto_f1

    :cond_7a
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 499
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_95

    const-string p1, "IbsQuickDim"

    const-string p2, "POWER_DISCONNECTED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_95
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    .line 501
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmChargingFinishTime(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V

    .line 502
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    goto :goto_f1

    :cond_a9
    const-string p1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string/jumbo p1, "status"

    const/4 v0, -0x1

    .line 504
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 505
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$msetQuickDimModeFromPms(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    goto :goto_f1

    :cond_c3
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 507
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mhandleBootComplete(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    goto :goto_f1

    :cond_d5
    const-string p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_f1
    :goto_f1
    return-void
.end method
