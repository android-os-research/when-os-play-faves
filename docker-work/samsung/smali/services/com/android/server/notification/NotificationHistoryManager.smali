.class public Lcom/android/server/notification/NotificationHistoryManager;
.super Ljava/lang/Object;
.source "NotificationHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DIRECTORY_PER_USER:Ljava/lang/String; = "notification_history"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NotificationHistory"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHistoryEnabled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserPendingPackageRemovals:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/notification/NotificationHistoryDatabase;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserUnlockedStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KjgV1fTearQVkcQld8gBrXUjqIA(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->lambda$addNotification$0(Landroid/app/NotificationHistory$HistoricalNotification;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 53
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 77
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    .line 78
    new-instance p1, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    return-void
.end method

.method private synthetic lambda$addNotification$0(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_29

    const-string p0, "NotificationHistory"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add notif for locked/gone/disabled user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v0

    return-void

    .line 228
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 229
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 3

    .line 219
    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_25

    const-string p0, "NotificationHistory"

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove conversation for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_25
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteConversations(Ljava/lang/String;Ljava/util/Set;)V

    .line 183
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_25

    const-string p0, "NotificationHistory"

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove channel for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_25
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 158
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_25

    const-string p0, "NotificationHistory"

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove notif for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_25
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationHistoryItem(Ljava/lang/String;J)V

    .line 167
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V
    .registers 4

    .line 290
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->disableHistory()V

    .line 291
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->unregisterFileCleanupReceiver()V

    .line 293
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 294
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 295
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public doesHistoryExistForUser(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 348
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getPendingPackageRemovalsForUser(I)Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-string v1, "NotificationHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 302
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History disabled for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_23
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2

    .line 308
    :cond_29
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v0, :cond_8c

    .line 310
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "notification_history"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v0

    .line 314
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const-string v4, "Attempted to initialize service for stopped or removed user "

    if-eqz v3, :cond_79

    .line 316
    :try_start_53
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->init()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_5c

    .line 332
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8c

    :catch_5c
    move-exception v0

    .line 318
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_78

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 319
    :cond_78
    throw v0

    .line 328
    :cond_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_8c
    :goto_8c
    return-object v0
.end method

.method public isHistoryEnabled(I)Z
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 269
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 341
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->observe()V

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->stopObserving()V

    return-void
.end method

.method public onHistoryEnabledChanged(IZ)V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_a

    .line 275
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 278
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-eqz v1, :cond_16

    if-nez p2, :cond_20

    .line 281
    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    goto :goto_20

    .line 284
    :cond_16
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 286
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 137
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 138
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 140
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_29
    monitor-exit v0

    return-void

    .line 145
    :cond_2b
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez p0, :cond_37

    .line 147
    monitor-exit v0

    return-void

    .line 150
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    .line 151
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 129
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V

    .line 131
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onUserStopped(I)V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 119
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onUserUnlocked(I)V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-nez v1, :cond_27

    const-string p0, "NotificationHistory"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to unlock gone/disabled user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v0

    return-void

    .line 101
    :cond_27
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4a

    const/4 v3, 0x0

    .line 103
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 106
    :cond_44
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    :cond_4a
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 111
    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    .line 113
    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public readFilteredNotificationHistory(ILjava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;
    .registers 6

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_26

    const-string p0, "NotificationHistory"

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to read history for locked/gone/disabled user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance p0, Landroid/app/NotificationHistory;

    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    monitor-exit v0

    return-object p0

    .line 262
    :cond_26
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public readNotificationHistory([I)Landroid/app/NotificationHistory;
    .registers 10

    .line 234
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    if-nez p1, :cond_c

    .line 237
    monitor-exit v0

    return-object v1

    .line 239
    :cond_c
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_39

    aget v4, p1, v3

    .line 241
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v5

    if-nez v5, :cond_2f

    const-string v5, "NotificationHistory"

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to read history for locked/gone/disabled user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 246
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory()Landroid/app/NotificationHistory;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 248
    :cond_39
    monitor-exit v0

    return-object v1

    :catchall_3b
    move-exception p0

    .line 249
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public replaceNotificationHistoryDatabase(ILcom/android/server/notification/NotificationHistoryDatabase;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 356
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public triggerWriteToDisk()V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    .line 206
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 207
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_28

    .line 210
    :cond_1b
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz v3, :cond_28

    .line 212
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->forceWriteToDisk()V

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 215
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method
