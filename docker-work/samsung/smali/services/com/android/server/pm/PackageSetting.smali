.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field public categoryOverride:I

.field public forceQueryableOverride:Z

.field public installPermissionsFixed:Z

.field public installSource:Lcom/android/server/pm/InstallSource;

.field public keySetData:Lcom/android/server/pm/PackageKeySetData;

.field public lastUpdateTime:J

.field public legacyNativeLibraryPath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mAppId:I

.field public mCpuAbiOverride:Ljava/lang/String;

.field public mDomainSetId:Ljava/util/UUID;

.field public mLastModifiedTime:J

.field public mLoadingProgress:F

.field public mName:Ljava/lang/String;

.field public mOldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPath:Ljava/io/File;

.field public mPathString:Ljava/lang/String;

.field public mPrimaryCpuAbi:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mSecondaryCpuAbi:Ljava/lang/String;

.field public mSharedUserAppId:I

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mimeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field public signatures:Lcom/android/server/pm/PackageSignatures;

.field public updateAvailable:Z

.field public usesSdkLibraries:[Ljava/lang/String;

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 248
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 4

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 157
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 179
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p2, :cond_28

    .line 255
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    goto :goto_2e

    .line 257
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    :goto_2e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIII[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p10

    move v2, p11

    .line 209
    invoke-direct {p0, p10, p11}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 157
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 161
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 172
    iput v1, v0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 179
    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-object v1, p1

    .line 210
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object v1, p2

    .line 211
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 212
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    move-object/from16 v1, p14

    .line 213
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    move-object/from16 v1, p15

    .line 214
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v1, p16

    .line 215
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object v1, p3

    .line 216
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 217
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    move-object v1, p4

    .line 218
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    move-object v1, p5

    .line 219
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    move-object v1, p6

    .line 220
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    move-object v1, p7

    .line 221
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    move-wide v1, p8

    .line 222
    iput-wide v1, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 223
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 224
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    move v1, p12

    .line 225
    iput v1, v0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    move-object/from16 v1, p18

    .line 226
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    move-object/from16 v1, p17

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addDisabledComponent(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 948
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 949
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addEnabledComponent(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 954
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 955
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1305
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1f

    .line 1307
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1308
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public copyMimeGroups(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 502
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void

    .line 506
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 507
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_38

    .line 511
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 513
    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_43
    return-void
.end method

.method public copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 8

    .line 614
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 615
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 616
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 617
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 618
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 619
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 620
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 621
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 622
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 623
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 624
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 625
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 627
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 628
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 629
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 630
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 631
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 632
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 633
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 634
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 635
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 636
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 637
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 638
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 640
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 641
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_76

    :cond_75
    move-object v0, v1

    .line 642
    :goto_76
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 643
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_82

    .line 644
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_83

    :cond_82
    move-object v0, v1

    .line 645
    :goto_83
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 647
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 648
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_92

    :cond_91
    move-object v0, v1

    .line 649
    :goto_92
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 650
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_9e

    .line 651
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_9f

    :cond_9e
    move-object v0, v1

    .line 652
    :goto_9f
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 653
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 654
    :goto_a7
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_e2

    if-eqz p2, :cond_c9

    .line 656
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 657
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    .line 656
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_df

    .line 660
    :cond_c9
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 661
    invoke-virtual {v2, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)V

    .line 662
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 667
    :cond_e2
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    if-eqz p2, :cond_f7

    .line 668
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_f5

    .line 669
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 670
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_f7

    .line 672
    :cond_f5
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    .line 676
    :cond_f7
    :goto_f7
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 677
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public disableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 971
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 972
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 973
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 974
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_22

    .line 976
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_22
    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 270
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_b
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000003L

    .line 273
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000006L

    .line 274
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10900000007L

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_b0

    const-wide v5, 0x10900000004L

    .line 278
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x20b00000008L

    .line 280
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-string v0, "base"

    .line 281
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 283
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v0, 0x0

    .line 285
    :goto_68
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_91

    .line 286
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 287
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {p1, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 289
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object v9

    aget v9, v9, v0

    .line 288
    invoke-virtual {p1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 290
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_91
    const-wide v3, 0x10b0000000aL

    .line 293
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    .line 296
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 298
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_b0
    const-wide v0, 0x10800000002L

    .line 300
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x20b00000009L

    .line 301
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x20b0000000cL

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    .line 302
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageSetting;->writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 303
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 960
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 961
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 962
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 963
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_22

    .line 965
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_22
    return p1
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;
    .registers 1

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()I
    .registers 1

    .line 1356
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return p0
.end method

.method public getCategoryOverride()I
    .registers 1

    .line 1448
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return p0
.end method

.method public getCeDataInode(I)J
    .registers 2

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .registers 1

    .line 1402
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 3

    .line 994
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 995
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 996
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    const/4 p0, 0x1

    return p0

    .line 998
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 999
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x2

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 902
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDistractionFlags(I)I
    .registers 2

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result p0

    return p0
.end method

.method public getDomainSetId()Ljava/util/UUID;
    .registers 1

    .line 1471
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object p0
.end method

.method public getEnabled(I)I
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getHidden(I)Z
    .registers 2

    .line 815
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0

    return p0
.end method

.method public getInstallReason(I)I
    .registers 2

    .line 731
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 1

    .line 1432
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public getInstalled(I)Z
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    return p0
.end method

.method public getInstantApp(I)Z
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0
.end method

.method public getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .registers 1

    .line 1427
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object p0
.end method

.method public getLastModifiedTime()J
    .registers 3

    .line 1407
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastPackageUsageTime()[J
    .registers 1

    .line 1226
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object p0

    return-object p0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 1412
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLegacyNativeLibraryPath()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1341
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingProgress()F
    .registers 1

    .line 1387
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return p0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_13

    .line 1161
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1346
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotInstalledUserIds()[I
    .registers 7

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1015
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_1b

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    if-nez v3, :cond_23

    .line 1020
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    .line 1023
    :cond_23
    new-array v2, v3, [I

    move v3, v1

    :goto_26
    if-ge v1, v0, :cond_44

    .line 1026
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_41

    add-int/lit8 v4, v3, 0x1

    .line 1027
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v3

    move v3, v4

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_44
    return-object v2
.end method

.method public getNotLaunched(I)Z
    .registers 2

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result p0

    return p0
.end method

.method public getOldCodePaths()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1331
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    return-object p0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_14

    .line 695
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 696
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1167
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/io/File;
    .registers 1

    .line 1377
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public getPathString()Ljava/lang/String;
    .registers 1

    .line 1382
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    .line 1369
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 1

    .line 1466
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 1392
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 1

    .line 1351
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 1397
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserAppId()I
    .registers 1

    .line 485
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return p0
.end method

.method public getSignatures()Lcom/android/server/pm/PackageSignatures;
    .registers 1

    .line 1417
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    return-object p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    .line 603
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 1178
    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public getSplashScreenTheme(I)Ljava/lang/String;
    .registers 2

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStopped(I)Z
    .registers 2

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    return p0
.end method

.method public getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 1

    .line 1292
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getUninstallReason(I)I
    .registers 2

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    return p0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;"
        }
    .end annotation

    .line 1297
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 1209
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .registers 1

    .line 1184
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 1

    .line 1190
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .registers 1

    .line 1197
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 1

    .line 1203
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public getVersionCode()J
    .registers 3

    .line 1151
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method public getVirtualPreload(I)Z
    .registers 2

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result p0

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 1

    .line 1440
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hasSharedUser()Z
    .registers 1

    .line 490
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAnyInstalled([I)Z
    .registers 6

    .line 761
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget v3, p1, v2

    .line 762
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

.method public isExternalStorage()Z
    .registers 2

    .line 469
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isForceQueryableOverride()Z
    .registers 1

    .line 1461
    iget-boolean p0, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    return p0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 1

    .line 1220
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    return p0
.end method

.method public isInstallPermissionsFixed()Z
    .registers 1

    .line 1422
    iget-boolean p0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return p0
.end method

.method public isLoading()Z
    .registers 2

    .line 1139
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x322bcc77    # 1.0E-8f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isOdm()Z
    .registers 2

    .line 595
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isOem()Z
    .registers 2

    .line 574
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isPrivileged()Z
    .registers 1

    .line 570
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isProduct()Z
    .registers 2

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isRequiredForSystemUser()Z
    .registers 1

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSystem()Z
    .registers 2

    .line 599
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isSystemExt()Z
    .registers 2

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isUpdateAvailable()Z
    .registers 1

    .line 1456
    iget-boolean p0, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .registers 1

    .line 1231
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p0

    return p0
.end method

.method public isVendor()Z
    .registers 2

    .line 578
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/android/server/pm/PackageSetting$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PackageSetting$1;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_17

    .line 685
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 686
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_17
    return-object v0
.end method

.method public modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 5

    .line 931
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_17

    .line 933
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-nez p2, :cond_17

    .line 934
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move p2, v0

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-eqz p3, :cond_29

    .line 937
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p3

    if-nez p3, :cond_29

    .line 938
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    goto :goto_2a

    :cond_29
    move v0, p2

    :goto_2a
    if-eqz v0, :cond_2f

    .line 942
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2f
    return-object p1
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1110
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p1

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public queryInstalledUsers([IZ)[I
    .registers 9

    .line 771
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_13

    aget v4, p1, v2

    .line 772
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 776
    :cond_13
    new-array v0, v3, [I

    .line 778
    array-length v2, p1

    move v3, v1

    :goto_17
    if-ge v1, v2, :cond_28

    aget v4, p1, v1

    .line 779
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_25

    .line 780
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_28
    return-object v0
.end method

.method public readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 2

    .line 703
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez p0, :cond_c

    .line 705
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    :cond_c
    return-object p0
.end method

.method public removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public removeUser(I)V
    .registers 3

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .registers 2

    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->resetOverrideComponentLabelIcon()V

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    .line 982
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 983
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 984
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 985
    :goto_16
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 986
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_24
    or-int p1, v0, v1

    if-eqz p1, :cond_2b

    .line 988
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2b
    return p1
.end method

.method public setAppId(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 307
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1241
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setCeDataInode(JI)V
    .registers 4

    .line 792
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 793
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 913
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 914
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 924
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 925
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 924
    :goto_c
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 926
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDistractionFlags(II)V
    .registers 3

    .line 828
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 829
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1235
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setEnabled(IILjava/lang/String;)V
    .registers 4

    .line 711
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 712
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 713
    invoke-virtual {p1, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 714
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 907
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 908
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 918
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 919
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 918
    :goto_c
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 920
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1a

    .line 341
    iget-object p3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p3, :cond_21

    .line 343
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 346
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 348
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;
    .registers 8

    const/4 v0, 0x0

    .line 324
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 326
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_19

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 353
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setHidden(ZI)V
    .registers 3

    .line 819
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 820
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 565
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return-object p0
.end method

.method public setInstallReason(II)V
    .registers 3

    .line 735
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 736
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstalled(ZI)V
    .registers 3

    .line 722
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 723
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstantApp(ZI)V
    .registers 3

    .line 837
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 838
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setKeySetData(Lcom/android/server/pm/PackageKeySetData;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 384
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 389
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 390
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 395
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 396
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1248
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1143
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 401
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 402
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_c
    if-eqz v0, :cond_1f

    .line 413
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 414
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 416
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1e
    return v0

    .line 409
    :cond_1f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown MIME group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1254
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setNotLaunched(ZI)V
    .registers 3

    .line 810
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 811
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setOldCodePaths(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z
    .registers 4

    .line 754
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    .line 755
    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result p1

    .line 756
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1097
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1098
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 423
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 436
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 437
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_21
    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSharedUserAppId(I)V
    .registers 2

    .line 479
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 609
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setStopped(ZI)V
    .registers 3

    .line 801
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 802
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUninstallReason(II)V
    .registers 3

    .line 744
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 745
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 473
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZI",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object v1, p10

    .line 859
    invoke-virtual {v0, p10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-wide v1, p2

    .line 860
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p4

    .line 861
    invoke-virtual {v0, p4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p5

    .line 862
    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p6

    .line 863
    invoke-virtual {v0, p6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p7

    .line 864
    invoke-virtual {v0, p7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p8

    .line 865
    invoke-virtual {v0, p8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p9

    .line 866
    invoke-virtual {v0, p9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object/from16 v1, p13

    .line 867
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object/from16 v1, p14

    .line 868
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object/from16 v1, p15

    .line 869
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move/from16 v1, p16

    .line 870
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move/from16 v1, p17

    .line 871
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p11

    .line 872
    invoke-virtual {v0, p11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move v1, p12

    .line 873
    invoke-virtual {v0, p12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object/from16 v1, p18

    .line 874
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-object/from16 v1, p19

    .line 875
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    move-wide/from16 v1, p20

    .line 876
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 877
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUserState(ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .registers 25

    .line 881
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v4

    .line 882
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v7

    .line 883
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v8

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v9

    .line 884
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    move-object v10, v1

    goto :goto_2e

    .line 885
    :cond_25
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v10, v0

    .line 886
    :goto_2e
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v11

    .line 887
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v13

    .line 888
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_42

    move-object v14, v1

    goto :goto_4b

    .line 889
    :cond_42
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    move-object v14, v0

    .line 890
    :goto_4b
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_53

    move-object v15, v1

    goto :goto_5c

    .line 891
    :cond_53
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    move-object v15, v0

    .line 892
    :goto_5c
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v17

    .line 893
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v19

    .line 894
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 881
    invoke-virtual/range {v0 .. v21}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1266
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1272
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1278
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1284
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setVirtualPreload(ZI)V
    .registers 3

    .line 846
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 847
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->snapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 522
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 523
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 525
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 534
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 540
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 543
    :cond_10
    new-instance v0, Landroid/util/ArrayMap;

    .line 544
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 546
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 548
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 550
    :cond_3d
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 553
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 554
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0
.end method

.method public writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 1040
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    const-wide v0, 0x20b0000000cL

    .line 1041
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 1042
    iget p4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1044
    iget p4, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {p5, p4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p4

    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 1045
    invoke-virtual {p4, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object p3

    .line 1046
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_33
    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 1047
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_33

    const-wide v2, 0x20900000002L

    .line 1049
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p4

    .line 1048
    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_33

    .line 1052
    :cond_52
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4

    :cond_56
    return-void
.end method

.method public writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 1057
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_cc

    .line 1059
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1060
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1061
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const-wide v7, 0x10500000001L

    .line 1062
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1064
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2d

    const/4 v5, 0x2

    goto :goto_36

    .line 1066
    :cond_2d
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_35

    move v5, v7

    goto :goto_36

    :cond_35
    move v5, v1

    :goto_36
    const-wide v8, 0x10e00000002L

    .line 1071
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000003L

    .line 1072
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x1050000000aL

    .line 1073
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000004L

    .line 1074
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1075
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    if-eqz v5, :cond_88

    move v5, v1

    .line 1076
    :goto_69
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_88

    const-wide v8, 0x20900000009L

    .line 1078
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1077
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_88
    const-wide v8, 0x10800000005L

    .line 1081
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10800000006L

    .line 1082
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v5

    xor-int/2addr v5, v7

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10e00000007L

    .line 1083
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v5

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10900000008L

    .line 1086
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v5

    .line 1084
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x1050000000bL

    .line 1088
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v5

    .line 1087
    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1089
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_cc
    return-void
.end method
