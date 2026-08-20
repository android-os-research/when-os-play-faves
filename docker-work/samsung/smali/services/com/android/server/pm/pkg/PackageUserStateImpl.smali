.class public Lcom/android/server/pm/pkg/PackageUserStateImpl;
.super Lcom/android/server/utils/WatchableImpl;
.source "PackageUserStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mCeDataInode:J

.field public mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDistractionFlags:I

.field public mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnabledState:I

.field public mFirstInstallTime:J

.field public mHarmfulAppWarning:Ljava/lang/String;

.field public mHidden:Z

.field public mInstallReason:I

.field public mInstalled:Z

.field public mInstantApp:Z

.field public mLastDisableAppCaller:Ljava/lang/String;

.field public mNotLaunched:Z

.field public mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field public mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end field

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mSplashScreenTheme:Ljava/lang/String;

.field public mStopped:Z

.field public mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;"
        }
    .end annotation
.end field

.field public mUninstallReason:I

.field public mVirtualPreload:Z

.field public mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/utils/Watchable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 118
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .registers 6

    .line 122
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 123
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 124
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    const/4 v0, 0x0

    if-nez p1, :cond_16

    move-object p1, v0

    goto :goto_1a

    .line 125
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_1a
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 126
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p1, :cond_22

    move-object p1, v0

    goto :goto_26

    .line 127
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_26
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 128
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 129
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_32

    move-object p1, v0

    goto :goto_36

    .line 130
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    :goto_36
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 131
    iget-wide v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iput-wide v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 132
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 133
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    .line 134
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    .line 135
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    .line 136
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 137
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    .line 138
    iget-boolean p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    .line 139
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 140
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 141
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 142
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 143
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 144
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 145
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_76

    move-object p1, v0

    goto :goto_7a

    :cond_76
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    :goto_7a
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 146
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_81

    goto :goto_85

    .line 147
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    :goto_85
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 148
    iget-wide p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    .line 149
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_c8

    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_c8

    .line 561
    :cond_13
    check-cast p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 563
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 564
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    if-ne v2, v3, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    if-ne v2, v3, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    if-ne v2, v3, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    if-ne v2, v3, :cond_c6

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    if-ne v2, v3, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    if-ne v2, v3, :cond_c6

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    iget-boolean v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    if-ne v2, v3, :cond_c6

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    if-ne v2, v3, :cond_c6

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    if-ne v2, v3, :cond_c6

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    if-ne v2, v3, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 576
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 577
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 578
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 579
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 580
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 581
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 582
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c6

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 585
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c6

    goto :goto_c7

    :cond_c6
    move v0, v1

    :goto_c7
    return v0

    :cond_c8
    :goto_c8
    return v1
.end method

.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_a
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz p0, :cond_30

    .line 257
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/overlay/OverlayPaths;

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_20

    .line 261
    :cond_30
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getCeDataInode()J
    .registers 3

    .line 650
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public getComponentLabelIconOverrideMap()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 733
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
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

    .line 225
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_a

    .line 226
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public bridge synthetic getDisabledComponents()Ljava/util/Set;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponents()Landroid/util/ArraySet;

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

    .line 213
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getDisabledComponentsWatched()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getDistractionFlags()I
    .registers 1

    .line 675
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

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

    .line 232
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_a

    .line 233
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public bridge synthetic getEnabledComponents()Ljava/util/Set;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponents()Landroid/util/ArraySet;

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

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getEnabledComponentsWatched()Lcom/android/server/utils/WatchedArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public getEnabledState()I
    .registers 1

    .line 690
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    return p0
.end method

.method public getFirstInstallTime()J
    .registers 3

    .line 738
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 1

    .line 705
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallReason()I
    .registers 1

    .line 695
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    return p0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    .line 715
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object p0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 3
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

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_a
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

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

    .line 548
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p0, :cond_8

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSnapshot()Lcom/android/server/utils/SnapshotCache;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 1

    .line 720
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

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

    .line 728
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getUninstallReason()I
    .registers 1

    .line 700
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    return p0
.end method

.method public getWatchable()Lcom/android/server/utils/Watchable;
    .registers 1

    .line 743
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 595
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 596
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 597
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 598
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 599
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 600
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 601
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 602
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 603
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 604
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 605
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 606
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 607
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 608
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 609
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 610
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 611
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 612
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 613
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 614
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 615
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_c

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_c

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isHidden()Z
    .registers 1

    .line 670
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    return p0
.end method

.method public isInstalled()Z
    .registers 1

    .line 655
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    return p0
.end method

.method public isInstantApp()Z
    .registers 1

    .line 680
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    return p0
.end method

.method public isNotLaunched()Z
    .registers 1

    .line 665
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    return p0
.end method

.method public isStopped()Z
    .registers 1

    .line 660
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    return p0
.end method

.method public isSuspended()Z
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVirtualPreload()Z
    .registers 1

    .line 685
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;-><init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public final onChanged()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_7

    .line 154
    invoke-interface {v0, v0}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 156
    :cond_7
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 276
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 278
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 279
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_18

    :cond_16
    move-object v0, v1

    move-object v2, v0

    .line 283
    :goto_18
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    .line 284
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v0, v3

    :goto_29
    if-eqz v0, :cond_5b

    if-nez p2, :cond_3f

    if-nez p3, :cond_3f

    .line 288
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 290
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    goto :goto_58

    .line 293
    :cond_3f
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_4f

    .line 294
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 295
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 298
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    :cond_5b
    return v0
.end method

.method public putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_10

    .line 334
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 335
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 337
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 338
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 339
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    :cond_2c
    return-object p0
.end method

.method public removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_a

    .line 348
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    :cond_a
    return-object p0
.end method

.method public resetOverrideComponentLabelIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method

.method public setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3

    .line 403
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 404
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setComponentLabelIconOverrideMap(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 530
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 533
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setComponentLabelIconOverrideMap(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 780
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_13

    .line 359
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 360
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 362
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 363
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p1, :cond_9

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 398
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setDisabledComponentsWatched(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 753
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 433
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_13

    .line 373
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 374
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 376
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p1, :cond_9

    .line 386
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 388
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setEnabledComponentsWatched(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 451
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 452
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3

    .line 540
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    .line 541
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 475
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 427
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4

    .line 457
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 458
    const-class v0, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 409
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 439
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 421
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    .line 422
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_14
    if-nez p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 176
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    return v1

    .line 179
    :cond_1f
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    const/4 p0, 0x1

    return p0
.end method

.method public setSharedLibraryOverlayPaths(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 491
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 494
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setSharedLibraryOverlayPaths(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_10

    .line 192
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 193
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 195
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/overlay/OverlayPaths;

    .line 196
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    return v1

    :cond_20
    const/4 v0, 0x1

    if-eqz p2, :cond_33

    .line 199
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_33

    .line 204
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return v0

    .line 200
    :cond_33
    :goto_33
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3c

    move v1, v0

    .line 201
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return v1
.end method

.method public setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 415
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 515
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 518
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setSuspendParams(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4

    .line 466
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 467
    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 445
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    return-object p0
.end method

.method public setWatchable(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    return-object p0
.end method
