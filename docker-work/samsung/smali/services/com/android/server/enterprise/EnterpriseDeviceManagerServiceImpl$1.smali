.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EnterpriseDeviceManagerService"

    if-nez p1, :cond_e

    const-string p0, "action is null!"

    .line 604
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 607
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    const/4 p1, -0x1

    const-string v1, "android.intent.extra.user_handle"

    .line 608
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_22

    return-void

    .line 614
    :cond_22
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mcleanGenericTableOnUserRemoved(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 617
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    .line 618
    invoke-interface {v1, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result p1

    if-eqz p1, :cond_40

    move v2, p2

    :cond_40
    if-nez v2, :cond_a3

    const-string p1, "ACTION_USER_REMOVED removing pseudo admin since associated profile is getting removed."

    .line 620
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mremovePseudoAdmin(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    goto :goto_a3

    :cond_4d
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 629
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string/jumbo p1, "networkInfo"

    .line 630
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-nez p1, :cond_67

    const-string/jumbo p0, "networkInfo is null"

    .line 632
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_67
    const-string/jumbo v0, "noConnectivity"

    .line 635
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 636
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_a3

    const-string p1, "com.samsung.android.knox.intent.action.KES_TRIGGER"

    .line 637
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 638
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a3

    :cond_8a
    const-string p2, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 641
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 642
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 643
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    :cond_a3
    :goto_a3
    return-void
.end method
