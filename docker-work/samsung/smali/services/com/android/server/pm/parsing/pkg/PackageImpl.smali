.class public Lcom/android/server/pm/parsing/pkg/PackageImpl;
.super Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field public mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field public mBaseAppInfoFlags:I

.field public mBaseAppInfoPrivateFlags:I

.field public mBaseAppInfoPrivateFlagsExt:I

.field public mBooleans:I

.field public final manifestPackageName:Ljava/lang/String;

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

.field public primaryCpuAbi:Ljava/lang/String;

.field public seInfo:Ljava/lang/String;

.field public secondaryCpuAbi:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public uid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 551
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 535
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 536
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 540
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 541
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    .line 547
    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    const/4 p1, -0x1

    .line 124
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 190
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.method private assignDerivedFields()V
    .registers 5

    const/4 v0, 0x0

    .line 208
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    .line 209
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    .line 210
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "user_de"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-void
.end method

.method public static buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2

    .line 77
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 78
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 80
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public static forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 12

    .line 62
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, ""

    .line 86
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    return-object p0
.end method

.method public static forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method


# virtual methods
.method public addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 232
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_19

    .line 442
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    return-object p0
.end method

.method public bridge synthetic capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .registers 1

    .line 748
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .registers 1

    .line 752
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object p0
.end method

.method public final getBoolean(I)Z
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans$Flags;
        .end annotation
    .end param

    .line 176
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public getLongVersionCode()J
    .registers 3

    .line 221
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-static {v0, p0}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManifestPackageName()Ljava/lang/String;
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeLibraryRootDir()Ljava/lang/String;
    .registers 1

    .line 582
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 593
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryNativeLibraryDir()Ljava/lang/String;
    .registers 1

    .line 605
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 669
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return p0
.end method

.method public hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 196
    invoke-super {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->hideAsParsed()Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic hideAsParsed()Ljava/lang/Object;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public isCoreApp()Z
    .registers 2

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isFactoryTest()Z
    .registers 2

    const/4 v0, 0x4

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isNativeLibraryRootRequiresIsa()Z
    .registers 1

    .line 587
    iget-boolean p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return p0
.end method

.method public isOdm()Z
    .registers 2

    const/16 v0, 0x100

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isOem()Z
    .registers 2

    const/16 v0, 0x20

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isPrivileged()Z
    .registers 2

    const/16 v0, 0x10

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isProduct()Z
    .registers 2

    const/16 v0, 0x80

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSignedWithPlatformKey()Z
    .registers 2

    const/16 v0, 0x200

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isStub()Z
    .registers 2

    const/16 v0, 0x800

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .registers 2

    const/4 v0, 0x2

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystemExt()Z
    .registers 2

    const/16 v0, 0x8

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isVendor()Z
    .registers 2

    const/16 v0, 0x40

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 7

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v0, :cond_21

    .line 452
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 453
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_1e

    .line 454
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 459
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_28
    if-ge v2, v0, :cond_3f

    .line 461
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 462
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_3c

    .line 463
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 468
    :cond_3f
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_46
    if-ge v2, v0, :cond_5d

    .line 470
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 471
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_5a

    .line 472
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5d
    return-object p0
.end method

.method public bridge synthetic markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 252
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 358
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 362
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1f
    if-ge v2, v0, :cond_2f

    .line 364
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 368
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_36
    if-ge v2, v0, :cond_46

    .line 370
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 374
    :cond_46
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4c
    if-ge v1, v0, :cond_5c

    .line 376
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_5c
    return-object p0
.end method

.method public bridge synthetic setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans$Flags;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    .line 168
    iget p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    goto :goto_e

    .line 170
    :cond_8
    iget p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    :goto_e
    return-object p0
.end method

.method public setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3

    const/4 v0, 0x1

    .line 481
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 276
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 282
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/4 v0, 0x4

    .line 692
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 680
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x100

    .line 728
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x20

    .line 710
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_20

    .line 318
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 321
    :cond_20
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_39

    .line 323
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 326
    :cond_39
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_40
    if-ge v1, p1, :cond_52

    .line 328
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 331
    :cond_52
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_59
    if-ge v1, p1, :cond_6b

    .line 333
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 336
    :cond_6b
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_72
    if-ge v1, p1, :cond_84

    .line 338
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 341
    :cond_84
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_8b
    if-ge v1, p1, :cond_9d

    .line 343
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 346
    :cond_9d
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_a3
    if-ge v0, p1, :cond_b5

    .line 348
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_b5
    return-object p0
.end method

.method public bridge synthetic setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 270
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x10

    .line 704
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x80

    .line 722
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 264
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x200

    .line 734
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 258
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 5

    .line 427
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 429
    array-length p1, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_15

    .line 431
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    return-object p0
.end method

.method public bridge synthetic setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x800

    .line 674
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/4 v0, 0x2

    .line 686
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x8

    .line 698
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 740
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return-object p0
.end method

.method public bridge synthetic setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3

    const/16 v0, 0x40

    .line 716
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 486
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    return-object p0
.end method

.method public setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 492
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 498
    invoke-super {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 499
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 500
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 501
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 502
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 503
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 504
    iget-boolean v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 505
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v1, ":complete"

    .line 509
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 510
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 521
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 522
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 527
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 528
    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
