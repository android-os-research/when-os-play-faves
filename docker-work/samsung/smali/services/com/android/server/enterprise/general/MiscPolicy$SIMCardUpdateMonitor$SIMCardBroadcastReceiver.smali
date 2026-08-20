.class public Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMCardBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 648
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 649
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 651
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_156

    const-string/jumbo p1, "ss"

    .line 652
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 653
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " state Extra is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "ABSENT"

    .line 655
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_13b

    const-string v0, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const-string v1, "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

    const-string v2, "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

    const-string v3, ""

    const-string v4, "SimChangeTime"

    const-string v5, "SimChangeOperation"

    const-string v6, "/data/system/SimCard.dat"

    if-eqz p2, :cond_cb

    .line 656
    :try_start_5d
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " SIM Card State :"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardConstants$State;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "1"

    .line 660
    invoke-static {v5, p1, v6}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1a0

    const/4 v3, -0x1

    invoke-static {p1, p2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 669
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object p2, p2, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object p2

    .line 670
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetmCtxt(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_156

    :cond_cb
    const-string p2, "LOADED"

    .line 673
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_156

    .line 674
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " SIM Card State : LOADED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$msaveSimState(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "PreviousSimSerialNumber"

    .line 681
    invoke-static {p1, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CurrentSimSerialNumber"

    .line 682
    invoke-static {p2, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_113

    .line 684
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_113

    const-string p1, "2"

    .line 685
    invoke-static {v5, p1, v6}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_118

    :cond_113
    const-string p1, "3"

    .line 688
    invoke-static {v5, p1, v6}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 692
    :goto_118
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object p2, p2, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object p2

    .line 693
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 695
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetmCtxt(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_13a} :catch_13b

    goto :goto_156

    :catch_13b
    move-exception p1

    .line 699
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIMCardBroadcastReceiver Ex:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_156
    :goto_156
    return-void
.end method
