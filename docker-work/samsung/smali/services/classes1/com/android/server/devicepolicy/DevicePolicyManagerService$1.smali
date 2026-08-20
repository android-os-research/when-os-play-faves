.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 998
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    .line 1003
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    .line 1002
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.action.USER_STARTED"

    .line 1010
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    if-nez v0, :cond_32

    .line 1011
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1012
    :try_start_20
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misNetworkLoggingEnabledInternalLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1013
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetNetworkLoggingActiveInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 1015
    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    :goto_32
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1017
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 1018
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v1

    if-ne v0, v1, :cond_4d

    .line 1019
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmBugreportCollectionManager(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/RemoteBugreportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->checkForPendingBugreportAfterBoot()V

    :cond_4d
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1022
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 1023
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1028
    :cond_5d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_69
    const-string v1, "android.intent.action.USER_ADDED"

    .line 1036
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string p1, "android.app.action.USER_ADDED"

    .line 1037
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 1038
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1041
    :try_start_7d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybePauseDeviceWideLoggingLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 1042
    monitor-exit v1

    goto/16 :goto_25f

    :catchall_85
    move-exception p0

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw p0

    :cond_88
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1043
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const-string p1, "android.app.action.USER_REMOVED"

    .line 1044
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 1045
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1047
    :try_start_9c
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misUserAffiliatedWithDeviceLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    .line 1048
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    if-nez p1, :cond_b3

    .line 1052
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mdiscardDeviceWideLogsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 1054
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeResumeDeviceWideLoggingLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 1056
    :cond_b3
    monitor-exit v1

    goto/16 :goto_25f

    :catchall_b6
    move-exception p0

    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_9c .. :try_end_b8} :catchall_b6

    throw p0

    :cond_b9
    const-string v1, "android.intent.action.USER_STARTED"

    .line 1057
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_ea

    const-string p1, "android.app.action.USER_STARTED"

    .line 1058
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 1059
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1060
    :try_start_ce
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 1062
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1063
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_ce .. :try_end_db} :catchall_e7

    .line 1064
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1065
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspensionOnUserStart(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    goto/16 :goto_25f

    :catchall_e7
    move-exception p0

    .line 1063
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :cond_ea
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 1066
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_10e

    const-string p1, "android.app.action.USER_STOPPED"

    .line 1067
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 1068
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misManagedProfile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_25f

    const-string p1, "DevicePolicyManager"

    const-string p2, "Managed profile was stopped"

    .line 1069
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    goto/16 :goto_25f

    :cond_10e
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1072
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string p1, "android.app.action.USER_SWITCHED"

    .line 1073
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_25f

    :cond_11d
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 1074
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1075
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1076
    :try_start_12c
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 1077
    monitor-exit v1
    :try_end_132
    .catchall {:try_start_12c .. :try_end_132} :catchall_14e

    .line 1078
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misManagedProfile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_25f

    const-string p1, "DevicePolicyManager"

    const-string p2, "Managed profile became unlocked"

    .line 1079
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 1081
    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    move-result p1

    .line 1082
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V

    goto/16 :goto_25f

    :catchall_14e
    move-exception p0

    .line 1077
    :try_start_14f
    monitor-exit v1
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw p0

    :cond_151
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1084
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 1085
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_25f

    :cond_160
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1086
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1087
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_25f

    :cond_177
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1088
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    const-string p1, "android.intent.extra.REPLACING"

    .line 1089
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_196

    .line 1090
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_25f

    .line 1092
    :cond_196
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandleNewPackageInstalled(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_25f

    :cond_1a5
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1094
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    const-string v1, "android.intent.extra.REPLACING"

    .line 1095
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1d1

    .line 1096
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1097
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremoveCredentialManagementApp(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    goto/16 :goto_25f

    :cond_1d1
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1098
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e0

    .line 1099
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mclearWipeProfileNotification(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto/16 :goto_25f

    :cond_1e0
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 1100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_247

    const-string p2, "android.intent.action.TIME_SET"

    .line 1101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f1

    goto :goto_247

    :cond_1f1
    const-string p2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    .line 1110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21c

    const-string p1, "DevicePolicyManager"

    const-string p2, "Profile off deadline alarm was triggered"

    .line 1111
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result p1

    if-ltz p1, :cond_214

    .line 1114
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    goto :goto_25f

    :cond_214
    const-string p0, "DevicePolicyManager"

    const-string p1, "Got deadline alarm for nonexistent profile"

    .line 1116
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25f

    :cond_21c
    const-string p2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    .line 1118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25f

    const-string p1, "DevicePolicyManager"

    .line 1119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requesting to turn on the profile: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    goto :goto_25f

    .line 1105
    :cond_247
    :goto_247
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdateSystemUpdateFreezePeriodsRecord(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 1106
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result p1

    if-ltz p1, :cond_25f

    .line 1108
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePersonalAppsSuspension(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)Z

    :cond_25f
    :goto_25f
    return-void
.end method

.method public final sendDeviceOwnerUserCommand(Ljava/lang/String;I)V
    .registers 11

    .line 1125
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1126
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1128
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.USER"

    .line 1129
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1130
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z

    .line 1133
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0
.end method
