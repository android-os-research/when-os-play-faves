.class Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisionNotificationBroadcastReceiver"
.end annotation


# instance fields
.field private final blacklist mNetworkOperator:Ljava/lang/String;

.field private final blacklist mProvisionUrl:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1500
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1501
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    .line 1502
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    return-void
.end method

.method private blacklist enableMobileProvisioning()V
    .registers 5

    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v1, 0x42025

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1511
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1512
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    const-string v3, "provisioningUrl"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1514
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist setEnableFailFastMobileData(I)V
    .registers 4

    .line 1506
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v0, 0x42024

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "provision.phone.id"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq v0, p2, :cond_12

    return-void

    .line 1525
    :cond_12
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "onReceive : ProvisionNotificationBroadcastReceiver"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1526
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)V

    .line 1527
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p2

    const v0, 0x1040744

    .line 1530
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1528
    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1532
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1534
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 1536
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 1539
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v0, 0x4202a

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmProvisioningSpinner(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1543
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$msetRadio(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 1544
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->setEnableFailFastMobileData(I)V

    .line 1545
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->enableMobileProvisioning()V

    return-void
.end method
