.class public Lcom/android/server/pm/pkg/PackageStateImpl;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;,
        Lcom/android/server/pm/pkg/PackageStateImpl$Booleans;
    }
.end annotation


# instance fields
.field public final mAndroidPackage:Lcom/android/server/pm/pkg/AndroidPackageApi;

.field public final mAppId:I

.field public mBooleans:I

.field public final mCategoryOverride:I

.field public final mCpuAbiOverride:Ljava/lang/String;

.field public final mHasSharedUser:Z

.field public final mLastModifiedTime:J

.field public final mLastPackageUsageTime:[J

.field public final mLastUpdateTime:J

.field public final mLongVersionCode:J

.field public final mMimeGroups:Ljava/util/Map;
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

.field public final mPackageName:Ljava/lang/String;

.field public final mPath:Ljava/io/File;

.field public final mPrimaryCpuAbi:Ljava/lang/String;

.field public final mSecondaryCpuAbi:Ljava/lang/String;

.field public final mSharedUserAppId:I

.field public final mSigningInfo:Landroid/content/pm/SigningInfo;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsesLibraryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsesLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsesSdkLibraries:[Ljava/lang/String;

.field public final mUsesSdkLibrariesVersionsMajor:[J

.field public final mUsesStaticLibraries:[Ljava/lang/String;

.field public final mUsesStaticLibrariesVersions:[J

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mAndroidPackage:Lcom/android/server/pm/pkg/AndroidPackageApi;

    .line 154
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 155
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isExternalStorage()Z

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 156
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 157
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p2

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 158
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p2

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 159
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result p2

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 160
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 161
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isRequiredForSystemUser()Z

    move-result p2

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 162
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p2

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 164
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mVolumeUuid:Ljava/lang/String;

    .line 166
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mAppId:I

    .line 167
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mCategoryOverride:I

    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mCpuAbiOverride:Ljava/lang/String;

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastModifiedTime:J

    .line 170
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastUpdateTime:J

    .line 171
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLongVersionCode:J

    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mMimeGroups:Ljava/util/Map;

    .line 173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPath:Ljava/io/File;

    .line 174
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 176
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mHasSharedUser:Z

    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSharedUserAppId:I

    .line 178
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesSdkLibraries:[Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesSdkLibrariesVersionsMajor:[J

    .line 180
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesStaticLibraries:[Ljava/lang/String;

    .line 181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesStaticLibrariesVersions:[J

    .line 182
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesLibraryInfos:Ljava/util/List;

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesLibraryFiles:Ljava/util/List;

    .line 184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isForceQueryableOverride()Z

    move-result p2

    const/16 v0, 0x200

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isHiddenUntilInstalled()Z

    move-result p2

    const/16 v0, 0x400

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 186
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result p2

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 187
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result p2

    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 188
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastPackageUsageTime()[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastPackageUsageTime:[J

    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p2

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pkg/PackageStateImpl;->setBoolean(IZ)V

    .line 190
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 192
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 194
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUserStates:Landroid/util/SparseArray;

    const/4 p2, 0x0

    :goto_114
    if-ge p2, p1, :cond_12e

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUserStates:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserState;

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->copy(Lcom/android/server/pm/pkg/PackageUserState;)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_114

    :cond_12e
    return-void
.end method

.method public static copy(Lcom/android/server/pm/pkg/PackageStateInternal;)Lcom/android/server/pm/pkg/PackageState;
    .registers 3

    .line 55
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateImpl;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/pkg/PackageStateImpl;-><init>(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-object v0
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mAndroidPackage:Lcom/android/server/pm/pkg/AndroidPackageApi;

    return-object p0
.end method

.method public getAppId()I
    .registers 1

    .line 581
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mAppId:I

    return p0
.end method

.method public final getBoolean(I)Z
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/pm/pkg/PackageStateImpl$Booleans$Flags;
        .end annotation
    .end param

    .line 105
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public getBooleans()I
    .registers 1

    .line 561
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    return p0
.end method

.method public getCategoryOverride()I
    .registers 1

    .line 586
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mCategoryOverride:I

    return p0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mCpuAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModifiedTime()J
    .registers 3

    .line 596
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastPackageUsageTime()[J
    .registers 1

    .line 666
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastPackageUsageTime:[J

    return-object p0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 601
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getLongVersionCode()J
    .registers 3

    .line 606
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLongVersionCode:J

    return-wide v0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .registers 1
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

    .line 611
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mMimeGroups:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/io/File;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserAppId()I
    .registers 1

    .line 283
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSharedUserAppId:I

    return p0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 1

    .line 671
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mSigningInfo:Landroid/content/pm/SigningInfo;

    return-object p0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 676
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUserStates:Landroid/util/SparseArray;

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

    .line 661
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesLibraryFiles:Ljava/util/List;

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

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .registers 1

    .line 636
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesSdkLibraries:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesSdkLibrariesVersionsMajor:[J

    return-object p0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .registers 1

    .line 646
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesStaticLibraries:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 1

    .line 651
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mUsesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public getVersionCode()J
    .registers 3

    .line 273
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mLongVersionCode:J

    return-wide v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hasSharedUser()Z
    .registers 1

    .line 278
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mHasSharedUser:Z

    return p0
.end method

.method public isExternalStorage()Z
    .registers 2

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isForceQueryableOverride()Z
    .registers 2

    const/16 v0, 0x200

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isHasSharedUser()Z
    .registers 1

    .line 631
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mHasSharedUser:Z

    return p0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 2

    const/16 v0, 0x400

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstallPermissionsFixed()Z
    .registers 2

    const/16 v0, 0x800

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isOdm()Z
    .registers 2

    const/16 v0, 0x100

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isOem()Z
    .registers 2

    const/16 v0, 0x8

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isPrivileged()Z
    .registers 2

    const/4 v0, 0x4

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isProduct()Z
    .registers 2

    const/16 v0, 0x20

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isRequiredForSystemUser()Z
    .registers 2

    const/16 v0, 0x80

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .registers 2

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystemExt()Z
    .registers 2

    const/16 v0, 0x40

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    const/16 v0, 0x1000

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .registers 2

    const/16 v0, 0x2000

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isVendor()Z
    .registers 2

    const/16 v0, 0x10

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final setBoolean(IZ)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/pm/pkg/PackageStateImpl$Booleans$Flags;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    .line 98
    iget p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    goto :goto_e

    .line 100
    :cond_8
    iget p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    :goto_e
    return-void
.end method

.method public setBooleans(I)Lcom/android/server/pm/pkg/PackageStateImpl;
    .registers 2

    .line 681
    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl;->mBooleans:I

    return-object p0
.end method
