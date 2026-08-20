.class public Lcom/android/server/pm/PersonaManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .line 2258
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 2261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 2262
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "PersonaManagerService"

    .line 2264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserReceiver.onReceive() {action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 2266
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_177

    .line 2267
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V

    const-string v0, "android.intent.extra.USER"

    .line 2268
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 2269
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2270
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v3, 0x12

    invoke-static {p1, v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2273
    :cond_5d
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2275
    :try_start_6b
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller_id_to_show_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetanalyticsObserver(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2276
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetcontainerNames(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2277
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "DUAL_DAR_USER_ADDED"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->knoxAnalyticsContainer(ILjava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_af} :catch_b0

    goto :goto_c7

    :catch_b0
    move-exception v1

    const-string v2, "PersonaManagerService"

    .line 2279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DUAL_DAR_USER_ADDED KA failed : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :goto_c7
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onWorkProfileAdded(ILjava/lang/String;)V

    .line 2285
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v1, 0x5f

    if-ge p2, v1, :cond_e7

    .line 2286
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2289
    :cond_e7
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p2

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, p1, :cond_11a

    const-string p1, "PersonaManagerService"

    const-string p2, "App Separation user added. Notify to KSP"

    .line 2290
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 2292
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "type"

    const-string v1, "activate"

    .line 2293
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "status"

    .line 2294
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2295
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mnotifyStatusToKspAgent(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Intent;)V

    .line 2297
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mprocessAppSeparationCreation(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2300
    :cond_11a
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    .line 2301
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p1

    const-string/jumbo p2, "restriction_property_screencapture_save_to_owner"

    invoke-virtual {p1, p2, v4}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z

    .line 2304
    :try_start_12e
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result p1

    .line 2305
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p2

    .line 2306
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1

    .line 2307
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/samsung/android/knox/container/RCPPolicy;->allowMoveFilesToContainer(Z)Z

    .line 2308
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v4, p2}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_161} :catch_162

    goto :goto_166

    :catch_162
    move-exception p1

    .line 2309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2312
    :goto_166
    :try_start_166
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16f} :catch_171

    goto/16 :goto_2dc

    :catch_171
    move-exception p0

    .line 2313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2dc

    :cond_177
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 2315
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 2316
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 2317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2318
    sget-object v2, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xa

    .line 2319
    invoke-static {p1, v1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 2320
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    .line 2321
    :try_start_19f
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2322
    monitor-exit v2
    :try_end_1a9
    .catchall {:try_start_19f .. :try_end_1a9} :catchall_1d9

    .line 2323
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-enter p1

    .line 2324
    :try_start_1b0
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2325
    monitor-exit p1
    :try_end_1ba
    .catchall {:try_start_1b0 .. :try_end_1ba} :catchall_1d6

    .line 2326
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2328
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p2

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onWorkProfileRemoved(I)V

    .line 2330
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_2dc

    :catchall_1d6
    move-exception p0

    .line 2325
    :try_start_1d7
    monitor-exit p1
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_1d6

    throw p0

    :catchall_1d9
    move-exception p0

    .line 2322
    :try_start_1da
    monitor-exit v2
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    throw p0

    :cond_1dc
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 2333
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_227

    .line 2334
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 2335
    :goto_1ef
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_2dc

    .line 2336
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2337
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 2338
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_224

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_224

    .line 2339
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ef

    :cond_227
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 2342
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_273

    .line 2343
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 2344
    :goto_239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_2dc

    .line 2345
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2346
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 2347
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_270

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_270

    .line 2348
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_270
    add-int/lit8 v5, v5, 0x1

    goto :goto_239

    :cond_273
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 2351
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_299

    .line 2353
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2354
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    .line 2355
    :try_start_28b
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2356
    monitor-exit v2

    goto :goto_2dc

    :catchall_296
    move-exception p0

    monitor-exit v2
    :try_end_298
    .catchall {:try_start_28b .. :try_end_298} :catchall_296

    throw p0

    :cond_299
    const-string v2, "android.intent.action.USER_STOPPED"

    .line 2357
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    const/4 p2, 0x2

    .line 2358
    invoke-static {p1, v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2359
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-enter p1

    .line 2360
    :try_start_2ac
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2361
    monitor-exit p1

    goto :goto_2dc

    :catchall_2b7
    move-exception p0

    monitor-exit p1
    :try_end_2b9
    .catchall {:try_start_2ac .. :try_end_2b9} :catchall_2b7

    throw p0

    :cond_2ba
    const-string p1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 2362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2dc

    .line 2363
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2cd

    .line 2364
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2367
    :cond_2cd
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p0

    const-string p1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onDeviceOwnerChanged(Ljava/lang/String;)V

    :cond_2dc
    :goto_2dc
    return-void
.end method
