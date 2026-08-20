.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
.super Lcom/android/server/pm/IPackageManagerBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPackageManagerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$4N63vrAabvDijz_H8mU2aS-JAac(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setRequiredForSystemUser$17(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8HOpCho_3fGcZK9g5k5kcu8Dz7w(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setApplicationCategoryHint$9(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8dbLZaNuGX5LCzRe1Bm6lUR-f2g(ILjava/lang/CharSequence;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setHarmfulAppWarning$11(ILjava/lang/CharSequence;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IGiVWFk8MayHhQ942ZQuANvEdUk(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$extendVerificationTimeout$2(IIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LK5o6We1W2Q9vcHtSrnGno9thYk(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$registerDexModule$7(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nr2RAo-UU3F9sZapJ8MF5yZkRH0(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setUpdateAvailable$19(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgATU35U6cDclTDB3t1_jGfu0ss(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setInstallerPackageName$12(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PNYAfnyi_rUjXFAhrmCQXCSBV5s(ILjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setSplashScreenTheme$18(ILjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SqXeATd7Zva-Vw91ZF9790aINqM(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setInstallerPackageName$13(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8BZE0du_QCcQSsG1lhVLy2KnoY(Lcom/android/server/pm/Computer;IILjava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$queryProperty$6(Lcom/android/server/pm/Computer;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bP3XSF1wdKckhTC3KIB7gG67Gkk(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$movePackage$5(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c170KobYHlNDtk3xDxmhritXDQ4(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$clearApplicationUserData$0(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o0W26gm23KxJvMsS_d9XEh0yzrY(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setApplicationCategoryHint$8(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oW3G8TCGeqZjxlTmUQSTHvz6d-Y(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setInstallerPackageName$14(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pT0SL5ffuYny4RLYHiwDzmebL1I(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$deleteApplicationCacheFilesAsUser$1(Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9_7niTK6OoFTSWtgnx-4-37BnE(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$freeStorage$3(Ljava/lang/String;JILandroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udUpRRZJrwVQxNX0Xzj75Rpg5fw(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setMimeGroup$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxnSceQNEVmwlB3qmxB3puhZlT4(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$freeStorageAndNotify$4(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-Z-j4xNHoQQr_jGM6aH9Giv4gQ(Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setMimeGroup$15(Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yVoZzoCU11fYRBSxsxCHJNsMe-U(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setApplicationHiddenSettingAsUser$10(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5439
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5440
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v15}, Lcom/android/server/pm/IPackageManagerBase;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/ModuleInfoProvider;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/pm/ResolveIntentHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DomainVerificationConnection;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageProperty;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$clearApplicationUserData$0(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 5497
    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    .line 5499
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method private synthetic lambda$deleteApplicationCacheFilesAsUser$1(Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V
    .registers 9

    .line 5651
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5652
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 5656
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_20

    if-nez p3, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move p2, v1

    :goto_21
    if-eqz p2, :cond_4d

    .line 5661
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5664
    :try_start_28
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    .line 5667
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v0

    const/16 v2, 0x17

    invoke-virtual {v0, p3, p4, v2}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 5669
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    const/16 v0, 0x27

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 5671
    monitor-exit p2

    goto :goto_4d

    :catchall_4a
    move-exception p0

    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_4a

    throw p0

    :cond_4d
    :goto_4d
    if-eqz p5, :cond_5a

    .line 5675
    :try_start_4f
    invoke-interface {p5, p1, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_5a

    :catch_53
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    .line 5677
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return-void
.end method

.method private synthetic lambda$extendVerificationTimeout$2(IIIJ)V
    .registers 12

    .line 5726
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageVerificationState;

    .line 5727
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    const-wide/32 v2, 0x36ee80

    cmp-long p2, p4, v2

    if-lez p2, :cond_17

    goto :goto_18

    :cond_17
    move-wide v2, p4

    :goto_18
    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gez p2, :cond_1f

    move-wide v2, v4

    :cond_1f
    if-eqz v0, :cond_45

    .line 5739
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result p2

    if-nez p2, :cond_45

    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageVerificationState;->isSamsungVerifier(I)Z

    move-result p2

    if-nez p2, :cond_45

    .line 5740
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->extendTimeout()V

    .line 5742
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {p2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 5743
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 5744
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5745
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_45
    if-eqz v0, :cond_73

    .line 5748
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageVerificationState;->isSamsungVerifier(I)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 5749
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->extendTimeoutForSamsung()V

    .line 5750
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->getSamsungVerificationResponseAtTimeout()Lcom/android/server/pm/PackageVerificationResponse;

    move-result-object p3

    const/16 v2, 0x32

    invoke-virtual {p2, v2, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5751
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageVerificationState;->setSamsungVerificationResponseAtTimeout(Lcom/android/server/pm/PackageVerificationResponse;)V

    .line 5753
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 5754
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 5755
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5756
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_73
    return-void
.end method

.method private synthetic lambda$freeStorage$3(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 18

    const-string v1, "PackageManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 5791
    :try_start_5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-virtual {v0, p1, p2, p3, v7}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_10

    move v0, v2

    goto :goto_15

    :catch_10
    move-exception v0

    .line 5794
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_15
    if-eqz p5, :cond_36

    .line 5798
    :try_start_17
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v4

    .line 5799
    invoke-virtual {v4, v3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const/4 v5, 0x0

    if-eqz v0, :cond_23

    move v6, v2

    goto :goto_24

    :cond_23
    move v6, v3

    :goto_24
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5802
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v4, p5

    .line 5800
    invoke-virtual/range {v4 .. v11}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_31
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v0

    .line 5804
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method

.method private synthetic lambda$freeStorageAndNotify$4(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 7

    const-string v0, "PackageManager"

    .line 5823
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    goto :goto_e

    :catch_9
    move-exception p0

    .line 5826
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_e
    if-eqz p5, :cond_41

    .line 5831
    :try_start_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "result of freeStorageAndNotify: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5832
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5831
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5834
    invoke-interface {p5, p1, p0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 5836
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    :goto_41
    return-void
.end method

.method private synthetic lambda$movePackage$5(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 12

    .line 6225
    :try_start_0
    new-instance v0, Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/MovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6227
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_30

    :catch_10
    move-exception p2

    .line 6230
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to move "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "PackageManager"

    invoke-static {p4, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6231
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p1, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    :goto_30
    return-void
.end method

.method public static synthetic lambda$queryProperty$6(Lcom/android/server/pm/Computer;IILjava/lang/String;)Z
    .registers 4

    .line 6352
    invoke-interface {p0, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    .line 6353
    invoke-interface {p0, p3, p1, p2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$registerDexModule$7(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V
    .registers 4

    .line 6397
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->success:Z

    iget-object p2, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->message:Ljava/lang/String;

    invoke-interface {p0, p1, v0, p2}, Landroid/content/pm/IDexModuleRegisterCallback;->onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    .line 6400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to callback after module registration "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public static synthetic lambda$setApplicationCategoryHint$8(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 6479
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method private synthetic lambda$setApplicationCategoryHint$9(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p5, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_81

    .line 6462
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 6466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 6465
    invoke-interface {p5, p2, v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p5

    if-eqz p5, :cond_6a

    .line 6472
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 6471
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6477
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p1

    if-eq p1, p3, :cond_49

    .line 6478
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p4, p2, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0

    :cond_49
    const/4 p0, 0x0

    return-object p0

    .line 6473
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Calling package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installer for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6468
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown target package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6459
    :cond_81
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$setApplicationHiddenSettingAsUser$10(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    .line 6614
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic lambda$setHarmfulAppWarning$11(ILjava/lang/CharSequence;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    .line 6716
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 6717
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method private synthetic lambda$setInstallerPackageName$12(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 6747
    invoke-interface {p5, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6748
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 6752
    :cond_9
    invoke-interface {p5, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 6754
    invoke-interface {p5, v0, p1, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_13f

    const/4 p2, 0x0

    if-eqz p4, :cond_3c

    .line 6761
    invoke-interface {p5, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 6763
    invoke-interface {p5, v1, p1, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_25

    goto :goto_3d

    .line 6765
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown installer package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    move-object v1, p2

    .line 6771
    :goto_3d
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    .line 6773
    invoke-interface {p5, p3}, Lcom/android/server/pm/Computer;->getPackageOrSharedUser(I)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_128

    .line 6775
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_56

    .line 6776
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p3

    goto :goto_62

    .line 6778
    :cond_56
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/SharedUserApi;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p3

    :goto_62
    if-eqz v1, :cond_8a

    .line 6788
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 6787
    invoke-static {p3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-nez v1, :cond_73

    goto :goto_8a

    .line 6790
    :cond_73
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller does not have same cert as new installer package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6799
    :cond_8a
    :goto_8a
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-nez p4, :cond_93

    goto :goto_97

    .line 6801
    :cond_93
    invoke-interface {p5, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    :goto_97
    if-eqz p2, :cond_c0

    .line 6805
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 6804
    invoke-static {p3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-nez p0, :cond_a9

    goto/16 :goto_125

    .line 6807
    :cond_a9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller does not have same cert as old installer package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6811
    :cond_c0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_125

    const p2, 0x534e4554

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    const-string v0, "150857253"

    aput-object v0, p4, p5

    const/4 p5, 0x1

    .line 6816
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x2

    const-string v0, ""

    aput-object v0, p4, p5

    invoke-static {p2, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 6820
    :try_start_ea
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object p0

    const-wide/32 v0, 0x8fde625

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    if-nez p0, :cond_101

    .line 6828
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_120

    .line 6831
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 6823
    :cond_101
    :try_start_101
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Neither user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_120
    .catchall {:try_start_101 .. :try_end_120} :catchall_120

    :catchall_120
    move-exception p0

    .line 6831
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6832
    throw p0

    .line 6835
    :cond_125
    :goto_125
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6781
    :cond_128
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown calling UID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6756
    :cond_13f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown target package: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$setInstallerPackageName$13(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 6845
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic lambda$setInstallerPackageName$14(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 6851
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic lambda$setMimeGroup$15(Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    .line 6924
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method private synthetic lambda$setMimeGroup$16(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6928
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setRequiredForSystemUser$17(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 6965
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic lambda$setSplashScreenTheme$18(ILjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3

    .line 7000
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic lambda$setUpdateAvailable$19(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 7007
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method


# virtual methods
.method public applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 3

    .line 7408
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    move-result p0

    return p0
.end method

.method public applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 7413
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0
.end method

.method public cancelEMPHandlerSendPendingBroadcast()V
    .registers 1

    .line 7624
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler;->cancelEMPHandlerSendPendingBroadcast()V

    return-void
.end method

.method public changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 7724
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmMonetizationUtils(Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkASKSTarget(I)[Ljava/lang/String;
    .registers 3

    .line 7675
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 7676
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IASKSManager;->checkASKSTarget(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "AASA_PackageManager"

    const-string p1, "ASKSManager is null"

    .line 7678
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p0

    .line 7680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkDeletableListForASKS()V
    .registers 3

    .line 7634
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 7635
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/IASKSManager;->checkDeletableListForASKS()V

    goto :goto_31

    :cond_e
    const-string p0, "AASA_PackageManager"

    const-string v0, "ASKSManager is null"

    .line 7637
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_31

    :catch_16
    move-exception p0

    .line 7639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public checkPackageStartable(Ljava/lang/String;I)V
    .registers 4

    .line 5464
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5465
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method public clearApplicationProfileData(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Only the system can clear all profile data"

    .line 5470
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5473
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5474
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 5475
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "clearApplicationProfileData"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p1

    .line 5476
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2f

    .line 5477
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5478
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2c

    if-eqz p1, :cond_2b

    .line 5479
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 5478
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    if-eqz p1, :cond_3a

    .line 5475
    :try_start_32
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .registers 13

    .line 5485
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5489
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "clear application data"

    move-object v3, v1

    move v4, v0

    move v5, p3

    .line 5490
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5493
    invoke-interface {v1, p1, v0, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_33

    if-eqz p2, :cond_32

    .line 5495
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;

    invoke-direct {p3, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;-><init>(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void

    .line 5505
    :cond_33
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START CLEAR APPLICATION USER DATA: observer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_52

    .line 5511
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_55

    :cond_52
    const-string/jumbo v1, "null"

    :goto_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\npkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\nuser{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 5510
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5506
    :cond_86
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot clear data for a protected package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .registers 8

    .line 5567
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5570
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5571
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 5572
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_debugging_features"

    invoke-static {v1, v2, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 5574
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5575
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5576
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    .line 5577
    new-instance v2, Landroid/util/ArraySet;

    .line 5578
    invoke-virtual {v1}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5579
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 5580
    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentFilter;->getOwnerPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 5581
    invoke-virtual {v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_41

    .line 5584
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_62

    .line 5585
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    :catchall_62
    move-exception p0

    .line 5584
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V
    .registers 10

    .line 7439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 7442
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearPackagePreferredActivitiesAsUserForMDM can only be called by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7445
    :cond_13
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7446
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    const-wide/16 v3, 0x64

    .line 7449
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_63

    .line 7450
    :try_start_23
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 7451
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_3a

    .line 7452
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 7453
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 7455
    :cond_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_60

    .line 7457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    cmp-long p2, p0, v3

    if-lez p2, :cond_5f

    const-string p2, "PackageManager"

    .line 7459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPackagePreferredActivitiesAsUserForMDM - Execution time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void

    :catchall_60
    move-exception p0

    .line 7455
    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 7457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    cmp-long v0, p1, v3

    if-lez v0, :cond_88

    const-string v0, "PackageManager"

    .line 7459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPackagePreferredActivitiesAsUserForMDM - Execution time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7462
    :cond_88
    throw p0
.end method

.method public createEncAppData(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4

    .line 5591
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5592
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 13

    .line 5598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5599
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_DELETE_CACHE_FILES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v7, "PackageManager"

    if-eqz v0, :cond_48

    .line 5603
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_CACHE_FILES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 5606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", silently ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5611
    :cond_40
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5614
    :cond_48
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "delete application cache files"

    move v1, v6

    move v2, p2

    .line 5615
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5617
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const-string v0, "application_policy"

    .line 5623
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5622
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_b4

    const/4 v1, 0x1

    .line 5626
    :try_start_6e
    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 5627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache cannot be cleared for this app due to EDM policy. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_88} :catch_b4

    if-eqz p3, :cond_b3

    .line 5632
    :try_start_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result of delete cache files: completed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5633
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5632
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5635
    invoke-interface {p3, p1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_ad} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ad} :catch_b4

    goto :goto_b3

    :catch_ae
    :try_start_ae
    const-string v0, "Observer no longer exists."

    .line 5637
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b3} :catch_b4

    :cond_b3
    :goto_b3
    return-void

    .line 5648
    :catch_b4
    :cond_b4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 7077
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "PackageManager"

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_13

    return-void

    .line 7079
    :cond_13
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_2d

    .line 7080
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v3

    if-eqz v3, :cond_2d

    array-length v3, v2

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isBaiduCarlifePkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 7081
    :cond_29
    invoke-static/range {p2 .. p2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printCarlifePkgInfo(Ljava/io/PrintWriter;)V

    return-void

    .line 7086
    :cond_2d
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 7087
    new-instance v22, Lcom/android/server/pm/KnownPackages;

    move-object/from16 v4, v22

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v5

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v10, v15, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object v11, v15, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iget-object v12, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iget-object v13, v15, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    iget-object v14, v15, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object v2, v15

    move-object v15, v1

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v16, v1

    const-string v17, "com.android.companiondevicemanager"

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    move-object/from16 v21, v1

    invoke-direct/range {v4 .. v21}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7108
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 7109
    :try_start_75
    new-instance v13, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 7110
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_d6

    .line 7112
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v2

    .line 7113
    :try_start_86
    new-instance v14, Landroid/util/ArraySet;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-direct {v14, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 7114
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_d3

    .line 7115
    new-instance v1, Lcom/android/server/pm/DumpHelper;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 7118
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v15

    move-object v4, v1

    move-object/from16 v11, v22

    invoke-direct/range {v4 .. v15}, Lcom/android/server/pm/DumpHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;)V

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 7119
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/pm/DumpHelper;->doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7121
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v1, :cond_c6

    .line 7122
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmMonetizationUtils(Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->dumpMonetizationBadgeState(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7126
    :cond_c6
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7129
    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->dumpHeimdAllFS(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_d3
    move-exception v0

    .line 7114
    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0

    :catchall_d6
    move-exception v0

    .line 7110
    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v0
.end method

.method public final dumpHeimdAllFS(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 7135
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7136
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    move v3, v2

    .line 7139
    :cond_6
    array-length v4, p2

    if-ge v3, v4, :cond_27

    .line 7140
    aget-object v4, p2, v3

    if-eqz v4, :cond_27

    .line 7141
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1c

    goto :goto_27

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    const-string v5, "--proto"

    .line 7144
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 7149
    :goto_28
    array-length v4, p2

    if-ge v3, v4, :cond_51

    .line 7150
    aget-object v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    const-string v5, "android"

    .line 7152
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_4f

    :cond_40
    const-string/jumbo v5, "heimdallfs"

    .line 7154
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 7155
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_28

    .line 7157
    :cond_4c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28

    :cond_4f
    :goto_4f
    move-object v2, v4

    goto :goto_28

    .line 7161
    :cond_51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_60

    .line 7162
    :cond_5d
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->dumpHeimdAllFSState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public final dumpHeimdAllFSState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7168
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 7169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7172
    new-instance v4, Lcom/android/server/HeimdAllFsService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/HeimdAllFsService;-><init>(Landroid/content/Context;)V

    .line 7173
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 7175
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    const/4 v7, 0x0

    if-eqz v1, :cond_3a

    .line 7178
    :try_start_28
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7179
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_37} :catch_38
    .catchall {:try_start_28 .. :try_end_37} :catchall_1bf

    goto :goto_46

    .line 7181
    :catch_38
    :try_start_38
    monitor-exit v6

    return-void

    .line 7185
    :cond_3a
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    :goto_46
    if-eqz v3, :cond_1a9

    .line 7187
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_1a9

    .line 7192
    :cond_50
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "HeimdAllFS state:"

    .line 7193
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7194
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7196
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->isServiceActivate()Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "HeimdAllFS does not supported."

    .line 7197
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7198
    monitor-exit v6

    return-void

    .line 7201
    :cond_68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 7203
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 7205
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v10, "/data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8a

    goto :goto_71

    .line 7210
    :cond_8a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 7211
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7214
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 7215
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ac

    .line 7216
    array-length v11, v10

    move v12, v7

    :goto_a2
    if-ge v12, v11, :cond_ac

    aget-object v13, v10, v12

    .line 7217
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_a2

    .line 7220
    :cond_ac
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7221
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 7223
    :cond_b2
    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_38 .. :try_end_b3} :catchall_1bf

    const/4 v3, 0x2

    new-array v3, v3, [J

    .line 7225
    fill-array-data v3, :array_1c2

    .line 7226
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    int-to-long v8, v6

    const-wide/16 v10, 0x0

    .line 7228
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_12b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 7229
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 7230
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v16, v8

    int-to-long v7, v15

    add-long/2addr v10, v7

    .line 7232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7233
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7235
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_103
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_124

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7236
    invoke-virtual {v4, v2, v8}, Lcom/android/server/HeimdAllFsService;->dumpPackageState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)[J

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v14, v3, v9

    .line 7237
    aget-wide v18, v8, v9

    add-long v14, v14, v18

    aput-wide v14, v3, v9

    aget-wide v14, v3, v13

    .line 7238
    aget-wide v8, v8, v13

    add-long/2addr v14, v8

    aput-wide v14, v3, v13

    goto :goto_103

    .line 7241
    :cond_124
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-wide/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_c8

    :cond_12b
    move-wide/from16 v16, v8

    const-string v4, "[ Summary ]"

    .line 7245
    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7246
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# of packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / # of packages in DATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compressed apks info - sum of orig size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-wide v4, v3, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / sum of compr size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v3, v13

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7252
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    .line 7188
    :cond_1a9
    :goto_1a9
    :try_start_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7189
    monitor-exit v6

    return-void

    :catchall_1bf
    move-exception v0

    .line 7223
    monitor-exit v6
    :try_end_1c1
    .catchall {:try_start_1a9 .. :try_end_1c1} :catchall_1bf

    throw v0

    :array_1c2
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public dumpProfiles(Ljava/lang/String;Z)V
    .registers 7

    .line 5686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5687
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5688
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_23

    if-eqz v0, :cond_23

    .line 5691
    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 5692
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "dumpProfiles"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5695
    :cond_23
    :goto_23
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 5700
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    const-string p1, "dump profiles"

    const-wide/32 v2, 0x40000

    .line 5701
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5702
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 5703
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5704
    monitor-exit v1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw p0

    .line 5697
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterSafeMode()V
    .registers 2

    const-string v0, "Only the system can request entering safe mode"

    .line 5709
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5712
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5713
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V

    :cond_13
    return-void
.end method

.method public extendVerificationTimeout(IIJ)V
    .registers 15

    .line 5720
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can extend verification timeouts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5725
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .registers 9

    .line 5766
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5768
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    .line 5771
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "flushPackageRestrictions"

    move v3, p1

    .line 5774
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5777
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5778
    :try_start_29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 5779
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 15

    .line 5786
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const-string v2, "PackageManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5788
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/IntentSender;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 15

    .line 5813
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START FREE STORAGE AND NOTIFY: observer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1f

    .line 5817
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_22

    :cond_1f
    const-string/jumbo v1, "null"

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\nfreeStorageSize{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 5816
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5820
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .registers 11

    .line 5844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5845
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 5846
    invoke-interface {v7, v6}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    .line 5849
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getChangedPackages"

    move-object v0, v7

    move v1, v6

    move v2, p2

    .line 5852
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5854
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 5858
    invoke-virtual {p0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object p1

    .line 5859
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3b
    if-ltz v0, :cond_53

    .line 5862
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5863
    invoke-interface {v7, v1, v6, p2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5864
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    :cond_53
    return-object p0
.end method

.method public getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    .line 7310
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 7313
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v8, 0x0

    .line 7315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get application info"

    move-object v2, v0

    move v4, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    if-eqz p1, :cond_68

    if-eqz p2, :cond_68

    if-eqz p3, :cond_68

    const-string v2, "."

    .line 7319
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 7320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7324
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7325
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 7326
    :try_start_46
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 7327
    invoke-interface {v0, v4, v2, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p4

    if-eqz p4, :cond_56

    .line 7328
    monitor-exit v3

    return v1

    .line 7330
    :cond_56
    new-instance p4, Landroid/content/ComponentName;

    invoke-direct {p4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7331
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-static {p0, p4}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getMetaDataByComponentName(Lcom/android/server/pm/resolution/ComponentResolver;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v8

    .line 7333
    monitor-exit v3

    goto :goto_68

    :catchall_65
    move-exception p0

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_65

    throw p0

    :cond_68
    :goto_68
    if-eqz v8, :cond_6f

    .line 7336
    invoke-virtual {v8, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6f
    return v1
.end method

.method public getDomainVerificationBackup(I)[B
    .registers 6

    .line 5874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_31

    .line 5879
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_2f

    .line 5880
    :try_start_d
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 5881
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v3, 0x1

    invoke-interface {v2, p0, v1, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlSerializer;ZI)V

    .line 5883
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_25

    .line 5884
    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_2f

    return-object p0

    :catchall_25
    move-exception p0

    .line 5879
    :try_start_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    const/4 p0, 0x0

    return-object p0

    .line 5875
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getDomainVerificationBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageManager"

    const-string v1, "getGrantedPermissionsForMDM"

    .line 7467
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    const-string p0, "PackageManager"

    const-string p1, "getGrantedPermissionsForMDM: Caller is not SYSTEM_PROCESS"

    .line 7470
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 7474
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7475
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7476
    :try_start_25
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez p0, :cond_33

    .line 7477
    monitor-exit v1

    return-object v2

    .line 7478
    :cond_33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 7480
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p1

    .line 7481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    .line 7484
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v3

    .line 7487
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/16 v4, 0x16

    if-le p0, v4, :cond_58

    const/4 p0, 0x0

    .line 7490
    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v2

    :cond_58
    if-eqz v3, :cond_81

    .line 7494
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p0

    if-lez p0, :cond_81

    .line 7495
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_64
    :goto_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    if-nez p1, :cond_73

    goto :goto_64

    .line 7499
    :cond_73
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 7500
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_81
    const-string p0, "PackageManager"

    const-string p1, "getGrantedPermissionsForMDM : installPermissions is null"

    .line 7504
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    if-eqz v2, :cond_b1

    .line 7507
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p0

    if-lez p0, :cond_b1

    .line 7508
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_94
    :goto_94
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    if-nez p1, :cond_a3

    goto :goto_94

    .line 7512
    :cond_a3
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 7513
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_b1
    const-string p0, "PackageManager"

    const-string p1, "getGrantedPermissionsForMDM : runtimePermissions is null"

    .line 7517
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7521
    :cond_b8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object p0

    .line 7525
    :cond_bf
    monitor-exit v1

    return-object v2

    :catchall_c1
    move-exception p0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_25 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public getHoldLockToken()Landroid/os/IBinder;
    .registers 4

    .line 5895
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2e

    .line 5899
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    const-string v2, "getHoldLockToken requires INJECT_EVENTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5903
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 5904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "holdLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-object v0

    .line 5896
    :cond_2e
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getHoldLockToken requires a debuggable build"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 5910
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    const-string v2, "getInstantAppAndroidId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5912
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppAndroidId"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5917
    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 p0, 0x0

    return-object p0

    .line 5920
    :cond_26
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstantAppCookie(Ljava/lang/String;I)[B
    .registers 10

    .line 5929
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppCookie"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return-object v2

    .line 5936
    :cond_1f
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 5937
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_39

    .line 5940
    :cond_2c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    return-object v2
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 10

    .line 5949
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {v1, v0, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5951
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getInstantAppIcon"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5954
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppIcon"

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5958
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 5967
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5968
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 5969
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getEphemeralApplications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5972
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getEphemeralApplications"

    move-object v1, v0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5976
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 5978
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    .line 5985
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5992
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ResolveIntentHelper;->getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 7271
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 7274
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get application info"

    move-object v2, v0

    move v4, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    .line 7278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7279
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 7280
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 7281
    invoke-interface {v0, v4, v2, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 7282
    monitor-exit v3

    return v1

    .line 7284
    :cond_3c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez p0, :cond_4a

    .line 7286
    monitor-exit v3

    return v1

    .line 7288
    :cond_4a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_52

    .line 7290
    monitor-exit v3

    return v1

    .line 7292
    :cond_52
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "com.samsung.android.icon_container.feature_appicon"

    .line 7293
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 7296
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\\|"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 7297
    :goto_68
    array-length p2, p0

    if-ge v1, p2, :cond_77

    .line 7298
    aget-object p2, p0, v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 7301
    :cond_77
    monitor-exit v3

    return p1

    :catchall_79
    move-exception p0

    .line 7302
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_2c .. :try_end_7b} :catchall_79

    throw p0

    :cond_7c
    return v1
.end method

.method public getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5998
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5999
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6000
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMoveStatus(I)I
    .registers 5

    .line 6005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6007
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7434
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7539
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .registers 5

    .line 6012
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6013
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6014
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 6015
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6014
    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6016
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    return-object p0

    .line 6019
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PermissionController is not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProgressionOfPackageChanged()I
    .registers 1

    .line 7619
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getProgressionOfPackageChanged()I

    move-result p0

    return p0
.end method

.method public getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7401
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_17

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 7403
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7401
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public getRuntimePermissionsVersion(I)I
    .registers 4

    .line 6025
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6026
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "getRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 6028
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDefaultRuntimePermissionsVersion(I)I

    move-result p0

    return p0
.end method

.method public getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 6033
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6034
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6034
    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_1c

    .line 6037
    :cond_14
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object p0

    :goto_1c
    return-object p0
.end method

.method public getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7

    .line 6042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6043
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 6044
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v0, :cond_1b

    .line 6048
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    .line 6049
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 6045
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 6056
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 6057
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6058
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6059
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_3e

    .line 6060
    new-instance p0, Landroid/content/pm/FeatureInfo;

    invoke-direct {p0}, Landroid/content/pm/FeatureInfo;-><init>()V

    const-string/jumbo v0, "ro.opengles.version"

    const/4 v2, 0x0

    .line 6061
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 6063
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6065
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_3e
    move-exception p0

    .line 6059
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getUNvalueForASKS()Ljava/lang/String;
    .registers 3

    .line 7660
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 7661
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/IASKSManager;->getUNvalueForASKS()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "AASA_PackageManager"

    const-string v0, "ASKSManager is null"

    .line 7663
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p0

    .line 7665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnknownSourcePackagesAsUser(JI)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 7692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7693
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmUnknownSourceAppManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UnknownSourceAppManager;

    move-result-object v1

    if-nez v1, :cond_13

    .line 7694
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 7696
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 7697
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 7698
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmUnknownSourceAppManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UnknownSourceAppManager;

    move-result-object p3

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/android/server/pm/UnknownSourceAppManager;->isUnknownSourcePackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 7699
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 7702
    :cond_43
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "packageNames cannot be null"

    .line 6070
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6071
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUSPEND_APPS"

    const-string/jumbo v2, "getUnsuspendablePackagesForUser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6073
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6074
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_2d

    .line 6078
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6075
    :cond_2d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query getUnsuspendablePackagesForUser for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6084
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can read the verifier device identity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6089
    :try_start_10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/pm/Settings;->getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 6090
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .registers 4

    .line 6130
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/TestUtilityService;->verifyHoldLockToken(Landroid/os/IBinder;)V

    .line 6132
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p0

    int-to-long p1, p2

    .line 6133
    :try_start_f
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 6134
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p1
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 6143
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    move-result p0

    return p0
.end method

.method public isAppLockEnabled()Z
    .registers 1

    .line 5458
    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 4

    .line 6149
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 6151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x61

    .line 6149
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public isHiddenBySprotect(Ljava/lang/String;)Z
    .registers 2

    .line 5450
    invoke-static {p1}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLockedBySprotect(Ljava/lang/String;)Z
    .registers 2

    .line 5454
    invoke-static {p1}, Lcom/android/server/pm/SProtect;->isLockedBySprotect(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageAutoDisabled(Ljava/lang/String;I)Z
    .registers 6

    .line 7345
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 7349
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7350
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_33

    .line 7353
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_33

    const-string p1, "auto_disabler"

    .line 7354
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    move v0, p0

    .line 7356
    :cond_33
    monitor-exit v1

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return v0
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 12

    .line 6157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6158
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 6160
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "isPackageStateProtected"

    move-object v0, v8

    move v1, v6

    move v2, p2

    .line 6161
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_30

    if-eqz v7, :cond_30

    const-string v0, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 6165
    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_30

    .line 6167
    :cond_28
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.MANAGE_DEVICE_ADMINS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6171
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_24

    const-string v0, "android.net.netmon.lingerExpired"

    .line 6178
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.android.server.sip.SipWakeupTimer"

    .line 6179
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.android.internal.telephony.data-reconnect"

    .line 6180
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    .line 6181
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    .line 6186
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v0

    .line 6187
    :try_start_29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 6188
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public isUnknownSourcePackage(Ljava/lang/String;)Z
    .registers 4

    .line 7707
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmUnknownSourceAppManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UnknownSourceAppManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 7710
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmUnknownSourceAppManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UnknownSourceAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UnknownSourceAppManager;->isUnknownSourcePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 7714
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7715
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 7716
    monitor-exit v0

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 6198
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    .line 6202
    :cond_11
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 6205
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 6206
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p6

    .line 6205
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ProcessLoggingHandler;->logAppProcessStart(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public makeProviderVisible(ILjava/lang/String;)V
    .registers 12

    .line 6095
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6098
    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/Computer;->getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-nez p2, :cond_11

    return-void

    .line 6102
    :cond_11
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6103
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    .line 6104
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6103
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public makeUidVisible(II)V
    .registers 15

    .line 6110
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MAKE_UID_VISIBLE"

    const-string/jumbo v2, "makeUidVisible"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6113
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 6114
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 6115
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "makeUidVisible"

    move-object v3, v11

    move v4, v0

    move v5, v9

    .line 6116
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-string/jumbo v8, "makeUidVisible"

    move v5, v10

    .line 6118
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "makeUidVisible"

    move-object v1, v11

    move v2, p1

    move v3, v10

    .line 6120
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6123
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6124
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    move v3, v9

    move v6, p2

    .line 6123
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 6212
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOVE_PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START MOVE PACKAGE: pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\nvolumeUuid{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 6221
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 6222
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 6223
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .registers 5

    .line 6240
    new-instance v0, Lcom/android/server/pm/MovePackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/MovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 6242
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/MovePackageHelper;->movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I

    move-result p0

    return p0
.end method

.method public movePrimaryStorage(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6249
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOVE_PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6251
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 6252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.os.storage.extra.FS_UUID"

    .line 6253
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6254
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 6256
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V

    .line 6268
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 6269
    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    return v0
.end method

.method public notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android"

    .line 6278
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackageManager"

    if-eqz v1, :cond_27

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_27

    .line 6280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Non System Server process reporting dex loads as system server. uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6294
    :cond_27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 6295
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-interface {v1, p1, v3, v4, v7}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_54

    .line 6298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading a package that does not exist for the calling user. package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6302
    :cond_54
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    .line 6303
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v8

    move-object v5, p2

    move-object v6, p3

    .line 6302
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V

    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 7

    .line 6308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6309
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6310
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6312
    invoke-interface {v2, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 6313
    invoke-interface {v2, p1, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_21

    :cond_19
    const/16 v0, 0x3e8

    .line 6315
    invoke-interface {v2, p1, v1, v0}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_21
    if-nez v0, :cond_24

    return-void

    .line 6322
    :cond_24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .registers 6

    .line 7044
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7045
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 7046
    :goto_c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 7047
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 7069
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 7070
    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;-><init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 7071
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7055
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 7057
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_19

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_19

    instance-of p1, p0, Landroid/os/ParcelableException;

    if-nez p1, :cond_19

    const-string p1, "PackageManager"

    const-string p2, "Package Manager Unexpected Exception"

    .line 7059
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7061
    :cond_19
    throw p0
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 6

    .line 6328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 6331
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void

    .line 6329
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Override label should be a valid String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performDexOptForADCP(Ljava/lang/String;Z)I
    .registers 3

    .line 6338
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/DexOptHelper;->performDexOptForADCP(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 6345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 6348
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6349
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object p0

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/Computer;II)V

    .line 6350
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/PackageProperty;->queryProperty(Ljava/lang/String;ILjava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_27

    .line 6356
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 6358
    :cond_27
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 5

    .line 6368
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    return-void

    .line 6372
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    .line 6371
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 6375
    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    return-void
.end method

.method public registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .registers 9

    .line 6382
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 6383
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_37

    .line 6386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering a dex module for a package that does not exist for the calling user. package="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6389
    new-instance p1, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 p3, 0x0

    const-string v0, "Package not installed"

    invoke-direct {p1, p3, v0}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    goto :goto_41

    .line 6391
    :cond_37
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/android/server/pm/dex/DexManager;->registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    move-result-object p1

    :goto_41
    if-eqz p4, :cond_4f

    .line 6395
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;

    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;-><init>(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    return-void
.end method

.method public registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5

    .line 6409
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->register(Landroid/content/pm/IPackageMoveObserver;)V

    return-void
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public removeEncUserDir(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .registers 19

    move-object v0, p0

    .line 7037
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 7039
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v10

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 7037
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-void
.end method

.method public restoreDomainVerification([BI)V
    .registers 4

    .line 6416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_20

    .line 6421
    :try_start_8
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6422
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 6426
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->restoreSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V

    .line 6427
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void

    .line 6417
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restorePreferredActivities()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .registers 4

    .line 6437
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public semGetSystemFeatureLevel(Ljava/lang/String;)I
    .registers 3

    .line 7259
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 7260
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/FeatureInfo;

    if-eqz p0, :cond_19

    .line 7262
    iget p0, p0, Landroid/content/pm/FeatureInfo;->version:I

    monitor-exit v0

    return p0

    :cond_19
    const/4 p0, 0x0

    .line 7264
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 7265
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 7364
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_21

    .line 7365
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsPermissionRevokedByUserFixed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7370
    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/IPackageManagerBase;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    return v1

    .line 7374
    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7375
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 7377
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 7380
    invoke-interface {v2, v3, v0, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_66

    .line 7384
    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7386
    :try_start_44
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    .line 7387
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    .line 7389
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 7388
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_61

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5d

    const/4 v1, 0x1

    .line 7392
    :cond_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_61
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7393
    throw p0

    :cond_66
    :goto_66
    return v1
.end method

.method public sendDeviceCustomizationReadyBroadcast()V
    .registers 3

    .line 6442
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SEND_DEVICE_CUSTOMIZATION_READY"

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6447
    :try_start_10
    invoke-static {}, Lcom/android/server/pm/BroadcastHelper;->sendDeviceCustomizationReadyBroadcast()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 6449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6450
    throw p0
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 6457
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6485
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6486
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eqz p1, :cond_43

    .line 6487
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result p2

    if-nez p2, :cond_43

    .line 6490
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2

    monitor-enter p2

    .line 6491
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6492
    monitor-exit p2

    goto :goto_43

    :catchall_40
    move-exception p0

    monitor-exit p2
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_40

    throw p0

    :cond_43
    :goto_43
    if-eqz p1, :cond_50

    .line 6495
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 6496
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_50
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 12

    .line 6503
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-nez p5, :cond_15

    .line 6505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    :cond_15
    const-string v0, "auto_disabler"

    .line 6512
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_59

    const-string v0, "com.sec.android.emergencymode.service"

    .line 6513
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 6514
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6515
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_53

    .line 6516
    invoke-virtual {v3, p4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_53

    const-string v4, "auto_disabler"

    .line 6517
    invoke-virtual {v3, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    move v3, v2

    goto :goto_54

    :cond_53
    move v3, v1

    .line 6520
    :goto_54
    monitor-exit v0

    goto :goto_5a

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    move v3, v1

    .line 6524
    :goto_5a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v4, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {v0, p3, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    if-eqz v3, :cond_9c

    const-string p3, "com.google.android.partnersetup"

    .line 6530
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_77

    if-eqz p2, :cond_76

    if-ne p2, v2, :cond_77

    :cond_76
    move v1, v2

    .line 6533
    :cond_77
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p3

    .line 6534
    :try_start_7c
    iget-object p5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p5, p5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p5, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/PackageSetting;

    if-eqz p5, :cond_97

    .line 6535
    invoke-virtual {p5, p4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p5

    if-ne p5, p2, :cond_97

    .line 6536
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

    invoke-virtual {p0, p1, p4, v1}, Lcom/android/server/pm/AutoDisableHandler;->sendAutoDisabledAppStateChanged(Ljava/lang/String;IZ)V

    .line 6538
    :cond_97
    monitor-exit p3

    goto :goto_9c

    :catchall_99
    move-exception p0

    monitor-exit p3
    :try_end_9b
    .catchall {:try_start_7c .. :try_end_9b} :catchall_99

    throw p0

    :cond_9c
    :goto_9c
    return-void
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7614
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/EmergencyModePackageHandler;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    return-void
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .registers 18

    move-object v0, p0

    move-object v3, p1

    move/from16 v1, p2

    move/from16 v10, p3

    .line 6546
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USERS"

    const/4 v11, 0x0

    invoke-virtual {v2, v4, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6548
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 6549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setApplicationHiddenSetting for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v12

    move v5, v2

    move/from16 v6, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6554
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 6553
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v4

    .line 6555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationHiddenSettingAsUser, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", hidden: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", callingUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingPackage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    const-string v4, "PackageManager"

    const/4 v5, 0x0

    if-eqz v1, :cond_99

    .line 6561
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v10}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 6562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not hiding package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": has active device admin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_99
    const-string v6, "android"

    .line 6567
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const-string v0, "Cannot hide package: android"

    .line 6568
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 6572
    :cond_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 6575
    :try_start_ab
    invoke-interface {v12, p1, v2, v10}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_184

    if-nez v6, :cond_b5

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 6583
    :cond_b5
    :try_start_b5
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_10d

    .line 6586
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v12
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_184

    const-string v13, "Cannot hide package: "

    if-eqz v12, :cond_e5

    .line 6587
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providing SDK library: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6589
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6587
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_c3 .. :try_end_e1} :catchall_184

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 6595
    :cond_e5
    :try_start_e5
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10d

    .line 6596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providing static shared library: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6598
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6596
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_e5 .. :try_end_109} :catchall_184

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_10d
    if-eqz v1, :cond_13b

    .line 6603
    :try_start_10f
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v2, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_13b

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 6604
    invoke-virtual {v2, v10, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 6605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not hiding protected package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_10f .. :try_end_137} :catchall_184

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 6609
    :cond_13b
    :try_start_13b
    invoke-interface {v6, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v2
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_184

    if-ne v2, v1, :cond_149

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 6613
    :cond_149
    :try_start_149
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v10, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;-><init>(IZ)V

    invoke-virtual {v2, v11, p1, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6616
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6618
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v1, :cond_171

    .line 6621
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const-string/jumbo v5, "hiding pkg"

    invoke-virtual {v1, p1, v2, v10, v5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 6622
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, v4, v10}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msendApplicationHiddenForUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    goto :goto_17a

    .line 6624
    :cond_171
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 6628
    :goto_17a
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_17f
    .catchall {:try_start_149 .. :try_end_17f} :catchall_184

    const/4 v0, 0x1

    .line 6631
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_184
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6632
    throw v0
.end method

.method public setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .registers 7

    .line 6638
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6640
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6641
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 6642
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 6643
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 6645
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    const-string p0, "PackageManager"

    .line 6646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot block uninstall of package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providing SDK library: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6647
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6646
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6653
    :cond_4a
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    const-string p0, "PackageManager"

    .line 6654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot block uninstall of package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providing static shared library: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6655
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6654
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6659
    :cond_73
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6660
    :try_start_78
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p3, p1, p2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    .line 6661
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_87

    .line 6663
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    const/4 p0, 0x1

    return p0

    :catchall_87
    move-exception p0

    .line 6661
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .registers 6

    .line 6670
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6672
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public setComponentEnabledSettings(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I)V"
        }
    .end annotation

    .line 6678
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_1a

    .line 6679
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 6683
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 6680
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The list of enabled settings is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .registers 10

    .line 6689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6690
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6691
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "setDistractingPackageRestrictionsAsUser"

    invoke-static {v0, v5, p3, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    const-string/jumbo v0, "packageNames cannot be null"

    .line 6693
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6694
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DistractingPackageHelper;->setDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 13

    .line 6701
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6702
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 6704
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "setHarmfulAppInfo"

    move-object v0, v8

    move v1, v6

    move v2, p3

    .line 6705
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_30

    if-eqz v7, :cond_30

    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 6709
    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_30

    .line 6711
    :cond_28
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6715
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p2

    .line 6718
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result p2

    if-nez p2, :cond_48

    .line 6721
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    .line 6719
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInstallLocation(I)Z
    .registers 5

    .line 6726
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6728
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->getInstallLocation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_12

    return v1

    :cond_12
    if-eqz p1, :cond_1c

    if-eq p1, v1, :cond_1c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 6734
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_install_location"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 6743
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6744
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 6746
    new-instance v6, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 6837
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v0

    .line 6838
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 6843
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 6844
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    .line 6846
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isPackagesChanged()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 6847
    :cond_45
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    monitor-enter v0
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_97

    .line 6848
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 6850
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v4, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6855
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_94

    .line 6857
    :cond_6a
    :try_start_6a
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 6858
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 6859
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_97

    .line 6860
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 6861
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    goto :goto_9a

    .line 6853
    :cond_91
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_94

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_97

    return-void

    :catchall_94
    move-exception p0

    .line 6855
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw p0

    :catchall_97
    move-exception p0

    .line 6859
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_97

    throw p0

    :cond_9a
    :goto_9a
    return-void
.end method

.method public setInstantAppCookie(Ljava/lang/String;[BI)Z
    .registers 11

    .line 6871
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "setInstantAppCookie"

    move-object v1, v0

    move v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    return v2

    .line 6879
    :cond_20
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 6880
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_46

    .line 6883
    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6884
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result p0

    .line 6883
    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/pm/InstantAppRegistry;->setInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[BII)Z

    move-result p0

    return p0

    :cond_46
    :goto_46
    return v2
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6889
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.KEEP_UNINSTALLED_PACKAGES"

    const-string/jumbo v2, "setKeepUninstalledPackages requires KEEP_UNINSTALLED_PACKAGES permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6892
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6894
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    return-void
.end method

.method public setLicensePermissionsForMDM(Ljava/lang/String;)I
    .registers 5

    const-string v0, "PackageManager"

    const-string/jumbo v1, "setLicensePermissions "

    .line 7418
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    const-string p0, "PackageManager"

    const-string p1, "Caller is not SYSTEM_PROCESS"

    .line 7420
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 7424
    :cond_1b
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7425
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7426
    :try_start_26
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I

    move-result p1

    .line 7427
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    .line 7428
    monitor-exit v1

    return p1

    :catchall_3b
    move-exception p0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6899
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6900
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6901
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 6902
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6903
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_2c

    goto :goto_17

    .line 6904
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIME type length exceeds 255 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6907
    :cond_34
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6908
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_a8

    .line 6913
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_55

    .line 6914
    invoke-interface {v0, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_55

    return-void

    .line 6917
    :cond_55
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_89

    .line 6922
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6923
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v2, p2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {p3, v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6926
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p3, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 6927
    new-instance p2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 6932
    :cond_83
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void

    .line 6918
    :cond_89
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Max limit on MIME types for MIME group "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exceeded for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6910
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown MIME group "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPackageStoppedState(Ljava/lang/String;ZI)V
    .registers 5

    .line 6937
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6938
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 19

    move-object v0, p0

    .line 6945
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 6946
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 6947
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "setPackagesSuspendedAsUser"

    move-object v2, v7

    move-object/from16 v3, p6

    move v4, v9

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V

    .line 6950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesSuspendedAsUser, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6951
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", suspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6950
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 6955
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    move-object v1, v7

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .registers 5

    const-string/jumbo v0, "setRequiredForSystemUser can only be run by the system or root"

    .line 6961
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6964
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p1

    .line 6966
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 6970
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    const/4 p0, 0x1

    return p0
.end method

.method public setRuntimePermissionsVersion(II)V
    .registers 5

    .line 6977
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6978
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6979
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "setRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 6981
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->setDefaultRuntimePermissionsVersion(II)V

    return-void
.end method

.method public setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 6987
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6988
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setSplashScreenTheme"

    move-object v0, v7

    move v1, v6

    move v2, p3

    .line 6989
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6991
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v7, p1, v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6993
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v7, p1, v6, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_23

    return-void

    .line 6999
    :cond_23
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public setTrustTimebyStatusChanged()V
    .registers 3

    .line 7647
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 7648
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/IASKSManager;->setTrustTimebyStatusChanged()V

    goto :goto_31

    :cond_e
    const-string p0, "AASA_PackageManager"

    const-string v0, "ASKSManager is null"

    .line 7650
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_31

    :catch_16
    move-exception p0

    .line 7652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public setUpdateAvailable(Ljava/lang/String;Z)V
    .registers 6

    .line 7005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7006
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;-><init>(Z)V

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public shouldAppSupportBadgeIcon(Ljava/lang/String;)Z
    .registers 2

    .line 7729
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmMonetizationUtils(Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->shouldAppSupportBadgeIcon(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5

    .line 7012
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7014
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->unregister(Landroid/content/pm/IPackageMoveObserver;)V

    return-void
.end method

.method public updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "Only the system can update SEInfo for package"

    .line 7593
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 7596
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->clearPolicies()Z

    .line 7597
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    move-result v0

    .line 7598
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7600
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 7601
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_27
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_43

    :catchall_25
    move-exception p0

    goto :goto_45

    :catch_27
    move-exception p0

    :try_start_28
    const-string p1, "PackageManager"

    .line 7603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurs : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7606
    :goto_43
    monitor-exit v1

    return v0

    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_25

    throw p0
.end method

.method public verifyPendingInstall(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7019
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can verify applications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7024
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7025
    new-instance v2, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v2, p2, v0}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 7027
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 7028
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7029
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
