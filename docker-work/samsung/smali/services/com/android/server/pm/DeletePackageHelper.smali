.class public final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    }
.end annotation


# static fields
.field public static final DEBUG_CLEAN_APKS:Z = false

.field public static final DEBUG_SD_INSTALL:Z = false

.field public static final TAG_RESTRICTED:Ljava/lang/String; = "AASA_PackageManager_RESTRICTED"


# instance fields
.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public mNextOverlayInstallToken:I

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mRunningOverlayInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$0dA5cLiztPBfED1DwM2PAFVgIjM(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43MeU7BlMjhDytDp94aaxtDLQnA(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$2(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CfrTDwk2ZllaS8XKPIjcW4ZKzrE(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$1(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ReOuoHFZO_A9P4TYBQrJzl_gZM8(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$4(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5Cl1beSRJWQcKKJrBcWcvijPSc(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$0(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8ROMyGft8UvDel38wLO89W0PFU(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$3(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFhwxUEqKmmzazF_0OnsivtydXc(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$removeUnusedPackagesLPw$7(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQUWhRJhGzLd0SCnxYJ7OdkZotI(Lcom/android/server/pm/Computer;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$isCallerAllowedToSilentlyUninstall$6(Lcom/android/server/pm/Computer;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/SilentUninstallerList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 124
    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 138
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 139
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 140
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 141
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 142
    new-instance v1, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AppDataHelper;)V
    .registers 5

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/SilentUninstallerList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 124
    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 130
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 132
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 133
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 134
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-void
.end method

.method public static synthetic lambda$deletePackageVersionedInternal$0(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V
    .registers 6

    :try_start_0
    const-string v0, "PackageManager"

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", observer.hashCode(): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 791
    invoke-interface {p2, p0, p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method

.method public static synthetic lambda$deletePackageVersionedInternal$1(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5

    :try_start_0
    const-string v0, "PackageManager"

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to delete protected package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 804
    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public static synthetic lambda$deletePackageVersionedInternal$2(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 5

    .line 834
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    .line 835
    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "android.content.pm.extra.CALLBACK"

    .line 836
    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 837
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public static synthetic lambda$deletePackageVersionedInternal$3(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 853
    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public static synthetic lambda$deletePackageVersionedInternal$4(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x4

    const/4 v1, 0x0

    .line 864
    :try_start_2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private synthetic lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 31

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 887
    iget-object v0, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 889
    invoke-interface {v0, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_29

    .line 893
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 894
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p3, :cond_27

    goto :goto_29

    :cond_27
    move v1, v11

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v12

    :goto_2a
    const-string v13, "PackageManager"

    if-eqz v1, :cond_aa

    if-nez p4, :cond_41

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p8

    .line 900
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    goto/16 :goto_ab

    .line 903
    :cond_41
    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/pm/DeletePackageHelper;->getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I

    move-result-object v14

    .line 906
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p8

    .line 907
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    goto :goto_ab

    :cond_5b
    and-int/lit8 v15, p8, -0x3

    .line 912
    array-length v6, v9

    move v5, v11

    :goto_5f
    if-ge v5, v6, :cond_a8

    aget v4, v9, v5

    .line 913
    invoke-static {v14, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_9f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    move/from16 p2, v4

    move/from16 v17, v5

    move v5, v15

    move/from16 v18, v6

    move/from16 v6, v16

    .line 914
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    if-eq v0, v12, :cond_a3

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package delete failed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_9f
    move/from16 v17, v5

    move/from16 v18, v6

    :cond_a3
    :goto_a3
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_5f

    :cond_a8
    const/4 v0, -0x4

    goto :goto_ab

    :cond_aa
    const/4 v0, -0x1

    :goto_ab
    move/from16 v1, p7

    if-ltz v0, :cond_b0

    move v11, v12

    .line 932
    :cond_b0
    invoke-static {v10, v11, v1}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    .line 937
    :try_start_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result of delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v2, p11

    .line 940
    invoke-interface {v2, v10, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_e1} :catch_e2

    goto :goto_e7

    :catch_e2
    const-string v0, "Observer no longer exists."

    .line 942
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e7
    move-wide/from16 v0, p5

    .line 944
    invoke-virtual {v7, v10, v0, v1}, Lcom/android/server/pm/DeletePackageHelper;->notifyPackageChangeObserversOnDelete(Ljava/lang/String;J)V

    .line 947
    iget-object v0, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    return-void
.end method

.method public static synthetic lambda$isCallerAllowedToSilentlyUninstall$6(Lcom/android/server/pm/Computer;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    const-wide/16 v0, 0x0

    .line 996
    invoke-interface {p0, p2, v0, v1, p1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeUnusedPackagesLPw$7(Ljava/lang/String;I)V
    .registers 10

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 1090
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method public static mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 498
    :cond_4
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_43

    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    if-eqz p4, :cond_1e

    .line 501
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_22

    if-eqz v2, :cond_43

    :cond_22
    if-nez p2, :cond_43

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to delete unknown system package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 503
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 511
    :cond_43
    new-instance v0, Lcom/android/server/pm/DeletePackageAction;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageAction;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public final checkAndInstallLocaleOverlays(Lcom/android/server/pm/PackageRemovedInfo;)V
    .registers 4

    .line 436
    iget-boolean v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v0, :cond_5

    return-void

    .line 439
    :cond_5
    iget v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    if-gez v0, :cond_c

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 440
    :cond_c
    iget v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 441
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->installLocaleOverlaysForUpdateRemovedPackage(ILjava/lang/String;)V

    return-void
.end method

.method public final clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageRemovedInfo;I)V
    .registers 16

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 617
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 618
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 619
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_b4

    .line 621
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    if-eqz v2, :cond_28

    .line 624
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    goto :goto_2c

    :cond_28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2c
    move-object v6, v0

    .line 625
    new-instance v0, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p2, v2, :cond_40

    .line 626
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    goto :goto_44

    :cond_40
    new-array v2, v9, [I

    aput p2, v2, v8

    :goto_44
    move-object v10, v2

    .line 628
    array-length v2, v10

    move v3, v8

    :goto_47
    if-ge v3, v2, :cond_73

    aget v4, v10, v3

    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_55

    .line 634
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v7, 0x7

    invoke-virtual {v5, v1, v4, v7}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 637
    :cond_55
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    invoke-virtual {v5, v4, v7}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 638
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    .line 640
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackageForUser(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 642
    :cond_73
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    move-object v5, v1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    if-eqz p3, :cond_b3

    and-int/lit8 p0, p4, 0x1

    if-nez p0, :cond_8a

    .line 647
    iput-boolean v9, p3, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 649
    :cond_8a
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_a1

    .line 651
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a1

    move v8, v9

    :cond_a1
    iput-boolean v8, p3, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 652
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    iput p0, p3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    .line 653
    iput-object v10, p3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 654
    iput-object v10, p3, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 655
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result p0

    iput-boolean p0, p3, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    :cond_b3
    return-void

    :catchall_b4
    move-exception p0

    .line 619
    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 15

    .line 1099
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    .line 1107
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 1109
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 1110
    invoke-interface {v5, v0, v3, v4}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 1111
    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 1113
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    .line 1115
    array-length v3, v3

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    .line 1117
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_51

    if-le v3, v4, :cond_4c

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 1120
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    goto :goto_50

    :cond_4c
    const/4 p0, -0x1

    .line 1123
    :try_start_4d
    invoke-interface {p2, v0, p0, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_50

    :catch_50
    :goto_50
    return-void

    :catchall_51
    move-exception p0

    .line 1117
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .registers 14

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    if-eqz p5, :cond_23

    .line 664
    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    iput v1, p5, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 665
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 666
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 667
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 665
    invoke-virtual {v2, v1, p1, p4, v3}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p5, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 669
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_4f

    .line 672
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    if-eqz p2, :cond_4e

    if-eqz p5, :cond_4e

    .line 678
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 679
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p2

    .line 680
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    .line 679
    invoke-static {p3, p4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 681
    invoke-static {p1}, Lcom/android/server/pm/AsecInstallHelper;->packageFlagsToInstallFlags(Lcom/android/server/pm/PackageSetting;)I

    move-result p1

    .line 678
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/PackageManagerService;->createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/server/pm/InstallArgs;

    move-result-object p0

    iput-object p0, p5, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    :cond_4e
    return-void

    :catchall_4f
    move-exception p0

    .line 669
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 13

    .line 724
    iget v0, p1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 725
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 726
    iget-object v6, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v6, :cond_a

    .line 727
    iget-object v1, v6, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 728
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 733
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    const-string v1, "PackageManager"

    const-string v3, "Deleting system pkg from data partition"

    .line 738
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v6, :cond_1b

    .line 752
    iput-boolean v1, v6, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 755
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-ltz v3, :cond_35

    .line 756
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    if-eq p1, v3, :cond_32

    goto :goto_35

    :cond_32
    or-int/lit8 p1, v0, 0x1

    goto :goto_37

    :cond_35
    :goto_35
    and-int/lit8 p1, v0, -0x2

    :goto_37
    move v4, p1

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, p2

    move v7, p3

    .line 764
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    return-void
.end method

.method public deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .registers 16

    .line 466
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 467
    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 468
    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 469
    invoke-static {p6, v2, v4, p5, p2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v2

    .line 470
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_29

    const/4 v7, 0x0

    if-nez v2, :cond_1e

    return v7

    :cond_1e
    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v6, p7

    .line 478
    :try_start_23
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    :try_end_26
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_23 .. :try_end_26} :catch_28

    const/4 v0, 0x1

    return v0

    :catch_28
    return v7

    :catchall_29
    move-exception v0

    .line 470
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    .registers 27

    move-object/from16 v2, p0

    move-object/from16 v13, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 771
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 774
    invoke-interface {v1, v4, v9}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v5

    .line 775
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    const-wide v18, 0x7fffffffffffffffL

    const-string/jumbo v20, "versionCode must be >= -1"

    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v7

    const-string v0, "com.samsung.android.themecenter"

    .line 785
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    if-nez v9, :cond_56

    .line 787
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12, v4, v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 800
    :cond_56
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v9, v12}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 801
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v12, v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6d
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 813
    :try_start_6f
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v14, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 814
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v0, -0x7

    .line 815
    invoke-interface {v13, v12, v0, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    const v0, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v14, "127605586"

    aput-object v14, v3, v6

    const/4 v14, -0x1

    .line 817
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v11

    const-string v14, ""

    const/4 v15, 0x2

    aput-object v14, v3, v15

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception v0

    .line 821
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 826
    :cond_a3
    invoke-interface {v1, v12, v7, v8}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 829
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/DeletePackageHelper;->isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c6

    if-nez p5, :cond_c6

    .line 831
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/pm/DeletePackageHelper;->isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c6

    .line 832
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v12, v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c6
    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_cc

    move v14, v11

    goto :goto_cd

    :cond_cc
    move v14, v6

    :goto_cd
    if-eqz v14, :cond_d7

    .line 844
    iget-object v6, v2, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    move-object v15, v6

    goto :goto_db

    :cond_d7
    new-array v15, v11, [I

    aput v9, v15, v6

    .line 845
    :goto_db
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v9, :cond_ea

    if-eqz v14, :cond_e7

    array-length v6, v15

    if-le v6, v11, :cond_e7

    goto :goto_ea

    :cond_e7
    move-object/from16 v16, v15

    goto :goto_106

    .line 846
    :cond_ea
    :goto_ea
    iget-object v6, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "deletePackage for user "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v6, v15, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_106
    iget-object v6, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_uninstall_apps"

    invoke-virtual {v6, v9, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 851
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_11e
    if-nez v14, :cond_133

    .line 861
    invoke-interface {v1, v3, v9}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 862
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 879
    :cond_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START DELETE PACKAGE: observer{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_148

    .line 880
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_14b

    :cond_148
    const-string/jumbo v6, "null"

    :goto_14b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}\npkg{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}, user{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}, caller{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} flags{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 885
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v14

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, v16

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deletePackageX(Ljava/lang/String;JIIZ)I
    .registers 35

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p5

    .line 164
    new-instance v0, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    const/high16 v15, 0x10000000

    and-int v1, v14, v15

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1d

    move/from16 v17, v8

    goto :goto_1f

    :cond_1d
    move/from16 v17, v16

    :goto_1f
    and-int/lit8 v18, v14, 0x2

    const/4 v7, -0x1

    if-eqz v18, :cond_26

    move v6, v7

    goto :goto_27

    :cond_26
    move v6, v13

    .line 172
    :goto_27
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v10, v6}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v0, "PackageManager"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    .line 189
    :cond_4c
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 190
    :try_start_51
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 191
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-nez v5, :cond_7d

    const-string v0, "PackageManager"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing non-existent package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_7b

    .line 196
    monitor-exit v1

    return v8

    .line 199
    :cond_7b
    monitor-exit v1

    return v7

    :cond_7d
    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-eqz v3, :cond_b7

    .line 203
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-eqz v3, :cond_b7

    const-string v0, "PackageManager"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with versionCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v1

    return v7

    .line 209
    :cond_b7
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_113

    and-int/lit8 v3, v14, 0x4

    if-nez v3, :cond_113

    .line 211
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 212
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_113

    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 213
    invoke-virtual {v3, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v4

    .line 212
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_113

    :cond_df
    const-string v0, "PackageManager"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as only admin user (or their profile) may downgrade system apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "170646036"

    aput-object v3, v2, v16

    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    aput-object v10, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v0, -0x3

    .line 217
    monitor-exit v1

    return v0

    .line 221
    :cond_113
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v10}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v25

    .line 224
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v10}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 226
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    if-eqz v4, :cond_1c2

    .line 230
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_141

    .line 231
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v15

    .line 232
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v8

    .line 231
    invoke-interface {v2, v15, v8, v9}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v8

    goto :goto_156

    .line 233
    :cond_141
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_155

    .line 234
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result v9

    int-to-long v11, v9

    .line 234
    invoke-interface {v2, v8, v11, v12}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v8

    goto :goto_156

    :cond_155
    const/4 v8, 0x0

    :goto_156
    if-eqz v8, :cond_1c1

    .line 239
    array-length v9, v3

    move/from16 v11, v16

    :goto_15b
    if-ge v11, v9, :cond_1c1

    aget v12, v3, v11

    if-eq v6, v7, :cond_164

    if-eq v6, v12, :cond_164

    goto :goto_1be

    :cond_164
    const-wide/32 v21, 0x402000

    const/16 v23, 0x3e8

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move/from16 v24, v12

    .line 244
    invoke-interface/range {v19 .. v24}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v15

    .line 246
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_1be

    const-string v0, "PackageManager"

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hosting lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " used by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x6

    .line 251
    monitor-exit v1

    return v0

    :cond_1be
    :goto_1be
    add-int/lit8 v11, v11, 0x1

    goto :goto_15b

    :cond_1c1
    const/4 v8, 0x1

    .line 257
    :cond_1c2
    invoke-virtual {v5, v3, v8}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 259
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_20a

    and-int/lit8 v2, v14, 0x4

    if-nez v2, :cond_20a

    .line 264
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move/from16 v9, v16

    .line 265
    :goto_1d9
    array-length v11, v3

    if-ge v9, v11, :cond_202

    .line 266
    aget v11, v3, v9

    invoke-virtual {v5, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 267
    aget v12, v3, v9

    new-instance v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 268
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v7

    .line 269
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v11

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-direct {v15, v7, v8, v11, v4}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper$TempUserState-IA;)V

    .line 267
    invoke-virtual {v2, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v20

    const/4 v7, -0x1

    const/4 v8, 0x1

    goto :goto_1d9

    :cond_202
    move-object/from16 v20, v4

    const/4 v4, 0x0

    move-object/from16 v11, p0

    move-object v9, v2

    const/4 v2, -0x1

    goto :goto_211

    :cond_20a
    move-object/from16 v20, v4

    const/4 v4, 0x0

    move-object/from16 v11, p0

    move-object v9, v4

    move v2, v6

    .line 276
    :goto_211
    iget-object v7, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v10}, Lcom/android/server/pm/Settings;->isInstallerPackage(Ljava/lang/String;)Z

    move-result v12

    .line 277
    monitor-exit v1
    :try_end_21a
    .catchall {:try_start_51 .. :try_end_21a} :catchall_4c1

    .line 279
    iget-object v1, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15

    .line 281
    :try_start_21f
    iget-object v1, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "deletePackageX"

    invoke-virtual {v1, v10, v2, v14, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v21
    :try_end_227
    .catchall {:try_start_21f .. :try_end_227} :catchall_4be

    .line 283
    :try_start_227
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v1, -0x80000000

    or-int v22, v14, v1

    const/16 v23, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v24, v3

    move-object v3, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v4

    move v4, v8

    move-object v8, v5

    move-object/from16 v5, v24

    move/from16 v26, v6

    move/from16 v6, v22

    move-object/from16 v27, v7

    const/16 v19, -0x1

    move-object v7, v0

    move-object v13, v8

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v1
    :try_end_251
    .catchall {:try_start_227 .. :try_end_251} :catchall_4b0

    if-eqz v21, :cond_256

    .line 285
    :try_start_253
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_256
    if-eqz v1, :cond_281

    move-object/from16 v3, v27

    if-eqz v3, :cond_281

    .line 288
    iget-object v2, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_261
    .catchall {:try_start_253 .. :try_end_261} :catchall_4be

    .line 289
    :try_start_261
    iget-object v4, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_271

    const/4 v8, 0x1

    goto :goto_273

    :cond_271
    move/from16 v8, v16

    .line 290
    :goto_273
    monitor-exit v2
    :try_end_274
    .catchall {:try_start_261 .. :try_end_274} :catchall_27e

    .line 291
    :try_start_274
    iget-object v2, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v2, v3, v13, v4, v8}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_27d
    .catchall {:try_start_274 .. :try_end_27d} :catchall_4be

    goto :goto_281

    :catchall_27e
    move-exception v0

    .line 290
    :try_start_27f
    monitor-exit v2
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    :try_start_280
    throw v0

    .line 294
    :cond_281
    :goto_281
    iget-object v2, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_286
    .catchall {:try_start_280 .. :try_end_286} :catchall_4be

    if-eqz v1, :cond_294

    .line 296
    :try_start_288
    iget-object v3, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v3, v13, v4}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 297
    iget-object v3, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 299
    :cond_294
    monitor-exit v2
    :try_end_295
    .catchall {:try_start_288 .. :try_end_295} :catchall_4ad

    .line 300
    :try_start_295
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 301
    monitor-exit v15
    :try_end_299
    .catchall {:try_start_295 .. :try_end_299} :catchall_4be

    if-eqz v1, :cond_2ad

    and-int/lit8 v2, v14, 0x8

    if-nez v2, :cond_2a3

    move/from16 v2, p6

    const/4 v8, 0x1

    goto :goto_2a7

    :cond_2a3
    move/from16 v2, p6

    move/from16 v8, v16

    .line 305
    :goto_2a7
    invoke-virtual {v0, v8, v2}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcasts(ZZ)V

    .line 308
    invoke-virtual {v11, v0}, Lcom/android/server/pm/DeletePackageHelper;->checkAndInstallLocaleOverlays(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 316
    :cond_2ad
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 320
    iget-object v2, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_2b9
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v3, :cond_2c1

    const/4 v4, 0x1

    .line 322
    invoke-virtual {v3, v4}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z

    :cond_2c1
    if-eqz v9, :cond_33f

    .line 328
    iget-object v3, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_2c8
    .catchall {:try_start_2b9 .. :try_end_2c8} :catchall_4aa

    .line 329
    :try_start_2c8
    iget-object v4, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_317

    .line 331
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_2de

    .line 332
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2de

    const/4 v8, 0x1

    goto :goto_2e0

    :cond_2de
    move/from16 v8, v16

    :goto_2e0
    move/from16 v5, v16

    :goto_2e2
    move-object/from16 v6, v24

    .line 333
    array-length v7, v6

    if-ge v5, v7, :cond_315

    .line 334
    aget v7, v6, v5

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 335
    iget v15, v7, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    move-object/from16 v22, v9

    .line 336
    aget v9, v6, v5

    move-object/from16 v24, v6

    iget-object v6, v7, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v4, v15, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    if-nez v16, :cond_30f

    .line 338
    iget-boolean v6, v7, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    if-eqz v6, :cond_30f

    if-nez v15, :cond_309

    if-nez v8, :cond_307

    goto :goto_309

    :cond_307
    const/4 v6, 0x1

    goto :goto_30c

    :cond_309
    :goto_309
    const/4 v6, 0x1

    if-ne v15, v6, :cond_310

    :goto_30c
    move/from16 v16, v6

    goto :goto_310

    :cond_30f
    const/4 v6, 0x1

    :cond_310
    :goto_310
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v22

    goto :goto_2e2

    :cond_315
    const/4 v6, 0x1

    goto :goto_333

    :cond_317
    const/4 v6, 0x1

    const-string v4, "PackageManager"

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing PackageSetting after uninstalling the update for system app: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". This should not happen."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_333
    iget-object v4, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 354
    monitor-exit v3

    goto :goto_340

    :catchall_33c
    move-exception v0

    monitor-exit v3
    :try_end_33e
    .catchall {:try_start_2c8 .. :try_end_33e} :catchall_33c

    :try_start_33e
    throw v0

    :cond_33f
    const/4 v6, 0x1

    :goto_340
    if-nez v25, :cond_345

    move-object/from16 v15, v20

    goto :goto_349

    .line 358
    :cond_345
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    :goto_349
    if-eqz v15, :cond_3b2

    .line 359
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v3

    if-eqz v3, :cond_3b2

    .line 361
    iget-object v3, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_356
    .catchall {:try_start_33e .. :try_end_356} :catchall_4aa

    .line 362
    :try_start_356
    iget-object v4, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 363
    monitor-exit v3
    :try_end_363
    .catchall {:try_start_356 .. :try_end_363} :catchall_3af

    if-eqz v4, :cond_3b2

    if-eqz v16, :cond_390

    .line 367
    :try_start_367
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v3, :cond_385

    const-string v3, "PackageManager"

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabling system stub after removal; pkg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_385
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v5, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v3, v5}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v3, v15, v4}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_3b2

    .line 372
    :cond_390
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v3, :cond_3b2

    const-string v3, "PackageManager"

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ae
    .catchall {:try_start_367 .. :try_end_3ae} :catchall_4aa

    goto :goto_3b2

    :catchall_3af
    move-exception v0

    .line 363
    :try_start_3b0
    monitor-exit v3
    :try_end_3b1
    .catchall {:try_start_3b0 .. :try_end_3b1} :catchall_3af

    :try_start_3b1
    throw v0

    .line 378
    :cond_3b2
    :goto_3b2
    monitor-exit v2
    :try_end_3b3
    .catchall {:try_start_3b1 .. :try_end_3b3} :catchall_4aa

    if-eqz v1, :cond_3c8

    if-eqz v12, :cond_3c8

    .line 381
    iget-object v2, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 382
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v2

    .line 383
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    move/from16 v13, v26

    invoke-virtual {v2, v3, v13}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    :cond_3c8
    move/from16 v2, p4

    move v3, v6

    if-eqz v1, :cond_432

    if-nez v2, :cond_432

    const-string v4, "AASA_PackageManager_RESTRICTED"

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uninstall : userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", info.mRemovedAppId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", info.uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_401
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    if-eqz v0, :cond_40f

    .line 393
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/pm/IASKSManager;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V

    goto :goto_432

    :cond_40f
    const-string v0, "PackageManager"

    const-string v4, "ASKSManager.getASKSManager is null !"

    .line 395
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_416
    .catch Landroid/os/RemoteException; {:try_start_401 .. :try_end_416} :catch_417

    goto :goto_432

    :catch_417
    move-exception v0

    const-string v4, "PackageManager"

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_432
    :goto_432
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    if-eqz v0, :cond_4a3

    if-eqz v1, :cond_4a3

    .line 409
    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_4a1

    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4a1

    if-eqz v2, :cond_45c

    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 410
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v2, v0, :cond_4a1

    :cond_45c
    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 411
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a1

    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 412
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-eqz v0, :cond_4a1

    if-nez v17, :cond_4a1

    if-nez v18, :cond_4a1

    const/high16 v1, 0x10000000

    or-int v6, v14, v1

    if-nez v2, :cond_494

    .line 417
    iget-object v0, v11, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v8

    goto :goto_4a2

    :cond_494
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 419
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v8

    goto :goto_4a2

    :cond_4a1
    move v8, v3

    :goto_4a2
    return v8

    :cond_4a3
    if-eqz v1, :cond_4a7

    move v8, v3

    goto :goto_4a9

    :cond_4a7
    move/from16 v8, v19

    :goto_4a9
    return v8

    :catchall_4aa
    move-exception v0

    .line 378
    :try_start_4ab
    monitor-exit v2
    :try_end_4ac
    .catchall {:try_start_4ab .. :try_end_4ac} :catchall_4aa

    throw v0

    :catchall_4ad
    move-exception v0

    .line 299
    :try_start_4ae
    monitor-exit v2
    :try_end_4af
    .catchall {:try_start_4ae .. :try_end_4af} :catchall_4ad

    :try_start_4af
    throw v0
    :try_end_4b0
    .catchall {:try_start_4af .. :try_end_4b0} :catchall_4be

    :catchall_4b0
    move-exception v0

    move-object v1, v0

    if-eqz v21, :cond_4bd

    .line 281
    :try_start_4b4
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_4b7
    .catchall {:try_start_4b4 .. :try_end_4b7} :catchall_4b8

    goto :goto_4bd

    :catchall_4b8
    move-exception v0

    move-object v2, v0

    :try_start_4ba
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4bd
    :goto_4bd
    throw v1

    :catchall_4be
    move-exception v0

    .line 301
    monitor-exit v15
    :try_end_4c0
    .catchall {:try_start_4ba .. :try_end_4c0} :catchall_4be

    throw v0

    :catchall_4c1
    move-exception v0

    .line 277
    :try_start_4c2
    monitor-exit v1
    :try_end_4c3
    .catchall {:try_start_4c2 .. :try_end_4c3} :catchall_4c1

    throw v0
.end method

.method public executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v5, p4

    move/from16 v7, p5

    .line 518
    iget-object v9, v1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 519
    iget-object v10, v1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 520
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 521
    iget v4, v1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 522
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    .line 525
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 526
    array-length v6, v5

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v6, :cond_34

    aget v15, v5, v13

    .line 527
    iget-object v12, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v14, "android.permission.SUSPEND_APPS"

    invoke-virtual {v12, v14, v8, v15}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_2d

    const/4 v14, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v14, 0x0

    :goto_2e
    invoke-virtual {v11, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_34
    const/4 v6, -0x1

    if-nez v2, :cond_39

    move v12, v6

    goto :goto_3d

    .line 531
    :cond_39
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    :goto_3d
    if-eqz v3, :cond_43

    and-int/lit8 v13, v4, 0x4

    if-eqz v13, :cond_82

    :cond_43
    if-eq v12, v6, :cond_82

    .line 541
    iget-object v6, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    .line 542
    :try_start_4a
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)V

    if-nez v3, :cond_71

    .line 545
    iget-object v13, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 546
    invoke-virtual {v13, v8}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v13

    .line 547
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 548
    invoke-virtual {v14}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v14

    .line 547
    invoke-virtual {v9, v14}, Lcom/android/server/pm/PackageSetting;->isAnyInstalled([I)Z

    move-result v14

    if-nez v14, :cond_71

    if-eqz v13, :cond_64

    goto :goto_71

    :cond_64
    const/4 v13, 0x1

    .line 558
    invoke-virtual {v9, v13, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 559
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v9}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    const/4 v14, 0x0

    goto :goto_73

    :cond_71
    :goto_71
    const/4 v13, 0x1

    move v14, v13

    .line 570
    :goto_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_4a .. :try_end_74} :catchall_7f

    if-eqz v14, :cond_83

    .line 572
    invoke-virtual {v0, v9, v12, v10, v4}, Lcom/android/server/pm/DeletePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageRemovedInfo;I)V

    .line 573
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V

    return-void

    :catchall_7f
    move-exception v0

    .line 570
    :try_start_80
    monitor-exit v6
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    :cond_82
    const/4 v13, 0x1

    :cond_83
    if-eqz v3, :cond_93

    .line 583
    invoke-virtual {v0, v1, v5, v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 584
    new-instance v2, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v2, v1, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    goto :goto_a0

    :cond_93
    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p5

    .line 588
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;ZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    :goto_a0
    if-eqz v10, :cond_a5

    .line 594
    iget-object v1, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    if-nez v1, :cond_ae

    .line 596
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v1

    .line 598
    :cond_ae
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 599
    array-length v3, v1

    const/4 v4, 0x0

    :goto_b6
    if-ge v4, v3, :cond_cd

    aget v5, v1, v4

    .line 600
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 601
    iget-object v6, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v2, v8, v5}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 602
    iget-object v6, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_cd
    if-eqz v10, :cond_e2

    .line 608
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_df

    move v12, v13

    goto :goto_e0

    :cond_df
    const/4 v12, 0x0

    :goto_e0
    iput-boolean v12, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    :cond_e2
    return-void
.end method

.method public final getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I
    .registers 8

    .line 1009
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 1010
    array-length v0, p3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_15

    aget v2, p3, v1

    .line 1011
    invoke-interface {p1, p2, v2}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1012
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return-object p0
.end method

.method public final isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/16 v1, 0x7d0

    if-eq p2, v1, :cond_6d

    if-eqz p2, :cond_6d

    .line 959
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_10

    goto :goto_6d

    .line 962
    :cond_10
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 964
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v2, 0x0

    invoke-interface {p1, p3, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_21

    return v0

    .line 970
    :cond_21
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz p3, :cond_2e

    .line 971
    invoke-interface {p1, p3, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return v0

    .line 976
    :cond_2e
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    if-eqz p3, :cond_3b

    .line 977
    invoke-interface {p1, p3, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_3b

    return v0

    .line 982
    :cond_3b
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    if-eqz p3, :cond_48

    .line 983
    invoke-interface {p1, p3, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_48

    return v0

    .line 989
    :cond_48
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    if-eqz p3, :cond_55

    invoke-interface {p1, p3, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-ne p2, p3, :cond_55

    return v0

    .line 995
    :cond_55
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    new-instance p3, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;

    invoke-direct {p3, p1, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/Computer;I)V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->isCallerAllowedSilentlyInstall(ILjava/util/function/Function;)Z

    move-result p0

    if-eqz p0, :cond_63

    return v0

    :cond_63
    const-string p0, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    .line 1003
    invoke-interface {p1, p0, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :cond_6d
    :goto_6d
    return v0
.end method

.method public final isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 3

    .line 952
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 953
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    goto :goto_17

    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v2, v1

    goto :goto_1d

    .line 694
    :cond_17
    :goto_17
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 696
    :goto_1d
    array-length v3, v2

    :goto_1e
    if-ge v1, v3, :cond_46

    aget v5, v2, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v4, p1

    .line 701
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 719
    :cond_46
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public final notifyPackageChangeObserversOnDelete(Ljava/lang/String;J)V
    .registers 5

    .line 1019
    new-instance v0, Landroid/content/pm/PackageChangeEvent;

    invoke-direct {v0}, Landroid/content/pm/PackageChangeEvent;-><init>()V

    .line 1020
    iput-object p1, v0, Landroid/content/pm/PackageChangeEvent;->packageName:Ljava/lang/String;

    .line 1021
    iput-wide p2, v0, Landroid/content/pm/PackageChangeEvent;->version:J

    const-wide/16 p1, 0x0

    .line 1022
    iput-wide p1, v0, Landroid/content/pm/PackageChangeEvent;->lastUpdateTimeMillis:J

    const/4 p1, 0x0

    .line 1023
    iput-boolean p1, v0, Landroid/content/pm/PackageChangeEvent;->newInstalled:Z

    .line 1024
    iput-boolean p1, v0, Landroid/content/pm/PackageChangeEvent;->dataRemoved:Z

    const/4 p1, 0x1

    .line 1025
    iput-boolean p1, v0, Landroid/content/pm/PackageChangeEvent;->isDeleted:Z

    .line 1027
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChangeObservers(Landroid/content/pm/PackageChangeEvent;)V

    return-void
.end method

.method public overlaysInstallComplete(I)V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageRemovedInfo;

    .line 450
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_2b

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "overlaysInstallComplete(): Calling sendSystemPackageUpdatedBroadcasts for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Lcom/android/server/pm/PackageRemovedInfo;->sendSystemPackageUpdatedBroadcasts()V

    :cond_2b
    return-void
.end method

.method public removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 1051
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    .line 1052
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_83

    .line 1054
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1055
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_29

    goto :goto_80

    .line 1058
    :cond_29
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1060
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_80

    .line 1061
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1062
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_80

    .line 1068
    :cond_56
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    goto :goto_71

    :cond_5f
    move v7, v1

    .line 1074
    :goto_60
    array-length v8, p1

    if-ge v7, v8, :cond_71

    .line 1075
    aget v8, p1, v7

    if-eq v8, p2, :cond_6e

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    goto :goto_72

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_71
    :goto_71
    move v6, v5

    :goto_72
    if-nez v6, :cond_80

    .line 1090
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_83
    return-void
.end method
