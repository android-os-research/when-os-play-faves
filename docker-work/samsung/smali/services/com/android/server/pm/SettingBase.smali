.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# instance fields
.field public final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPkgFlags:I

.field public mPkgPrivateFlags:I

.field public final mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 101
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 101
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    if-eqz p1, :cond_16

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final copySettingBase(Lcom/android/server/pm/SettingBase;)V
    .registers 3

    .line 116
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 117
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 118
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object p1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public getFlags()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    return p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object p0
.end method

.method public getPrivateFlags()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public onChanged()V
    .registers 1

    .line 92
    invoke-static {}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->onPackageStateChanged()V

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public setFlags(I)Lcom/android/server/pm/SettingBase;
    .registers 3

    const v0, 0x40101

    and-int/2addr p1, v0

    .line 128
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkgFlags(II)Lcom/android/server/pm/SettingBase;
    .registers 3

    .line 154
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 155
    iput p2, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 156
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/SettingBase;
    .registers 3

    const v0, 0x402e0208

    and-int/2addr p1, v0

    .line 137
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
