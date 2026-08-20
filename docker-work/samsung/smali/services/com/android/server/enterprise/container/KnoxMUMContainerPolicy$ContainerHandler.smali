.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_LICENSE_STATE_CHANGED:I = 0xb

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_SHOW_KNOX_SECURITY_TOAST:I = 0x8

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 519
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_cc

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    goto/16 :goto_1f4

    .line 593
    :cond_10
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_LICENSE_STATE_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "packageName"

    .line 596
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetUserManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4b
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 601
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 602
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetDevicePolicyService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_70

    :cond_6a
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v2

    :goto_70
    if-eqz v2, :cond_4b

    .line 603
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 604
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle license activation / validation / deactivation for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 606
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.EXTRA_PACKAGE_NAME"

    .line 607
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_KNOX_LICENSE_STATE_CHANGE"

    .line 608
    invoke-static {v1, v2}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4b

    .line 614
    :cond_b0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104068a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 615
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1f4

    .line 526
    :cond_cc
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :try_start_d5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 530
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "knox-b2b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 538
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_106

    .line 539
    :cond_f2
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "knox-b2b-com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 540
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    :goto_106
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminParam()Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle Message: AdminPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 549
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.knox.container.configType"

    .line 552
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz v3, :cond_163

    .line 556
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_137} :catch_1f0

    if-nez v4, :cond_163

    .line 558
    :try_start_139
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 559
    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_145
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_139 .. :try_end_145} :catch_146
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_145} :catch_1f0

    goto :goto_163

    .line 562
    :catch_146
    :try_start_146
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    :goto_163
    if-eqz v0, :cond_18d

    .line 566
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_18d

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.app.extra.PROVISIONING_LOGO_URI"

    .line 569
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_18d
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    const-string v2, "#3D6DCC"

    .line 572
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 571
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "creation_params"

    .line 575
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 578
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1e6

    .line 579
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 580
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createContainer: intent from User:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with requestid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f4

    .line 583
    :cond_1e6
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Device provisioning is not enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_1ef} :catch_1f0

    goto :goto_1f4

    :catch_1f0
    move-exception p0

    .line 587
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f4
    :goto_1f4
    return-void
.end method
