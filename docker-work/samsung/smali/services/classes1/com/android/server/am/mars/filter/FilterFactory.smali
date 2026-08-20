.class public Lcom/android/server/am/mars/filter/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;
    }
.end annotation


# static fields
.field public static final IMPORTANT_PKG_TYPE_ACCESSIBILITY:I = 0x14

.field public static final IMPORTANT_PKG_TYPE_ACTIVE_MUSIC_RECORD:I = 0x7

.field public static final IMPORTANT_PKG_TYPE_ACTIVE_SENSOR:I = 0x18

.field public static final IMPORTANT_PKG_TYPE_ACTIVE_TRAFFIC:I = 0x8

.field public static final IMPORTANT_PKG_TYPE_ALLOWLIST:I = 0x15

.field public static final IMPORTANT_PKG_TYPE_AOD_CLOCK:I = 0x1a

.field public static final IMPORTANT_PKG_TYPE_APP_CAST:I = 0x19

.field public static final IMPORTANT_PKG_TYPE_BACKUP_SERVICE:I = 0x1b

.field public static final IMPORTANT_PKG_TYPE_BLUETOOTH_CONNECTED:I = 0x1c

.field public static final IMPORTANT_PKG_TYPE_COCKTAILBAR:I = 0x12

.field public static final IMPORTANT_PKG_TYPE_DEFAULT_APP:I = 0xb

.field public static final IMPORTANT_PKG_TYPE_DEVICE_ADMIN:I = 0x9

.field public static final IMPORTANT_PKG_TYPE_DISABLE_FORCESTOP:I = 0x11

.field public static final IMPORTANT_PKG_TYPE_HOME:I = 0xc

.field public static final IMPORTANT_PKG_TYPE_IMPORTANT_ROLE:I = 0x17

.field public static final IMPORTANT_PKG_TYPE_JOBSCHEDULER:I = 0x13

.field public static final IMPORTANT_PKG_TYPE_LATEST_PROTECTED:I = 0x2

.field public static final IMPORTANT_PKG_TYPE_LOCK_SCREEN:I = 0xe

.field public static final IMPORTANT_PKG_TYPE_NO_APP_ICON:I = 0x5

.field public static final IMPORTANT_PKG_TYPE_ONGOING_NOTIFICATION:I = 0x3

.field public static final IMPORTANT_PKG_TYPE_QUICK_TILE:I = 0x16

.field public static final IMPORTANT_PKG_TYPE_RECENTLY_USED:I = 0x1

.field public static final IMPORTANT_PKG_TYPE_RUNNING_LOCATION:I = 0x10

.field public static final IMPORTANT_PKG_TYPE_SYSTEM:I = 0xf

.field public static final IMPORTANT_PKG_TYPE_TOP:I = 0xd

.field public static final IMPORTANT_PKG_TYPE_VPN_SERVICE:I = 0x6

.field public static final IMPORTANT_PKG_TYPE_WALLPAPER:I = 0xa

.field public static final IMPORTANT_PKG_TYPE_WIDGET:I = 0x4

.field public static final MAX_FILTERS:I = 0x1d


# instance fields
.field public filterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/mars/filter/IFilter;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterFactory;
    .registers 1

    .line 51
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_17

    .line 95
    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/IFilter;

    invoke-interface {v1}, Lcom/android/server/am/mars/filter/IFilter;->deInit()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getFilter(I)Lcom/android/server/am/mars/filter/IFilter;
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/IFilter;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterFactory;->setContext(Landroid/content/Context;)V

    .line 57
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/SystemFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/SystemFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a0
    const/16 p1, 0x1d

    if-ge v0, p1, :cond_1b8

    .line 86
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/mars/filter/IFilter;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/server/am/mars/filter/IFilter;->init(Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a0

    :cond_1b8
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    return-void
.end method
