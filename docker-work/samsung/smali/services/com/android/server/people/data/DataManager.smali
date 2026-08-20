.class public Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$Injector;,
        Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;,
        Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;,
        Lcom/android/server/people/data/DataManager$NotificationListener;,
        Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;,
        Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;,
        Lcom/android/server/people/data/DataManager$CallLogContentObserver;,
        Lcom/android/server/people/data/DataManager$ContactsContentObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_CACHED_RECENT_SHORTCUTS:I = 0x1e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_EVENTS_MAX_AGE_MS:J = 0x493e0L

.field public static final RECENT_NOTIFICATIONS_MAX_AGE_MS:J = 0x337f9800L

.field public static final TAG:Ljava/lang/String; = "DataManager"

.field public static final USAGE_STATS_QUERY_INTERVAL_SEC:J = 0x78L


# instance fields
.field public final mBroadcastReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public mCallLogContentObserver:Landroid/database/ContentObserver;

.field public final mContactsContentObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mConversationsListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/PeopleService$ConversationsListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mMmsSmsContentObserver:Landroid/database/ContentObserver;

.field public final mNotificationListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/DataManager$NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

.field public final mUsageStatsQueryFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mUserDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/UserData;",
            ">;"
        }
    .end annotation
.end field

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CEP_MSm_RDjLw6X73MnXiP6mtgk(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/people/data/DataManager;->lambda$pruneOldRecentConversations$4(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CFF6sq2DwXdpGAaZvwveNH2Tj4c(Lcom/android/server/people/data/DataManager;JILcom/android/server/people/data/PackageData;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->lambda$pruneOldRecentConversations$5(JILcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qh1t5aK9GRz_fp5tfjOuAeO9338(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$pruneDataForUser$8(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnrAudnIII2089rcGYyIeqViWFA(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$6(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VArZ-4SUEsRNziL5r-rI5nLeShw(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->lambda$pruneUninstalledPackageData$10(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnziGrjly9dCtttm7e59qemAzOI(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$notifyConversationsListeners$14(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gj01B2lDcAmAjm8AxVuE9kOA980(Lcom/android/server/people/data/DataManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$onUserStopping$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hbCrPDMi0L7nycEmEzwAUVOoKS4(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$11(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$je5-n3-9mDXCUJCCcUjAmulmjFM(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneUninstalledPackageData$9(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrxMmKSpy_JPk0Yfs7rSfWZW9LM(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->lambda$getRecentConversations$3(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsrR0TAm4reVL91zeQEoFUHrNOQ(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$getRecentConversations$2(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$su5PLSy5S474_kdy1vJpqtlz7HU(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$12(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-le5gLpc38dNjOonh2JcCFNt50(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/PackageData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$7(JLcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYOf7ncikrEx7w6Ob4gTKo8SsHc(Lcom/android/server/people/data/DataManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$onUserUnlocked$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNRCHjcIJEyKdq3z1hLZNBZ1zcg(Landroid/util/Pair;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$13(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManagerInternal(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultSmsApp(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 145
    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 151
    invoke-virtual {p2}, Lcom/android/server/people/data/DataManager$Injector;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 152
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$cleanupCachedShortcuts$11(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 857
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 859
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 858
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private synthetic lambda$cleanupCachedShortcuts$12(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 856
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$cleanupCachedShortcuts$13(Landroid/util/Pair;)J
    .registers 5

    .line 871
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 872
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/people/data/ConversationInfo;

    .line 873
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->getCreationTimestamp()J

    move-result-wide v2

    .line 871
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$getRecentConversations$2(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 6

    .line 314
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 317
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p1

    .line 318
    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 320
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_23

    .line 323
    :cond_20
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    return-void
.end method

.method private synthetic lambda$getRecentConversations$3(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 313
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$notifyConversationsListeners$14(Ljava/util/List;)V
    .registers 4

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_22

    .line 1370
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1371
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 1372
    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleService$ConversationsListener;

    .line 1373
    invoke-interface {v0, p1}, Lcom/android/server/people/PeopleService$ConversationsListener;->onConversationsUpdate(Ljava/util/List;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_22

    goto :goto_f

    :catchall_1f
    move-exception p0

    .line 1371
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-void
.end method

.method private synthetic lambda$onUserStopping$1(I)V
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupUser(I)V

    return-void
.end method

.method private synthetic lambda$onUserUnlocked$0(I)V
    .registers 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->setupUser(I)V

    return-void
.end method

.method private synthetic lambda$pruneDataForUser$8(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .registers 6

    .line 568
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 571
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/people/data/EventStore;->pruneOldEvents()V

    .line 572
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 573
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 575
    :cond_1c
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 576
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 578
    :cond_2a
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->pruneOrphanEvents()V

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneExpiredConversationStatuses(IJ)V

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    const/16 p1, 0x1e

    .line 581
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method private synthetic lambda$pruneExpiredConversationStatuses$6(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 13

    .line 382
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0, p5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-virtual {p5}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_12
    :goto_12
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 385
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_30

    .line 386
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    .line 387
    :cond_30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 390
    :cond_34
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 391
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    .line 392
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 393
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p4

    .line 391
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$pruneExpiredConversationStatuses$7(JLcom/android/server/people/data/PackageData;)V
    .registers 11

    .line 380
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    .line 381
    new-instance v6, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p3, v6}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$pruneOldRecentConversations$4(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 10

    .line 360
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p0, p6}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 362
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x337f9800

    cmp-long p1, p1, v1

    if-lez p1, :cond_1f

    .line 364
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 365
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method private synthetic lambda$pruneOldRecentConversations$5(JILcom/android/server/people/data/PackageData;)V
    .registers 16

    .line 356
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v8

    .line 358
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v10, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v7

    move v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    invoke-virtual {p4, v10}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 368
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 369
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x4000

    move v1, p3

    move-object v3, v7

    move-object v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_32
    return-void
.end method

.method public static synthetic lambda$pruneUninstalledPackageData$10(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 743
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    .line 744
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic lambda$pruneUninstalledPackageData$9(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 740
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V
    .registers 3

    .line 1336
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    monitor-enter v0

    .line 1337
    :try_start_3
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/people/PeopleService$ConversationsListener;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 895
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 899
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 902
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 907
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_34

    .line 908
    :cond_27
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v2

    .line 910
    :goto_34
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 911
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 912
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v1, 0x0

    .line 913
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 914
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v1, 0x0

    .line 915
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 917
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_9e

    .line 918
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    aget-object v1, v3, v1

    .line 919
    invoke-virtual {v1}, Landroid/app/Person;->isImportant()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 920
    invoke-virtual {v1}, Landroid/app/Person;->isBot()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 921
    invoke-virtual {v1}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 923
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v3

    .line 924
    invoke-virtual {v3, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->query(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 925
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 926
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 927
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 931
    :cond_9e
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 12

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 424
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 425
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 426
    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 427
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 429
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    .line 430
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->scheduleExpiration(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)V

    :cond_2c
    return-void
.end method

.method public final cleanupCachedShortcuts(II)V
    .registers 11

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 854
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 863
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1b

    return-void

    .line 866
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    .line 868
    new-instance p2, Ljava/util/PriorityQueue;

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;-><init>()V

    .line 870
    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 873
    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 874
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 875
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_38

    .line 878
    :cond_57
    invoke-virtual {p2, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 879
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-le v2, v0, :cond_38

    .line 880
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_38

    .line 883
    :cond_64
    :goto_64
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 884
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 885
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 886
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 887
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move v2, p1

    move v6, p1

    .line 885
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_64

    :cond_91
    return-void
.end method

.method public final cleanupUser(I)V
    .registers 6

    .line 680
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_99

    .line 682
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_99

    .line 685
    :cond_15
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 686
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2f

    .line 687
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 689
    :cond_2f
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_44

    .line 690
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    :cond_44
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_57

    .line 693
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 695
    :cond_57
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_9b

    if-ltz v2, :cond_6a

    .line 697
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6a} :catch_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_9b

    .line 702
    :catch_6a
    :cond_6a
    :try_start_6a
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_7d

    .line 703
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_7d
    if-nez p1, :cond_92

    .line 706
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    if-eqz v2, :cond_89

    .line 707
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 708
    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 710
    :cond_89
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_92

    .line 711
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 712
    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 716
    :cond_92
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/people/data/DataMaintenanceService;->cancelJob(Landroid/content/Context;I)V

    .line 717
    monitor-exit v0

    return-void

    .line 683
    :cond_99
    :goto_99
    monitor-exit v0

    return-void

    :catchall_9b
    move-exception p0

    .line 717
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_6a .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 440
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 441
    invoke-virtual {v1, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 442
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 448
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 p3, 0x0

    .line 449
    invoke-virtual {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 450
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public dump([Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    const-string v0, "DataManager dump"

    .line 1468
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1469
    :goto_6
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 1470
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 1473
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1474
    invoke-virtual {v1, p1, p2}, Lcom/android/server/people/data/UserData;->dump([Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3c
    return-void
.end method

.method public final forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/UserData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 768
    :goto_1
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 769
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 770
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 771
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 772
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public forPackagesInProfile(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 205
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public getBackupPayload(I)[B
    .registers 2

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 592
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/people/data/UserData;->getBackupPayload()[B

    move-result-object p0

    return-object p0
.end method

.method public getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 942
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 937
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 5

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 253
    invoke-virtual {v0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 254
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .registers 17

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    .line 282
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_56

    :cond_d
    if-nez p1, :cond_17

    const-string v0, "DataManager"

    const-string v1, " Shortcut no longer found"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 289
    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 292
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v3, v7, v8, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 293
    iget-object v7, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-interface {v7, v3, v6, v8}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 298
    iget-object v2, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 300
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    .line 299
    invoke-interface {v2, v3, v6, v8}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    :cond_41
    move-object v8, v2

    .line 302
    new-instance v2, Landroid/app/people/ConversationChannel;

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v9

    .line 305
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v13

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v13}, Landroid/app/people/ConversationChannel;-><init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V

    :cond_56
    :goto_56
    return-object v2
.end method

.method public final getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .registers 5

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1, p4}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getConversationInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 4

    .line 261
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 266
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    .line 490
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 493
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Conversation does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;
    .registers 4

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 478
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    .line 480
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No conversations exist for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No settings exist for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .registers 4

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 413
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 415
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide p0

    return-wide p0

    :cond_11
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 947
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getNotificationListenerServiceForTesting(I)Lcom/android/server/people/data/DataManager$NotificationListener;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 952
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    return-object p0
.end method

.method public getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;
    .registers 3

    .line 215
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)",
            "Lcom/android/server/people/data/PackageData;"
        }
    .end annotation

    .line 801
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 806
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 806
    invoke-virtual {p0, v2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-nez p0, :cond_1f

    return-object v1

    .line 812
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    if-nez p1, :cond_2a

    return-object v1

    .line 816
    :cond_2a
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 957
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    return-object p0
.end method

.method public getRecentConversations(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4

    .line 224
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 225
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    .line 227
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 761
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, v0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 762
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc13

    move-object v0, v1

    move v1, v3

    move-wide v3, v4

    move-object v5, p1

    move-object/from16 v6, p3

    move v10, p2

    .line 761
    invoke-virtual/range {v0 .. v12}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/ConversationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 463
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 467
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    .line 456
    invoke-virtual {p0, p1, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .registers 2

    .line 779
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/UserData;

    if-eqz p0, :cond_11

    .line 780
    invoke-virtual {p0}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 962
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/UserData;

    return-object p0
.end method

.method public final hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 837
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    if-eqz p0, :cond_12

    .line 839
    invoke-virtual {p0, p1, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public initialize()V
    .registers 6

    .line 157
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 158
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 160
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 162
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$ShortcutServiceCallback-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 164
    new-instance v0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 165
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x4

    .line 165
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver-IA;)V

    .line 171
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 4

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 822
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 400
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 402
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 403
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 2

    .line 830
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 831
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object p0

    .line 832
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getParentNotificationChannelId()Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public mimeTypeToShareEventType(Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x7

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string/jumbo v0, "text/"

    .line 727
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x4

    return p0

    :cond_f
    const-string/jumbo v0, "image/"

    .line 729
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x5

    return p0

    :cond_1a
    const-string/jumbo v0, "video/"

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p0, 0x6

    :cond_24
    return p0
.end method

.method public notifyConversationsListeners(Ljava/util/List;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopping(I)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_10

    .line 192
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserStopped()V

    .line 194
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    .line 195
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1c
    move-exception p0

    .line 194
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-nez v1, :cond_19

    .line 179
    new-instance v1, Lcom/android/server/people/data/UserData;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserUnlocked()V

    .line 183
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_28

    .line 184
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_28
    move-exception p0

    .line 183
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .registers 5

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 562
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_18

    .line 565
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V

    .line 567
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public pruneExpiredConversationStatuses(IJ)V
    .registers 5

    .line 379
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public pruneOldRecentConversations(IJ)V
    .registers 5

    .line 355
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V
    .registers 5

    .line 738
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 739
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;)V

    .line 740
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v2

    .line 739
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 741
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 747
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .line 541
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-static/range {p1 .. p6}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public removeAllRecentConversations(I)V
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    .line 347
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13

    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 336
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move v2, p4

    move-object v4, p1

    move v6, p2

    .line 336
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_1a
    return-void
.end method

.method public reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V
    .registers 7

    .line 501
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 502
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    goto/16 :goto_86

    .line 505
    :cond_f
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 509
    :cond_1e
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    const/4 v2, 0x0

    .line 510
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result p2

    .line 512
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object p1

    const-string v3, "direct_share"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 514
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-nez p1, :cond_42

    return-void

    .line 517
    :cond_42
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "chooser_target"

    .line 519
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    return-void

    .line 522
    :cond_53
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    if-nez v3, :cond_64

    .line 523
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 525
    :cond_64
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    goto :goto_7a

    .line 529
    :cond_6d
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 p1, 0x4

    .line 530
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 532
    :goto_7a
    new-instance p1, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public restore(I[B)V
    .registers 3

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 601
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/UserData;->restore([B)V

    return-void
.end method

.method public final setupUser(I)V
    .registers 13

    .line 605
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v2

    if-nez v2, :cond_b

    .line 608
    monitor-exit v1

    return-void

    .line 610
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/people/data/UserData;->loadUserData()V

    .line 612
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/DataManager;->updateDefaultDialer(Lcom/android/server/people/data/UserData;)V

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    .line 615
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    const/4 v2, 0x0

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable-IA;)V

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x78

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 618
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 621
    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 622
    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_57

    .line 625
    new-instance v6, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$PerUserBroadcastReceiver-IA;)V

    .line 626
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 628
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 627
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 635
    :cond_57
    new-instance v3, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    .line 636
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$ContactsContentObserver-IA;)V

    .line 637
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 642
    new-instance v3, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$NotificationListener-IA;)V

    .line 643
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_e0

    .line 645
    :try_start_7b
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    invoke-virtual {v3, v4, v5, p1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8b} :catch_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_e0

    .line 651
    :catch_8b
    :try_start_8b
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a6

    .line 652
    new-instance v3, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v3, p0, v2}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$PerUserPackageMonitor-IA;)V

    .line 653
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 654
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a6
    if-nez p1, :cond_d9

    .line 664
    new-instance v3, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$CallLogContentObserver-IA;)V

    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 665
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 669
    new-instance v3, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$MmsSmsContentObserver-IA;)V

    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    .line 670
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v7, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 675
    :cond_d9
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    .line 676
    monitor-exit v1

    return-void

    :catchall_e0
    move-exception v0

    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_8b .. :try_end_e2} :catchall_e0

    throw v0
.end method

.method public final updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1355
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1356
    invoke-virtual {p0, p3, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/people/ConversationChannel;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1358
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_16
    return-void
.end method

.method public updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1345
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1347
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    .line 1346
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/people/ConversationChannel;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1349
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_1a
    return-void
.end method

.method public final updateDefaultDialer(Lcom/android/server/people/data/UserData;)V
    .registers 4

    .line 784
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_1a

    .line 786
    new-instance v0, Landroid/os/UserHandle;

    .line 787
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 786
    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 788
    :goto_1b
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    return-void
.end method

.method public final updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V
    .registers 4

    .line 792
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 793
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 792
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 794
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 795
    :goto_13
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->setDefaultSmsApp(Ljava/lang/String;)V

    return-void
.end method
