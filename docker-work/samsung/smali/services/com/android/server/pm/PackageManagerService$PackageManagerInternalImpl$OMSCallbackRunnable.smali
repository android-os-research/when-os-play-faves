.class public Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OMSCallbackRunnable"
.end annotation


# instance fields
.field public final overlayTarget:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final removed:Z

.field public final samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;IZ)V
    .registers 7

    .line 8476
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8477
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    .line 8478
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    .line 8479
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    .line 8480
    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    .line 8481
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isOverlayRequired(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3

    .line 8486
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 8487
    invoke-static {p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public run()V
    .registers 11

    .line 8493
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8494
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const-string v2, "PackageManager"

    .line 8495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMSCallbackRunnable running for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " overlayTarget = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ParserPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " theme? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_52

    .line 8497
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_54

    :cond_52
    const-string v4, "PS was null"

    :goto_54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8495
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_24a

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_96

    .line 8501
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    .line 8502
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_96

    const-string v3, "com.android.systemui"

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const-string v3, "PackageManager"

    .line 8505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMSCallbackRunnable overriding for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8506
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    .line 8509
    :cond_96
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    if-eqz v3, :cond_1a3

    if-eqz v1, :cond_16e

    .line 8511
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v3

    if-eqz v3, :cond_114

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_114

    .line 8512
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/overlays/currentstyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 8515
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8516
    :try_start_bb
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRemovePackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/RemovePackageHelper;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 8517
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_bb .. :try_end_c8} :catchall_111

    .line 8518
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8519
    :try_start_cf
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    .line 8520
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_10e

    .line 8521
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    if-eqz v0, :cond_249

    .line 8522
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8524
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 8525
    array-length v3, v0

    :goto_f3
    if-ge v2, v3, :cond_249

    aget v4, v0, v2

    .line 8526
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    if-ne v4, v5, :cond_fc

    goto :goto_10b

    .line 8530
    :cond_fc
    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->isOverlayRequired(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 8531
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_10b
    :goto_10b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :catchall_10e
    move-exception p0

    .line 8520
    :try_start_10f
    monitor-exit v0
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw p0

    :catchall_111
    move-exception p0

    .line 8517
    :try_start_112
    monitor-exit v3
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw p0

    .line 8536
    :cond_114
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v3

    if-eqz v3, :cond_12c

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12c

    .line 8537
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13e

    .line 8538
    :cond_12c
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_249

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/overlays/current_locale_apks/files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_249

    .line 8540
    :cond_13e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    if-eqz v3, :cond_249

    .line 8541
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v3, v4, v5, v2, v0}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageChanged(Ljava/lang/String;IZLjava/lang/String;)V

    .line 8542
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 8543
    array-length v4, v3

    move v5, v2

    :goto_155
    if-ge v5, v4, :cond_249

    aget v6, v3, v5

    .line 8544
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    if-ne v6, v7, :cond_15e

    goto :goto_16b

    .line 8548
    :cond_15e
    invoke-virtual {p0, v6, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->isOverlayRequired(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 8549
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v6, v2, v0}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageChanged(Ljava/lang/String;IZLjava/lang/String;)V

    :cond_16b
    :goto_16b
    add-int/lit8 v5, v5, 0x1

    goto :goto_155

    .line 8558
    :cond_16e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    if-nez v0, :cond_249

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    if-eqz v3, :cond_249

    .line 8559
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v3, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8561
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 8562
    array-length v3, v0

    :goto_188
    if-ge v2, v3, :cond_249

    aget v4, v0, v2

    .line 8563
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    if-ne v4, v5, :cond_191

    goto :goto_1a0

    .line 8567
    :cond_191
    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->isOverlayRequired(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 8568
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1a0
    :goto_1a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_188

    .line 8576
    :cond_1a3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    if-eqz v3, :cond_249

    .line 8577
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 8578
    array-length v4, v3

    move v5, v2

    :goto_1b3
    if-ge v5, v4, :cond_22a

    aget v6, v3, v5

    if-nez v6, :cond_1ba

    goto :goto_227

    :cond_1ba
    if-eqz v1, :cond_1fa

    .line 8583
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v7

    if-eqz v7, :cond_1fa

    const-string v7, "com.android.systemui"

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fa

    .line 8584
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_1d8

    .line 8585
    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_1fa

    :cond_1d8
    const-string v7, "PackageManager"

    .line 8587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip to update theme overlay : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_227

    .line 8590
    :cond_1fa
    invoke-virtual {p0, v6, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->isOverlayRequired(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_227

    const-string v7, "PackageManager"

    .line 8591
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMSCallbackRunnable Enabling package at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", UId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8592
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v6, v0}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageAdded(Ljava/lang/String;ILjava/lang/String;)V

    :cond_227
    :goto_227
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b3

    :cond_22a
    const-string v1, "PackageManager"

    .line 8600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMSCallbackRunnable Enabling package at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8601
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->samsungOverlayCallback:Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0}, Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;->onSamsungOverlayPackageAdded(Ljava/lang/String;ILjava/lang/String;)V

    :cond_249
    return-void

    :catchall_24a
    move-exception p0

    .line 8498
    :try_start_24b
    monitor-exit v0
    :try_end_24c
    .catchall {:try_start_24b .. :try_end_24c} :catchall_24a

    throw p0
.end method
