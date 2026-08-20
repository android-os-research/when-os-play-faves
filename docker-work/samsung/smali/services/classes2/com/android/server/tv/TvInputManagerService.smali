.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final APP_TAG_SELF:I = 0x0

.field public static final DEBUG:Z = false

.field public static final DVB_DIRECTORY:Ljava/lang/String; = "/dev/dvb"

.field public static final PERMISSION_ACCESS_WATCHED_PROGRAMS:Ljava/lang/String; = "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

.field public static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field public static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mRunningProfiles:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionIdToSessionStateMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field public final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchLogHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildTvContentRatingSystemListLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMainLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->stopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsFrontEndDevicePattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsFrontEndInAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smhasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    const-string v0, "^adapter([0-9]+)$"

    .line 141
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    const-string v0, "^frontend([0-9]+)$"

    .line 143
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 174
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 175
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 177
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener-IA;)V

    invoke-direct {v1, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 181
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 183
    monitor-enter v0

    .line 184
    :try_start_62
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 185
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public static getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    if-eqz p1, :cond_11

    .line 2772
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVideoUnavailableReasonForStatsd(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x64

    add-int/2addr p0, v0

    if-lt p0, v0, :cond_b

    const/16 v1, 0x76

    if-le p0, v1, :cond_a

    goto :goto_b

    :cond_a
    move v0, p0

    :cond_b
    :goto_b
    return v0
.end method

.method public static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    .line 313
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    .line 312
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 797
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 800
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 801
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz p2, :cond_39

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    .line 802
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 803
    :cond_39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 806
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 807
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 808
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_41

    .line 811
    :cond_6b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final buildTvContentRatingSystemListLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 437
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    .line 442
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 443
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 444
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_35

    goto :goto_22

    :cond_35
    const-string v2, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    .line 449
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_60

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 456
    :cond_60
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 457
    invoke-static {v1, v0}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v0

    .line 456
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_6e
    return-void
.end method

.method public final buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 321
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 322
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 329
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 330
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "TvInputManagerService"

    if-nez v8, :cond_66

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping TV input "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": it does not require the permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 336
    :cond_66
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {v1, v8}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 338
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v5, :cond_94

    .line 343
    new-instance v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v5, p0, v8, p1, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState-IA;)V

    .line 344
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {p0, v8, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_ae

    .line 347
    :cond_94
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ae

    .line 351
    :cond_a0
    :try_start_a0
    new-instance v6, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v5}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v5

    .line 352
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ae} :catch_b9

    .line 358
    :goto_ae
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    :catch_b9
    move-exception v5

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load TV input "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 362
    :cond_d2
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    new-instance v2, Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_144

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/tv/TvInputInfo;

    .line 366
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const/4 v9, 0x1

    if-nez v8, :cond_112

    .line 372
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_117

    :cond_112
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v9

    :goto_117
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 373
    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v9, :cond_12f

    .line 376
    new-instance v9, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v9, v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$TvInputState-IA;)V

    .line 378
    :cond_12f
    invoke-static {v9, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 379
    invoke-virtual {p0, v5}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v5

    invoke-static {v9, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 380
    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    goto :goto_f0

    .line 384
    :cond_144
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14c
    :goto_14c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_166

    .line 386
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_14c

    :cond_166
    if-eqz p2, :cond_14c

    .line 389
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 390
    array-length v6, p2

    const/4 v7, 0x0

    :goto_178
    if-ge v7, v6, :cond_14c

    aget-object v8, p2, v7

    .line 391
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18d

    .line 392
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 393
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_14c

    :cond_18d
    add-int/lit8 v7, v7, 0x1

    goto :goto_178

    .line 400
    :cond_190
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19c
    :goto_19c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 401
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19c

    .line 402
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 403
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v3, :cond_1cf

    .line 405
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 407
    :cond_1cf
    invoke-virtual {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_19c

    .line 412
    :cond_1d3
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 413
    :cond_1df
    :goto_1df
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1ff

    .line 414
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 415
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_1df

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1df

    .line 416
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1df

    .line 420
    :cond_1ff
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 421
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)V

    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 583
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    const-string v1, "error in onSessionReleased"

    const-string v2, "TvInputManagerService"

    if-eqz v0, :cond_1a

    .line 585
    :try_start_a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 587
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 593
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2e

    .line 594
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 596
    :try_start_51
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_2e

    :catch_5d
    move-exception v3

    .line 598
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 602
    :cond_62
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 817
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 818
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 823
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    .line 826
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    const/4 v1, 0x1

    .line 831
    :try_start_1c
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 832
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 835
    :cond_2e
    aget-object v2, p2, v1

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v0, v3, v4}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3b} :catch_3d

    :goto_3b
    move p0, v1

    goto :goto_58

    :catch_3d
    move-exception p1

    const-string v0, "TvInputManagerService"

    const-string v2, "error in createSession"

    .line 839
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 p0, 0x0

    .line 844
    :goto_58
    aget-object p1, p2, v1

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    return p0
.end method

.method public final getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 5

    .line 666
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 669
    :try_start_5
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_27

    .line 671
    :catch_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create package context as user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 674
    :goto_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            "II)",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p2

    .line 2781
    invoke-virtual {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->hasAccessWatchedProgramsPermission(II)Z

    move-result v3

    .line 2782
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2783
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 2786
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    if-ne v6, v1, :cond_3d

    const/4 v6, 0x0

    .line 2787
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v8, p1

    :goto_3b
    move v15, v7

    goto :goto_84

    .line 2790
    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_70

    .line 2792
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v8, p1

    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2793
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_70
    move-object/from16 v8, p1

    .line 2795
    :goto_72
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/tv/TvInputManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    const/4 v7, 0x2

    goto :goto_3b

    :cond_82
    const/4 v7, 0x3

    goto :goto_3b

    .line 2799
    :goto_84
    new-instance v7, Landroid/media/tv/TunedInfo;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v10

    if-eqz v3, :cond_91

    .line 2801
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_92

    :cond_91
    const/4 v9, 0x0

    :goto_92
    move-object v11, v9

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v12

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v13

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v14

    .line 2806
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/media/tv/TunedInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V

    .line 2799
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_ac
    move-object/from16 v8, p1

    goto/16 :goto_1b

    :cond_b0
    return-object v2
.end method

.method public final getInputUid(Landroid/media/tv/TvInputInfo;)I
    .registers 4

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 427
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get UID for  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_13

    .line 681
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState-IA;)V

    .line 682
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    return-object v0
.end method

.method public final getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 689
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    .line 690
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz p0, :cond_11

    return-object p0

    .line 692
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service state not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (userId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 720
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 725
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 727
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session not yet created for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 699
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 700
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 706
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-eqz p0, :cond_37

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_36

    .line 711
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p3

    if-ne p2, p3, :cond_17

    goto :goto_36

    .line 712
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal access to the session with token "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return-object p0

    .line 708
    :cond_37
    new-instance p0, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Session state not found for token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    .line 3677
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$UserState;

    return-object p0
.end method

.method public final hasAccessWatchedProgramsPermission(II)Z
    .registers 4

    .line 2813
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isSystemApp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2819
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_12

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v0, p1

    :catch_12
    :cond_12
    return v0
.end method

.method public final logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 14

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2b

    .line 2846
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v1

    .line 2847
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v2

    if-nez v2, :cond_13

    move v2, p0

    .line 2851
    :cond_13
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v3

    .line 2852
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 2854
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p3

    move v9, p3

    goto :goto_28

    :cond_27
    move v9, v0

    :goto_28
    move v7, v2

    move v8, v3

    goto :goto_2f

    :cond_2b
    const/4 v1, -0x1

    move v7, v0

    move v8, v7

    move v9, v8

    :goto_2f
    const/16 v2, 0x147

    const/4 p3, 0x2

    new-array v3, p3, [I

    .line 2857
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p3

    aput p3, v3, v0

    aput v1, v3, p0

    const-string/jumbo p0, "tif_player"

    const-string/jumbo p3, "tv_input_service"

    filled-new-array {p0, p3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v6

    move v5, p1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method public final notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1035
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_5d

    .line 1038
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 1039
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1040
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_TUNED_INFO"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 1041
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1040
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_5a

    .line 1044
    :cond_3a
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1045
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1044
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object v3

    .line 1046
    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputManagerCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception v2

    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated current channel infos to callback"

    .line 1048
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1051
    :cond_5d
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 961
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 964
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report added input to callback"

    .line 966
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 969
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 977
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 980
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report removed input to callback"

    .line 982
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 985
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string p0, "failed to report state change to callback"

    const-string v0, "TvInputManagerService"

    if-nez p4, :cond_2e

    .line 1012
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p4

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p4, :cond_26

    .line 1015
    :try_start_11
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v2

    .line 1017
    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1020
    :cond_26
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_36

    .line 1023
    :cond_2e
    :try_start_2e
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 1025
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method public final notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 993
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 996
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report updated input to callback"

    .line 998
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1001
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 196
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_1f

    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 198
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 200
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 201
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw p0

    .line 203
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 190
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService-IA;)V

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eq v1, p1, :cond_d

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_d
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 214
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 215
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final registerBroadcastReceivers()V
    .registers 12

    .line 219
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 287
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 288
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 289
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    .line 290
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPED"

    .line 291
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 863
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_47
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_5} :catch_47
    .catchall {:try_start_1 .. :try_end_5} :catchall_44

    .line 864
    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 865
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    .line 866
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_19

    .line 867
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    .line 869
    :cond_19
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 870
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->release()V

    .line 872
    :cond_2b
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 873
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 874
    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 875
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3a} :catch_42
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_3a} :catch_42
    .catchall {:try_start_5 .. :try_end_3a} :catchall_40

    :cond_3a
    if-eqz v1, :cond_53

    .line 881
    :goto_3c
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    goto :goto_53

    :catchall_40
    move-exception p0

    goto :goto_57

    :catch_42
    move-exception p2

    goto :goto_49

    :catchall_44
    move-exception p0

    move-object v1, v0

    goto :goto_57

    :catch_47
    move-exception p2

    move-object v1, v0

    :goto_49
    :try_start_49
    const-string v2, "TvInputManagerService"

    const-string v3, "error in releaseSession"

    .line 878
    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_40

    if-eqz v1, :cond_53

    goto :goto_3c

    .line 884
    :cond_53
    :goto_53
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-object v1

    :goto_57
    if-eqz v1, :cond_5c

    .line 881
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    .line 883
    :cond_5c
    throw p0
.end method

.method public final releaseSessionOfUserLocked(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 531
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 533
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 534
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 538
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 540
    :try_start_46
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V

    const/4 v4, 0x0

    .line 541
    invoke-static {v3, v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 542
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 543
    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5a} :catch_63
    .catchall {:try_start_46 .. :try_end_5a} :catchall_61

    const/4 v2, 0x1

    :cond_5b
    if-eqz v2, :cond_6e

    .line 550
    :goto_5d
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    goto :goto_6e

    :catchall_61
    move-exception v0

    goto :goto_72

    :catch_63
    move-exception v4

    :try_start_64
    const-string v5, "TvInputManagerService"

    const-string v6, "error in release"

    .line 547
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    if-eqz v2, :cond_6e

    goto :goto_5d

    .line 553
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    goto :goto_3a

    :goto_72
    if-eqz v2, :cond_77

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 552
    :cond_77
    throw v0

    :cond_78
    return-void
.end method

.method public final removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 890
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 891
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_e

    const/4 v1, 0x0

    .line 895
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 899
    :cond_e
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-nez v1, :cond_23

    const-string p0, "TvInputManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    .line 902
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 908
    :cond_23
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-eqz v2, :cond_5f

    .line 910
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 912
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 917
    :cond_5f
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v0, :cond_7f

    .line 921
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 923
    :cond_7f
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 926
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 927
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 929
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeUser(I)V
    .registers 11

    .line 606
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_b

    .line 609
    monitor-exit v0

    return-void

    .line 613
    :cond_b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 614
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_e6

    if-eqz v7, :cond_19

    .line 616
    :try_start_2c
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/ITvInputSession;->release()V

    .line 617
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 618
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 619
    invoke-static {v5, v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3f} :catch_48
    .catchall {:try_start_2c .. :try_end_3f} :catchall_46

    const/4 v4, 0x1

    :cond_40
    if-eqz v4, :cond_19

    .line 626
    :goto_42
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_e6

    goto :goto_19

    :catchall_46
    move-exception p1

    goto :goto_53

    :catch_48
    move-exception v5

    :try_start_49
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    .line 623
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_46

    if-eqz v4, :cond_19

    goto :goto_42

    :goto_53
    if-eqz v4, :cond_58

    .line 626
    :try_start_55
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 628
    :cond_58
    throw p1

    .line 631
    :cond_59
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 634
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6c
    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 635
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 636
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5
    :try_end_82
    .catchall {:try_start_55 .. :try_end_82} :catchall_e6

    if-eqz v5, :cond_98

    .line 638
    :try_start_84
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8f} :catch_90
    .catchall {:try_start_84 .. :try_end_8f} :catchall_e6

    goto :goto_98

    :catch_90
    move-exception v5

    :try_start_91
    const-string v7, "TvInputManagerService"

    const-string v8, "error in unregisterCallback"

    .line 640
    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    :cond_98
    :goto_98
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_6c

    .line 646
    :cond_a2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 649
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 650
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 651
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 652
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 653
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 654
    invoke-static {v1, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 656
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 657
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 659
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_e4

    .line 660
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 662
    :cond_e4
    monitor-exit v0

    return-void

    :catchall_e6
    move-exception p0

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_91 .. :try_end_e8} :catchall_e6

    throw p0
.end method

.method public final resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    .line 735
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 852
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "TvInputManagerService"

    const-string p2, "error in onSessionCreated"

    .line 854
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 935
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 936
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 937
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 940
    :cond_14
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p3

    .line 941
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p3

    if-nez p3, :cond_23

    return-void

    .line 944
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p3

    .line 945
    invoke-interface {p3, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    .line 946
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result p3

    if-eq p3, p2, :cond_43

    .line 947
    invoke-virtual {p0, p4}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 948
    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 949
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception p0

    const-string p1, "TvInputManagerService"

    const-string p2, "error in setMain"

    .line 952
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method

.method public final setStateLocked(Ljava/lang/String;II)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1081
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 1082
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v0, :cond_27

    .line 1084
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to setStateLocked - unknown input id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TvInputManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1087
    :cond_27
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1088
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v2

    .line 1089
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    if-eqz v1, :cond_59

    .line 1090
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v0

    if-nez v0, :cond_59

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    .line 1091
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_58
    return-void

    :cond_59
    if-eq v2, p2, :cond_5f

    const/4 v0, 0x0

    .line 1096
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    :cond_5f
    return-void
.end method

.method public final startProfileLocked(I)V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method public final startUser(I)V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 468
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 470
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, v2, :cond_31

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startProfileLocked(I)V

    .line 476
    :cond_31
    monitor-exit v0

    return-void

    .line 466
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    .line 476
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final stopUser(I)V
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_10

    .line 482
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 483
    monitor-exit v0

    return-void

    .line 486
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 488
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final switchUser(I)V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string p0, "TvInputManagerService"

    const-string p1, "cannot switch to a profile!"

    .line 505
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return-void

    .line 509
    :cond_1e
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 510
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    goto :goto_24

    .line 513
    :cond_3b
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 514
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 515
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 517
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 520
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v2, 0x3

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    .line 520
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 522
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final unbindServiceOfUserLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 563
    :cond_7
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 564
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 565
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 566
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v1, :cond_13

    .line 567
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 568
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 570
    :try_start_3b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception v2

    const-string v3, "TvInputManagerService"

    const-string v4, "error in unregisterCallback"

    .line 572
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    :cond_5c
    return-void
.end method

.method public final updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 741
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v1, :cond_11

    return-void

    .line 746
    :cond_11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 747
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    return-void

    .line 751
    :cond_23
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .line 755
    :cond_26
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-eq p2, v2, :cond_42

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_42

    .line 762
    :cond_38
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_54

    .line 756
    :cond_42
    :goto_42
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_52
    move v3, v4

    :cond_53
    move v2, v3

    .line 765
    :goto_54
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-nez v3, :cond_84

    if-eqz v2, :cond_84

    .line 768
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_63

    return-void

    .line 777
    :cond_63
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.tv.TvInputService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 778
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v0

    const v2, 0x2000001

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    goto :goto_9c

    .line 782
    :cond_84
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    if-eqz p2, :cond_9c

    if-nez v2, :cond_9c

    .line 788
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 789
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    :goto_9c
    return-void
.end method

.method public final updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1059
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_27

    .line 1062
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to set input info - unknown input id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1065
    :cond_27
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 1066
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 1068
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_3a
    if-ge v0, p0, :cond_53

    .line 1071
    :try_start_3c
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v1

    const-string v3, "failed to report updated input info to callback"

    .line 1073
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1076
    :cond_53
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
