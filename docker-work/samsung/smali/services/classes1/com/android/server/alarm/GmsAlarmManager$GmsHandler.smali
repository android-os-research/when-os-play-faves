.class public Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GmsHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V
    .registers 3

    .line 540
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 546
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ","

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "GmsAlarmManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_34e

    goto/16 :goto_34d

    .line 682
    :pswitch_f
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 683
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkForceReset(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 684
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mforceWakeLockBlackListReset(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 685
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_34d

    .line 664
    :pswitch_25
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_43

    .line 665
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_34d

    .line 668
    :cond_43
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_34d

    .line 679
    :pswitch_57
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckOnceMultiUserid(Lcom/android/server/alarm/GmsAlarmManager;)V

    goto/16 :goto_34d

    .line 673
    :pswitch_5e
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$menableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V

    goto/16 :goto_34d

    .line 676
    :pswitch_67
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mdisableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V

    goto/16 :goto_34d

    .line 661
    :pswitch_70
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mupdateSCPMParametersFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V

    goto/16 :goto_34d

    .line 657
    :pswitch_77
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mbigData(Lcom/android/server/alarm/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.gmsalarmmanager"

    const-string v2, "GNET"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$minsertLog(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    goto/16 :goto_34d

    .line 649
    :pswitch_92
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_af

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_af

    const-string p1, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    .line 650
    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    .line 652
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 654
    :cond_af
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_34d

    .line 640
    :pswitch_b6
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_d8

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_d8

    const-string p1, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    .line 641
    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    .line 643
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 644
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 646
    :cond_d8
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_34d

    .line 623
    :pswitch_df
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 624
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 625
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 627
    :cond_f1
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_fa

    return-void

    .line 628
    :cond_fa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GMS-CORE] MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_13c

    .line 630
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    .line 631
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 633
    :cond_13c
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 634
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 635
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 636
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 637
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_34d

    .line 607
    :pswitch_157
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_169

    .line 608
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 609
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v3}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 611
    :cond_169
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_172

    return-void

    .line 612
    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GMS-CORE] MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_1b4

    .line 614
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    .line 615
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 617
    :cond_1b4
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 618
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 619
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v3}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 620
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_34d

    .line 548
    :pswitch_1ca
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_1d3

    return-void

    .line 549
    :cond_1d3
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misWifiConnected(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    .line 551
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1fd

    .line 553
    :cond_1f1
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    :goto_1fd
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_217

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_217

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_217

    goto/16 :goto_34d

    .line 558
    :cond_217
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    .line 559
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_22d

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misChnSimOrNoSim(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_23d

    :cond_22d
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisHongKongMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_281

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misChnSim(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 560
    :cond_23d
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_27b

    .line 561
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-string/jumbo v1, "https://www.google.com/"

    invoke-static {v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;)I

    move-result v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GMS-CORE] China or hongkong mode and google network return: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_275

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_275

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_26f

    goto :goto_275

    .line 566
    :cond_26f
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_286

    .line 564
    :cond_275
    :goto_275
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_286

    .line 569
    :cond_27b
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_286

    .line 572
    :cond_281
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 574
    :goto_286
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 575
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    const-string v0, "[GMS-CORE] net work google can net"

    .line 576
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2e4

    :cond_2ae
    const-string v0, "[GMS-CORE] net work google no net"

    .line 580
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 582
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    goto :goto_2bb

    :cond_2cd
    const-string v0, "[GMS-CORE] no net work"

    .line 586
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 590
    :cond_2e4
    :goto_2e4
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    if-eqz p1, :cond_2f9

    .line 592
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_306

    .line 594
    :cond_2f9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 596
    :goto_306
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_32e

    .line 597
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_34d

    .line 601
    :cond_32e
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    :goto_34d
    return-void

    :pswitch_data_34e
    .packed-switch 0x1
        :pswitch_1ca
        :pswitch_157
        :pswitch_df
        :pswitch_b6
        :pswitch_92
        :pswitch_77
        :pswitch_70
        :pswitch_67
        :pswitch_5e
        :pswitch_57
        :pswitch_25
        :pswitch_f
    .end packed-switch
.end method
