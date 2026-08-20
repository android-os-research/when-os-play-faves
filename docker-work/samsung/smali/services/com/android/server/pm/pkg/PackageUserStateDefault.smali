.class public Lcom/android/server/pm/pkg/PackageUserStateDefault;
.super Ljava/lang/Object;
.source "PackageUserStateDefault.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCeDataInode()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getDisabledComponents()Ljava/util/Set;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateDefault;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDistractionFlags()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getEnabledComponents()Ljava/util/Set;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateDefault;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledState()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getFirstInstallTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallReason()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUninstallReason()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInstalled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isInstantApp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNotLaunched()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isStopped()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspended()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isVirtualPreload()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
