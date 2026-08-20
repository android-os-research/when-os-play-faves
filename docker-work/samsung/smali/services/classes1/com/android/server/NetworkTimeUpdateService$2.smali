.class public Lcom/android/server/NetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive + intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 471
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_ee

    const/4 p2, 0x0

    :try_start_29
    const-string v0, "date_time_policy"

    .line 475
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 477
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object p2
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    const v0, 0x10e00f3

    const v2, 0x10e00f2

    const v3, 0x10e00f1

    const/4 v4, 0x0

    if-eqz p2, :cond_b3

    .line 483
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b3

    .line 484
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v7, v5

    if-eqz v9, :cond_64

    .line 486
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3, v5, v6}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    goto :goto_72

    .line 488
    :cond_64
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v9, v3

    invoke-static {v5, v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    .line 491
    :goto_72
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v5

    cmp-long v3, v7, v5

    if-eqz v3, :cond_80

    .line 493
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v2, v5, v6}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalShorterMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    goto :goto_8e

    .line 495
    :cond_80
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    invoke-static {v3, v5, v6}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalShorterMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    .line 498
    :goto_8e
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v2

    if-eqz v2, :cond_9a

    .line 500
    iget-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {p1, v2}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmTryAgainTimesMax(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_a7

    .line 502
    :cond_9a
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {v2, p1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmTryAgainTimesMax(Lcom/android/server/NetworkTimeUpdateService;I)V

    .line 505
    :goto_a7
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeErrorThreshold()I

    .line 514
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$sfputmNtpSetByMDM(Z)V

    .line 515
    iget-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {p1, v4}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmTryAgainCounter(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_df

    .line 517
    :cond_b3
    invoke-static {v4}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$sfputmNtpSetByMDM(Z)V

    .line 518
    iget-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-static {p2, v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    .line 520
    iget-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmPollingIntervalShorterMs(Lcom/android/server/NetworkTimeUpdateService;J)V

    .line 522
    iget-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmTryAgainTimesMax(Lcom/android/server/NetworkTimeUpdateService;I)V

    .line 529
    :goto_df
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {p0}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fgetmHandler(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_fb

    :cond_ee
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 531
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {p0, v1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmBootCompleted(Lcom/android/server/NetworkTimeUpdateService;Z)V

    :cond_fb
    :goto_fb
    return-void
.end method
