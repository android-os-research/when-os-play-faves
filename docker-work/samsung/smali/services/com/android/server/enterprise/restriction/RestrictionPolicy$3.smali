.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    .line 504
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "updateUsbMode failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_69

    .line 508
    :try_start_16
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_1f

    .line 510
    :catch_1c
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_1f
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 516
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$fgetmProfileServiceListener(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 519
    :cond_35
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v4, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result p2

    invoke-static {p1, v4, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msetStatusBarExpansionSystemUI(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V

    .line 522
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUsbStorageStatebyIntent(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z

    .line 524
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$misFirmwareChanged(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 525
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mmigrateDisallowNonMarketAppOnUserRestrictions(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 528
    :cond_54
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mnotifyChanges(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    .line 530
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_124

    .line 531
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mturnOffAirPlaneMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    goto/16 :goto_124

    :cond_69
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 536
    :try_start_71
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_78

    goto/16 :goto_124

    .line 538
    :catch_78
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_7d
    const-string v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 540
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 541
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 543
    :cond_95
    :try_start_95
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_9c

    goto/16 :goto_124

    :catch_9c
    const-string p0, "Network Policy update failed"

    .line 545
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_a3
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 547
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v1, :cond_ed

    .line 548
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$misScreenCaptureEnabled(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "screenCaptureEnabled"

    const-string p2, "/data/system/enterprise.conf"

    .line 551
    invoke-static {p1, p0, p2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_124

    :cond_ed
    const-string v0, "android.intent.action.USER_ADDED"

    .line 553
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 554
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 555
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$monUserAdded(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_124

    :cond_ff
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 557
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 558
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$monUserRemoved(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_124

    :cond_111
    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 559
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_124

    const-string p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 560
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 561
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    :cond_124
    :goto_124
    return-void
.end method
