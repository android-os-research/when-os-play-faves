.class public Lcom/android/server/media/MediaRouter2ServiceImpl;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DUMMY_REQUEST_ID:J = -0x1L

.field public static final PACKAGE_IMPORTANCE_FOR_DISCOVERY:I = 0x7d

.field public static final TAG:Ljava/lang/String; = "MR2ServiceImpl"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAllManagerRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllRouterRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOnUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1gh33IcuzzIWi4-2-GOgZ4miWRA(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$transferToRouteWithRouter2Locked$13(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4us_i5Lg3W5R6NbIX2N4YnP9DIU(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setDiscoveryRequestWithRouter2Locked$7(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6q445o3rXJZzJrDdUooi-Ve08o8(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$requestCreateSessionWithManagerLocked$19(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6tct_UWUh1cXbaSThqymkdCzqRg(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$selectRouteWithRouter2Locked$10(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7QCnWRtsQ5h2wQkd4P5W_RROTh8(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$selectRouteWithManagerLocked$20(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BKJ5u17WDeeL9t3tj6R5qNSCgWY(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$getOrCreateUserRecordLocked$25(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CC44QT-d_OKsDneYDDofZmhCoMk(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$requestCreateSessionWithRouter2Locked$9(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNHYl0RtSiwYAQP7XfEi5OJpZXs(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setRouteVolumeWithRouter2Locked$8(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$E9CQVaWtUy1VdbIPdKtlQs6b9yg(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setSessionVolumeWithRouter2Locked$14(Ljava/lang/Object;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$J63EgLM9V1trVoeo0HTVgUE4FZw(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$deselectRouteWithRouter2Locked$11(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JEw1SsPoyEsOdLsS_zF7QziVg_w(Ljava/lang/Object;Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerManagerLocked$17(Ljava/lang/Object;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIKPL018WkF7jiFCTOxYM_gj0RQ(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$unregisterRouter2Locked$4(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jm1hLssHVCIygytUr9exkp1HtE0(Lcom/android/server/media/MediaRouter2ServiceImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$new$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnM9HM9pmXlxRot3yoFhSgZjlZI(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setSessionVolumeWithManagerLocked$23(Ljava/lang/Object;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhhFpJITSd_YBTl43qaAEXPBWRw(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerRouter2Locked$3(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDkbpTaYR8I6w2hT8zmvs6MUsAY(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$transferToRouteWithManagerLocked$22(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHHhWTP3AUpj-SVxx8JvluOqx8Q(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$transferToRouteWithRouter2Locked$12(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YgADlaa4qLFVBmjxxJ8vAKEz41k(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$releaseSessionWithManagerLocked$24(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgcjdodf4r4hoIGIxTuH0NI8g5U(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$deselectRouteWithManagerLocked$21(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i1qy61epVYYyV1E7EpEE4bt7OME(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setRouteVolumeWithManagerLocked$18(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTfb5xxXtPdU06m5w-cQIzuaIug(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setDiscoveryRequestWithRouter2Locked$6(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvwJ4KlFN3k8S1f8dm3h6RPKAfI(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$unregisterRouter2Locked$5(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oybq1JHg4dJL8ec6FKlcjDT7ZMw(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$switchUser$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-BrkZA8X-AEVaFVFK1LueGfB8I(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerManagerLocked$16(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4XoBKm8d4rBCnLmQO7ma-0KFWA(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$releaseSessionWithRouter2Locked$15(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8ojnquXd0s9rdzQQDSzkuDTLQU(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$switchUser$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z1q2yDdSEzZ2Vsh2SjAR0Y5RoPQ(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$disposeUserIfNeededLocked$26(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MR2ServiceImpl"

    const/4 v1, 0x3

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 104
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mOnUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 114
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$1;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v3, 0x7d

    .line 131
    invoke-virtual {v2, v0, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 133
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 135
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$deselectRouteWithManagerLocked$21(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1060
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$deselectRouteWithRouter2Locked$11(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 810
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$disposeUserIfNeededLocked$26(Ljava/lang/Object;)V
    .registers 1

    .line 1154
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public static synthetic lambda$getOrCreateUserRecordLocked$25(Ljava/lang/Object;)V
    .registers 1

    .line 1136
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method private synthetic lambda$new$0(II)V
    .registers 6

    .line 106
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 107
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 109
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->maybeUpdateDiscoveryPreferenceForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 111
    :cond_1c
    monitor-exit p2

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static synthetic lambda$registerManagerLocked$16(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 3

    .line 926
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static synthetic lambda$registerManagerLocked$17(Ljava/lang/Object;Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 930
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRoutesToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static synthetic lambda$registerRouter2Locked$3(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    .line 668
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method public static synthetic lambda$releaseSessionWithManagerLocked$24(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    .line 1118
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$releaseSessionWithRouter2Locked$15(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    .line 865
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$requestCreateSessionWithManagerLocked$19(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 14

    .line 1019
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mrequestRouterCreateSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$requestCreateSessionWithRouter2Locked$9(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 18

    .line 779
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mrequestCreateSessionWithRouter2OnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$selectRouteWithManagerLocked$20(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1039
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$selectRouteWithRouter2Locked$10(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 795
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$setDiscoveryRequestWithRouter2Locked$6(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 699
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic lambda$setDiscoveryRequestWithRouter2Locked$7(Ljava/lang/Object;)V
    .registers 1

    .line 704
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public static synthetic lambda$setRouteVolumeWithManagerLocked$18(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    .line 975
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static synthetic lambda$setRouteVolumeWithRouter2Locked$8(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    .line 715
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static synthetic lambda$setSessionVolumeWithManagerLocked$23(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 5

    .line 1098
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setSessionVolumeWithRouter2Locked$14(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 5

    .line 850
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$switchUser$1(Ljava/lang/Object;)V
    .registers 1

    .line 615
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public static synthetic lambda$switchUser$2(Ljava/lang/Object;)V
    .registers 1

    .line 622
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public static synthetic lambda$transferToRouteWithManagerLocked$22(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1081
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$transferToRouteWithRouter2Locked$12(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 3

    .line 829
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method public static synthetic lambda$transferToRouteWithRouter2Locked$13(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 834
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static synthetic lambda$unregisterRouter2Locked$4(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 682
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic lambda$unregisterRouter2Locked$5(Ljava/lang/Object;)V
    .registers 1

    .line 686
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public static toOriginalRequestId(J)I
    .registers 2

    long-to-int p0, p0

    return p0
.end method

.method public static toRequesterId(J)I
    .registers 3

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toUniqueRequestId(II)J
    .registers 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 536
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "route must not be null"

    .line 540
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 544
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 545
    :try_start_19
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 546
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 546
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw p0

    .line 538
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1047
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1048
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 1055
    :cond_f
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1056
    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1058
    iget p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p1

    .line 1059
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda18;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1062
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, p3

    move-object v5, p4

    .line 1060
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1059
    invoke-virtual {v6, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 346
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    .line 347
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 355
    :try_start_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 356
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 356
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    throw p0

    .line 349
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10

    .line 802
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 803
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez v3, :cond_10

    return-void

    .line 809
    :cond_10
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda6;-><init>()V

    iget-object p1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 812
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, p2

    move-object v5, p3

    .line 810
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 809
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .registers 5

    .line 1147
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v0, v1, :cond_47

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 1148
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1149
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1150
    sget-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_30
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda15;-><init>()V

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1154
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_47
    return-void
.end method

.method public enforceMediaContentControlPermission()V
    .registers 7

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 154
    :try_start_c
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v5, "Must hold MEDIA_CONTENT_CONTROL permission."

    invoke-virtual {p0, v4, v0, v1, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 157
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw p0
.end method

.method public final getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .registers 4

    .line 1129
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    if-nez v0, :cond_2b

    .line 1131
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;I)V

    .line 1132
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1133
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->init()V

    .line 1134
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-ne p1, p0, :cond_2b

    .line 1135
    iget-object p0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1136
    invoke-static {p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1135
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    return-object v0
.end method

.method public getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "manager must not be null"

    .line 418
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 421
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    .line 422
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object p0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    .line 423
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    throw p0
.end method

.method public final getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 877
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 878
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_1b

    const-string p0, "MR2ServiceImpl"

    const-string/jumbo p1, "getRemoteSessionLocked: Ignoring unknown manager"

    .line 881
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 885
    :cond_1b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmRouteProviders(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2Provider;

    .line 887
    iget-boolean v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v1, :cond_2c

    .line 888
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    :cond_44
    return-object p1
.end method

.method public getSystemRoutes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 169
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 172
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_5c

    .line 173
    :try_start_20
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object p0

    if-eqz v1, :cond_3c

    .line 175
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 178
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object p0

    goto :goto_4f

    .line 180
    :cond_37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_4f

    .line 183
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    .line 186
    :goto_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_59

    .line 187
    :try_start_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5c

    .line 189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_59
    move-exception p0

    .line 186
    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method

.method public getSystemSessionInfo(Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;
    .registers 10

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 197
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 202
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 205
    :try_start_1f
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_82

    .line 206
    :try_start_22
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object p0

    if-eqz v1, :cond_63

    if-eqz p2, :cond_35

    .line 210
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v5

    goto :goto_7a

    .line 213
    :cond_35
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 214
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5b

    .line 215
    new-instance p2, Landroid/media/RoutingSessionInfo$Builder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    invoke-direct {p2, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 216
    invoke-virtual {p2, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v5

    goto :goto_7a

    :cond_5b
    const-string p0, "MR2ServiceImpl"

    const-string p1, "System provider does not have any session info."

    .line 218
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 222
    :cond_63
    new-instance p2, Landroid/media/RoutingSessionInfo$Builder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 224
    invoke-virtual {p2, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v5

    .line 226
    :goto_7a
    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_22 .. :try_end_7b} :catchall_7f

    .line 229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_7f
    move-exception p0

    .line 226
    :try_start_80
    monitor-exit v6
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p0

    .line 229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    throw p0
.end method

.method public managerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)V
    .registers 4

    .line 635
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 637
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "manager must not be null"

    .line 430
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 437
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 441
    :try_start_20
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_31

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 442
    :try_start_26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V

    .line 443
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2e

    .line 445
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 443
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 445
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    throw p0

    .line 432
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V
    .registers 18

    move-object v0, p0

    move-object v8, p1

    .line 896
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 897
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-eqz v1, :cond_2a

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerManagerLocked: Same manager already exists. packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    move-object/from16 v7, p4

    .line 905
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v3, "Must hold MEDIA_CONTENT_CONTROL permission."

    move v5, p2

    move v6, p3

    invoke-virtual {v1, v2, p3, p2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    move/from16 v1, p5

    .line 908
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v10

    .line 909
    new-instance v11, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;)V

    const/4 v1, 0x0

    .line 911
    :try_start_47
    invoke-interface {v9, v11, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_8c

    .line 916
    iget-object v1, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 925
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda11;-><init>()V

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 926
    invoke-static {v3, v4, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 925
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5a

    .line 930
    :cond_7b
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;-><init>()V

    iget-object v2, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_8c
    move-exception v0

    move-object v1, v0

    .line 913
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Media router manager died prematurely."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v0, "router must not be null"

    .line 234
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 241
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 242
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    move v7, v1

    goto :goto_2b

    :cond_2a
    move v7, v2

    .line 245
    :goto_2b
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    move v8, v1

    goto :goto_38

    :cond_37
    move v8, v2

    .line 249
    :goto_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 251
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 252
    :try_start_42
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V

    .line 254
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4a

    .line 256
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    .line 254
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    .line 256
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw p0

    .line 236
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V
    .registers 21

    move-object v0, p0

    .line 648
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 649
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRouter2Locked: Same router already exists. packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    move-object/from16 v7, p4

    move/from16 v1, p5

    .line 655
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v11

    .line 656
    new-instance v12, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v11

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZ)V

    const/4 v1, 0x0

    .line 659
    :try_start_40
    invoke-interface {v10, v12, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_5e

    .line 664
    iget-object v1, v11, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, v11, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, v11, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 668
    invoke-static {v1, v2, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_5e
    move-exception v0

    move-object v1, v0

    .line 661
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MediaRouter2 died prematurely."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "manager must not be null"

    .line 589
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 596
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 597
    :try_start_13
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 598
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 598
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw p0

    .line 591
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 7

    .line 1106
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1107
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 1113
    :cond_f
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1114
    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object p2

    .line 1116
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v0

    .line 1117
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1118
    invoke-static {v2, p0, v0, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1117
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "router must not be null"

    .line 396
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 404
    :try_start_13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 405
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 405
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw p0

    .line 398
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 7

    .line 857
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 858
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p0, :cond_f

    return-void

    .line 864
    :cond_f
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda8;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v2, -0x1

    .line 867
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 865
    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 864
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 503
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "oldSession must not be null"

    .line 504
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 509
    :try_start_13
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 510
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 510
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw p0
.end method

.method public final requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 20

    move/from16 v0, p1

    move-object v1, p0

    .line 983
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez v6, :cond_13

    return-void

    .line 988
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 990
    iget-object v2, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->findRouterRecordLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v5

    const/4 v1, 0x0

    if-nez v5, :cond_35

    const-string v2, "MR2ServiceImpl"

    const-string/jumbo v3, "requestCreateSessionWithManagerLocked: Ignoring session creation for unknown router."

    .line 992
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :try_start_28
    iget-object v3, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v3, v0, v1}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    const-string/jumbo v0, "requestCreateSessionWithManagerLocked: Failed to notify failure. Manager probably died."

    .line 997
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void

    .line 1003
    :cond_35
    iget v2, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v2, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v2

    .line 1004
    iget-object v0, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-eqz v0, :cond_51

    .line 1005
    iget-object v4, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-wide v8, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1007
    invoke-static {v8, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v0

    .line 1005
    invoke-static {v4, v7, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRequestFailedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V

    const/4 v0, 0x0

    .line 1010
    iput-object v0, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1012
    :cond_51
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    const-wide/16 v9, 0x0

    move-object v7, v0

    move-object v8, v5

    move-wide v11, v2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v7 .. v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    iput-object v0, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1018
    iget-object v0, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda26;-><init>()V

    iget-object v4, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1021
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, v1

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1019
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 20

    const-string/jumbo v0, "router must not be null"

    move-object v5, p1

    .line 311
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "oldSession must not be null"

    move-object/from16 v6, p5

    .line 312
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    move-object/from16 v7, p6

    .line 313
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-object v0, p0

    .line 317
    :try_start_1c
    iget-object v11, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_34

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 318
    :try_start_29
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 320
    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    .line 322
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception v0

    .line 320
    :try_start_32
    monitor-exit v11
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    .line 322
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v0
.end method

.method public final requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 16

    .line 724
    invoke-interface {p4}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 725
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez v4, :cond_10

    return-void

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    const-string p4, "MR2ServiceImpl"

    if-eqz p0, :cond_95

    .line 732
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 733
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object p0

    if-eqz p0, :cond_87

    .line 734
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-nez v0, :cond_2b

    goto :goto_87

    .line 741
    :cond_2b
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-virtual {p5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unmatched routing session."

    .line 743
    invoke-static {p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, v4, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void

    .line 749
    :cond_49
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 752
    iget-boolean v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 753
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 754
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p6

    if-eqz p6, :cond_75

    .line 755
    iget-object p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object p4, p4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    move-object p6, p4

    goto :goto_83

    :cond_75
    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unmatched route."

    .line 757
    invoke-static {p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, v4, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void

    :cond_83
    :goto_83
    const/4 p4, 0x0

    .line 764
    iput-object p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    goto :goto_d5

    :cond_87
    :goto_87
    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unknown request."

    .line 735
    invoke-static {p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, v4, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void

    .line 766
    :cond_95
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p0

    if-eqz p0, :cond_d5

    iget-boolean p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez p0, :cond_d5

    .line 767
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d5

    .line 769
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MODIFY_AUDIO_ROUTING permission is required to transfer to"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0, v4, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void

    :cond_d5
    :goto_d5
    move-object v6, p6

    .line 777
    iget p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p0

    .line 778
    iget-object p4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p4, p4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;-><init>()V

    iget-object p6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 781
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, p5

    move-object v7, p7

    .line 779
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 778
    invoke-virtual {p4, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public routerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 631
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 518
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "route must not be null"

    .line 522
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 526
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 527
    :try_start_19
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 528
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 528
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    throw p0

    .line 520
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1026
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1027
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 1034
    :cond_f
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1035
    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1037
    iget p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p1

    .line 1038
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1041
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, p3

    move-object v5, p4

    .line 1039
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1038
    invoke-virtual {v6, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 328
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    .line 329
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 336
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 337
    :try_start_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 338
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 338
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw p0

    .line 331
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10

    .line 787
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 788
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez v3, :cond_10

    return-void

    .line 794
    :cond_10
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda23;-><init>()V

    iget-object p1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 797
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, p2

    move-object v5, p3

    .line 795
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 794
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 275
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "preference must not be null"

    .line 276
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_38

    .line 281
    :try_start_13
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_2d

    const-string p0, "MR2ServiceImpl"

    const-string p1, "Ignoring updating discoveryRequest of null routerRecord."

    .line 283
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_35

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 286
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V

    .line 287
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_35

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception p0

    .line 287
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p0
.end method

.method public final setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6

    .line 694
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p0, p2}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 697
    :cond_9
    iput-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 698
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda19;-><init>()V

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 699
    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 698
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    invoke-direct {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>()V

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 704
    invoke-static {p2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 488
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    .line 489
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 493
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 494
    :try_start_13
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V

    .line 495
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 495
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    throw p0
.end method

.method public final setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V
    .registers 7

    .line 966
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 967
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 973
    :cond_f
    iget p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p1

    .line 974
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 977
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 975
    invoke-static {v1, p0, p1, p3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 974
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 295
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    .line 296
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 300
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 301
    :try_start_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 302
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 302
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw p0
.end method

.method public final setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 7

    .line 710
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 711
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-eqz p0, :cond_2c

    .line 714
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v1, -0x1

    .line 717
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 715
    invoke-static {v0, p0, v1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 714
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    return-void
.end method

.method public setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 572
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 579
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 580
    :try_start_13
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V

    .line 581
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 581
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    throw p0

    .line 574
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V
    .registers 7

    .line 1089
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1090
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 1096
    :cond_f
    iget p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p1

    .line 1097
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1100
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1098
    invoke-static {v1, p0, p1, p3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1097
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 382
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "uniqueSessionId must not be null"

    .line 383
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 388
    :try_start_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 389
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 389
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    throw p0
.end method

.method public final setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 7

    .line 842
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 843
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p0, :cond_f

    return-void

    .line 849
    :cond_f
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v1, -0x1

    .line 852
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 850
    invoke-static {v0, p0, v1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 849
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 5

    const-string/jumbo v0, "manager must not be null"

    .line 463
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 466
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 467
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->startScanLocked(Landroid/media/IMediaRouter2Manager;)V

    .line 468
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    .line 468
    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    throw p0
.end method

.method public final startScanLocked(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 946
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 947
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 951
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->startScan()V

    return-void
.end method

.method public stopScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 5

    const-string/jumbo v0, "manager must not be null"

    .line 475
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 479
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->stopScanLocked(Landroid/media/IMediaRouter2Manager;)V

    .line 480
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    .line 480
    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    throw p0
.end method

.method public final stopScanLocked(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 955
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 956
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 960
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->stopScan()V

    return-void
.end method

.method public switchUser()V
    .registers 7

    .line 606
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 608
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v2, v1, :cond_44

    .line 610
    iput v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 612
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    if-eqz v2, :cond_2a

    .line 614
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda24;-><init>()V

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 615
    invoke-static {v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 614
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 619
    :cond_2a
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    if-eqz p0, :cond_44

    .line 621
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 622
    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 621
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8

    const-string/jumbo v0, "manager must not be null"

    .line 554
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 555
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "route must not be null"

    .line 558
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 562
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 563
    :try_start_19
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 564
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 564
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw p0

    .line 556
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12

    .line 1068
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1069
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p0, :cond_f

    return-void

    .line 1076
    :cond_f
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1077
    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1079
    iget p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide p1

    .line 1080
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1083
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, p3

    move-object v5, p4

    .line 1081
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1080
    invoke-virtual {v6, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string/jumbo v0, "router must not be null"

    .line 364
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "route must not be null"

    .line 365
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 372
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 373
    :try_start_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 374
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 374
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw p0

    .line 367
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueSessionId must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10

    .line 817
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 818
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez v3, :cond_10

    return-void

    .line 824
    :cond_10
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    .line 825
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p0

    .line 826
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_53

    iget-boolean p1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez p1, :cond_53

    .line 827
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_53

    .line 828
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;-><init>()V

    iget-object p2, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 831
    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 829
    invoke-static {p1, p2, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 828
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_70

    .line 833
    :cond_53
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda17;-><init>()V

    iget-object v2, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 836
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p1

    move-object v1, v2

    move-object v2, v4

    move-object v4, p2

    move-object v5, p3

    .line 834
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 833
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_70
    return-void
.end method

.method public unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 6

    const-string/jumbo v0, "manager must not be null"

    .line 450
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 454
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    const/4 v3, 0x0

    .line 455
    :try_start_e
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 456
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    .line 456
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw p0
.end method

.method public final unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V
    .registers 4

    .line 935
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    if-nez p1, :cond_f

    return-void

    .line 939
    :cond_f
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 940
    iget-object v0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->dispose()V

    .line 942
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    return-void
.end method

.method public unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .registers 6

    const-string/jumbo v0, "router must not be null"

    .line 261
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    const/4 v3, 0x0

    .line 266
    :try_start_e
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 267
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    .line 267
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw p0
.end method

.method public final unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V
    .registers 8

    .line 673
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_16

    const-string p0, "MR2ServiceImpl"

    const-string p1, "Ignoring unregistering unknown router2"

    .line 675
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 679
    :cond_16
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 680
    iget-object v0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;-><init>()V

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 682
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    iget-object v0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;-><init>()V

    iget-object v2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 686
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 685
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->dispose()V

    .line 689
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    return-void
.end method
