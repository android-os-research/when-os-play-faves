.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/SharedUserApi;


# instance fields
.field public mAppId:I

.field public final mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final processes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field public seInfoTargetSdkVersion:I

.field public final signatures:Lcom/android/server/pm/PackageSignatures;

.field public signaturesChanged:Ljava/lang/Boolean;

.field public uidFlags:I

.field public uidPrivateFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 4

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 75
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    .line 82
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 120
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 121
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 122
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 123
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 124
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 125
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 126
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 127
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 130
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 133
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/SharedUserSetting;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 75
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    .line 82
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 102
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 103
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const/16 p1, 0x2710

    .line 105
    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 106
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 107
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string p3, "SharedUserSetting.packages"

    invoke-direct {p2, p1, p1, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 109
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 110
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string p3, "SharedUserSetting.mDisabledPackages"

    invoke-direct {p2, p1, p1, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 112
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->registerObservers()V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 208
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 210
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 211
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 215
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 216
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProcesses()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    :cond_4c
    return-void
.end method

.method public addProcesses(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 163
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 165
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProcess;

    if-nez v2, :cond_39

    .line 167
    new-instance v2, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v2, v1}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    .line 168
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 170
    :cond_39
    invoke-static {v2, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->addStateFrom(Lcom/android/server/pm/pkg/component/ParsedProcess;Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    goto :goto_a

    .line 173
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_40
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 156
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 157
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 158
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public fixSeInfoLocked()V
    .registers 6

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_80

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_e
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 272
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_40

    .line 273
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_40

    .line 276
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v3

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v3, v4, :cond_40

    .line 277
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 282
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_80

    .line 283
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_7d

    .line 284
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_5c

    goto :goto_7d

    .line 287
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v3

    or-int/2addr v2, v3

    .line 288
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 290
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_80
    :goto_80
    return-void
.end method

.method public getAppId()I
    .registers 1

    .line 359
    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return p0
.end method

.method public getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getDisabledPackageStates()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNotInstalledUserIds()[I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 310
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 311
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 312
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v3

    if-nez v1, :cond_1b

    move-object v1, v3

    goto :goto_30

    .line 316
    :cond_1b
    array-length v4, v1

    move v5, v0

    move-object v6, v1

    :goto_1e
    if-ge v5, v4, :cond_2f

    aget v7, v1, v5

    .line 317
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 318
    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v6

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    move-object v1, v6

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_33
    if-nez v1, :cond_37

    .line 323
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :cond_37
    return-object v1
.end method

.method public getPackageSettings()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getPackageStates()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 226
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 227
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 228
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_37

    .line 229
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_30

    goto :goto_37

    .line 232
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3a
    return-object v0

    .line 224
    :cond_3b
    :goto_3b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateUidFlags()I
    .registers 1

    .line 369
    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    return p0
.end method

.method public getProcesses()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getSeInfoTargetSdkVersion()I
    .registers 1

    .line 374
    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    return p0
.end method

.method public getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1

    .line 412
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    .line 400
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getUidFlags()I
    .registers 1

    .line 364
    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    return p0
.end method

.method public isPrivileged()Z
    .registers 1

    .line 239
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

.method public isSingleUser()Z
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    return v1

    .line 251
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-le v0, v2, :cond_14

    return v1

    .line 254
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-ne v0, v2, :cond_32

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 256
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result p0

    if-eqz p0, :cond_31

    move v1, v2

    :cond_31
    return v1

    :cond_32
    return v2
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/SharedUserSetting$2;-><init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public final registerObservers()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)Z
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 182
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_33

    .line 183
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    move v2, v1

    .line 184
    :goto_18
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 185
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 186
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 188
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 190
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_5b

    .line 191
    iget p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 192
    :goto_40
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    .line 193
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 194
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    or-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 196
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 199
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    const/4 p0, 0x1

    return p0
.end method

.method public snapshot()Lcom/android/server/pm/SharedUserSetting;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->snapshot()Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/SharedUserSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 7

    .line 328
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 329
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 330
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 331
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 332
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Lcom/android/server/utils/WatchedArraySet;)V

    .line 335
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 336
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    if-eqz v0, :cond_51

    .line 337
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 339
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_56

    .line 341
    new-instance v2, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    iget-object v3, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-direct {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    .line 342
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 345
    :cond_51
    iget-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 347
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public updateProcesses()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 299
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_27

    .line 300
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 302
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProcesses()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_27
    return-void
.end method
