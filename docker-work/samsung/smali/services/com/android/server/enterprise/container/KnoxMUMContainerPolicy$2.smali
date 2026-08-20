.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;
.super Landroid/os/ContainerStateReceiver;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 907
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 9

    .line 963
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetUserManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 966
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onContainerCreated("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") error, no user-info found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_2b
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerCreated :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v1, "com.sec.knox.containeragent.klms.created.b2b"

    invoke-static {p2, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendIntentBroadcastForContainer(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    .line 973
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mfilterTypeByContainerId(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p2

    .line 974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "knox.container.proxy.EXTRA_FLAG_IS_CUSTOM_CONTAINER"

    if-eqz p2, :cond_8f

    .line 975
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 976
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object p2

    .line 977
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "homeScreenWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "knox.container.proxy.EXTRA_KNOX_HOME_SCREEN_WALLPAPER"

    .line 978
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 979
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_93

    :cond_8f
    const/4 p2, 0x0

    .line 981
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    :goto_93
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 993
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetDarManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/knox/dar/DarManagerService;

    move-result-object p2

    if-eqz p2, :cond_b4

    const/4 p2, 0x0

    const-string v0, "EXTRA_RESET_TOKEN"

    .line 994
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 995
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetDarManagerService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/knox/dar/DarManagerService;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->setResetTokenForLegacyContainer(ILjava/lang/String;)V

    :cond_b4
    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 927
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onDeviceOwnerActivated is called..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :try_start_a
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mgetDevicePolicyService(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 930
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_86

    .line 931
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 932
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    move-result p1

    .line 933
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceOwnerActivated admin relationship result - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_50} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_50} :catch_51

    goto :goto_86

    :catch_51
    move-exception p1

    .line 938
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceOwnerActivated:Exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :catch_6c
    move-exception p1

    .line 936
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceOwnerActivated:NameNotFoundException - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_86
    :goto_86
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 945
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onDeviceOwnerLicenseActivated called..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 948
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$misDualDarLicenseLockedCase(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 951
    :try_start_1b
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p2

    const/4 v0, 0x0

    .line 952
    invoke-virtual {p2, v0, v0, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAdminLockEnabled(IZZ)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_2d
    .catchall {:try_start_1b .. :try_end_27} :catchall_2b

    .line 956
    :goto_27
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3d

    :catchall_2b
    move-exception p2

    goto :goto_39

    :catch_2d
    move-exception p2

    .line 954
    :try_start_2e
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDeviceOwnerLicenseActivated:Exception - "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    goto :goto_27

    .line 956
    :goto_39
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    throw p2

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 910
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onDeviceOwnerLicenseExpired is called..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$misDualDarLicenseLockedCase(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 915
    :try_start_16
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 916
    invoke-virtual {p2, v0, v1, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAdminLockEnabled(IZZ)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_29
    .catchall {:try_start_16 .. :try_end_23} :catchall_27

    .line 920
    :goto_23
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_27
    move-exception p2

    goto :goto_35

    :catch_29
    move-exception p2

    .line 918
    :try_start_2a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDeviceOwnerLicenseExpired:Exception - "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    goto :goto_23

    .line 920
    :goto_35
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    throw p2

    :cond_39
    :goto_39
    return-void
.end method
