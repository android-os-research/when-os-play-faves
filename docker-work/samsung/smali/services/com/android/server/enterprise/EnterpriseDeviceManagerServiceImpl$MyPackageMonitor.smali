.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 8

    const-string v0, "EnterpriseDeviceManagerService"

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished - packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 530
    :try_start_26
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_32

    .line 542
    :cond_4c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, v4, :cond_32

    const-string p1, "EnterpriseDeviceManagerService"

    const-string v1, "Admin found on map with same package name!"

    .line 544
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_7d
    .catchall {:try_start_26 .. :try_end_7d} :catchall_fa

    goto :goto_7f

    :cond_7e
    move-object p1, v3

    :goto_7f
    if-eqz p1, :cond_f8

    .line 553
    :try_start_81
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object p2
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_8f} :catch_90
    .catchall {:try_start_81 .. :try_end_8f} :catchall_fa

    goto :goto_91

    :catch_90
    move-object p2, v3

    :goto_91
    if-nez p2, :cond_c4

    :try_start_93
    const-string p2, "EnterpriseDeviceManagerService"

    const-string v1, "Removing Admin as component name changed"

    .line 558
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 561
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 562
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 563
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 561
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mremoveActiveAdminDelayed(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/content/ComponentName;I)V

    .line 564
    monitor-exit v0

    return-void

    .line 566
    :cond_c4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_f8
    monitor-exit v0

    return-void

    :catchall_fa
    move-exception p0

    monitor-exit v0
    :try_end_fc
    .catchall {:try_start_93 .. :try_end_fc} :catchall_fa

    throw p0
.end method

.method public onSomePackagesChanged()V
    .registers 12

    .line 467
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 468
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    const-string v2, "EnterpriseDeviceManagerService"

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package has changed for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_2b
    if-ltz v2, :cond_160

    .line 472
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 474
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    move-result v5

    if-nez v5, :cond_15c

    .line 478
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, v1, :cond_4d

    goto/16 :goto_15c

    .line 481
    :cond_4d
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseDeviceManagerService"

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v6, v7, :cond_127

    const/4 v7, 0x2

    if-ne v6, v7, :cond_74

    goto/16 :goto_127

    .line 490
    :cond_74
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v6
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_162

    if-eqz v6, :cond_15c

    :try_start_7a
    const-string v6, "com.sec.knox.containeragent2"

    .line 493
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, "com.samsung.knox.securefolder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    goto :goto_9b

    .line 500
    :cond_8b
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-wide/32 v9, 0xc0000

    invoke-interface {v5, v6, v9, v10, v1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    goto :goto_c8

    .line 494
    :cond_9b
    :goto_9b
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-wide/32 v9, 0xc8080

    invoke-interface {v5, v6, v9, v10, v1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_aa} :catch_ab
    .catchall {:try_start_7a .. :try_end_aa} :catchall_162

    goto :goto_c8

    :catch_ab
    move-exception v5

    :try_start_ac
    const-string v6, "EnterpriseDeviceManagerService"

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSomePackagesChanged EX:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    :goto_c8
    if-nez v5, :cond_100

    const-string v5, "EnterpriseDeviceManagerService"

    .line 511
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin package change removed component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 511
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v3, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 515
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v5, v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mremoveActiveAdminDelayed(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/content/ComponentName;I)V

    goto :goto_15c

    :cond_100
    const-string v6, "EnterpriseDeviceManagerService"

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin package component found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " info:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    :cond_127
    :goto_127
    const-string v5, "EnterpriseDeviceManagerService"

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin unexpectedly uninstalled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v3, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 489
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v5, v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mremoveActiveAdminDelayed(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/content/ComponentName;I)V

    :cond_15c
    :goto_15c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2b

    .line 521
    :cond_160
    monitor-exit v0

    return-void

    :catchall_162
    move-exception p0

    monitor-exit v0
    :try_end_164
    .catchall {:try_start_ac .. :try_end_164} :catchall_162

    throw p0
.end method
