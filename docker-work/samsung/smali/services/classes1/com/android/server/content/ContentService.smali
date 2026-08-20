.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCollector;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ACCESS_CHECK_CHANGE_ID:J = 0xc0722ffL

.field public static AUTO_SYNC_LOG_MAX:I = 0x0

.field public static final BACKGROUND_OBSERVER_DELAY:J = 0x2710L

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ContentService"

.field public static final TOO_MANY_OBSERVERS_THRESHOLD:I = 0x3e8

.field public static sAutoSyncLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "Landroid/database/IContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static final sObserverLeakDetectedUid:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sObserverLeakDetectedUid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mCacheReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mFactoryTest:Z

.field public final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field public mSyncManager:Lcom/android/server/content/SyncManager;

.field public final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$mH9LzsOWgTqAeeGKESJk2z3AkfM(Lcom/android/server/content/ContentService;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService;->lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateCacheLocked(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;
    .registers 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 201
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 205
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    const/16 v0, 0xa

    .line 236
    sput v0, Lcom/android/server/content/ContentService;->AUTO_SYNC_LOG_MAX:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 15

    .line 354
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 194
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 216
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 356
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 360
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 361
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 362
    new-instance p2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    .line 366
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 367
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 368
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 369
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 370
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 371
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 375
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 376
    invoke-virtual {v9, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v6, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 380
    const-class p1, Landroid/accounts/AccountManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManagerInternal;

    iput-object p1, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeSyncable(I)I
    .registers 1

    if-lez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, -0x2

    return p0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14

    const/4 v0, 0x1

    .line 1011
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_52

    .line 1015
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1018
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1022
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 1025
    :cond_21
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 1027
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1029
    invoke-virtual {p0, p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v3

    .line 1030
    invoke-static {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v5

    .line 1032
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide p4

    .line 1034
    :try_start_34
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_45

    .line 1039
    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception p0

    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1040
    throw p0

    .line 1016
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1013
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6

    .line 1400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1401
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1403
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_17

    if-eqz p2, :cond_17

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 1409
    :cond_17
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1410
    throw p0
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 11

    .line 828
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 830
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 833
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 834
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_1f
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 839
    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 841
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 845
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 846
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 847
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 848
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 850
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelRequest() by uid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, v3, p1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 854
    :cond_5a
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    const-string p0, "API"

    .line 855
    invoke-virtual {v0, v8, v3, p0}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_66

    .line 857
    invoke-static {v4, v5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_66
    move-exception p0

    invoke-static {v4, v5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 858
    throw p0
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5

    .line 782
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 7

    if-eqz p2, :cond_11

    .line 801
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 802
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 804
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 808
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_34

    const-string p0, "ContentService"

    const-string p1, "cname not null."

    .line 810
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 814
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 817
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 818
    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    const/4 p1, 0x0

    const-string p2, "API"

    .line 819
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4c

    .line 822
    :cond_48
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 823
    throw p0
.end method

.method public final checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13

    .line 575
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, -0x1

    return p0
.end method

.method public final clampPeriod(J)J
    .registers 7

    .line 711
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_30

    .line 713
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested poll frequency of "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds being rounded up to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_30
    return-wide p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 266
    :try_start_4
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_172

    if-nez v2, :cond_10

    monitor-exit p0

    return-void

    .line 267
    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "-a"

    move-object/from16 v6, p3

    .line 269
    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 273
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_172

    .line 275
    :try_start_23
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v3, :cond_2f

    const-string v0, "SyncManager not available yet"

    .line 276
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto :goto_34

    :cond_2f
    move-object/from16 v4, p1

    .line 278
    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 280
    :goto_34
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Auto sync logs:"

    .line 282
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 283
    sget-object v3, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    monitor-enter v3
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_16d

    .line 284
    :try_start_3f
    sget-object v0, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "No request to set up master auto-sync."

    .line 285
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 287
    :cond_4d
    sget-object v0, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 291
    :cond_63
    :goto_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_16a

    .line 292
    :try_start_64
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Observer tree:"

    .line 294
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-object v13, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v13
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_16d

    const/4 v0, 0x2

    :try_start_70
    new-array v0, v0, [I

    .line 297
    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    .line 298
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v7, ""

    const-string v8, "  "

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v6, p3

    move-object v9, v0

    move-object v10, v14

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 299
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 301
    :goto_91
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a5

    .line 302
    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .line 304
    :cond_a5
    new-instance v5, Lcom/android/server/content/ContentService$2;

    invoke-direct {v5, p0, v14}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v4

    .line 318
    :goto_ae
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_da

    .line 319
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "  pid "

    .line 320
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v6, " observers"

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    .line 323
    :cond_da
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 324
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Total number of nodes: "

    .line 325
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v3, "Total number of observers: "

    .line 326
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 328
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 329
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 330
    monitor-exit v13
    :try_end_fe
    .catchall {:try_start_70 .. :try_end_fe} :catchall_167

    .line 331
    :try_start_fe
    sget-object v3, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_16d

    .line 332
    :try_start_101
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Observer leaking UIDs: "

    .line 333
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 335
    monitor-exit v3
    :try_end_111
    .catchall {:try_start_101 .. :try_end_111} :catchall_164

    .line 337
    :try_start_111
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_16d

    .line 338
    :try_start_114
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached content:"

    .line 339
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 341
    :goto_11f
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_158

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 344
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11f

    .line 347
    :cond_158
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 348
    monitor-exit v3
    :try_end_15c
    .catchall {:try_start_114 .. :try_end_15c} :catchall_161

    .line 350
    :try_start_15c
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_172

    .line 352
    monitor-exit p0

    return-void

    :catchall_161
    move-exception v0

    .line 348
    :try_start_162
    monitor-exit v3
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    :try_start_163
    throw v0
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_16d

    :catchall_164
    move-exception v0

    .line 335
    :try_start_165
    monitor-exit v3
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    :try_start_166
    throw v0
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_16d

    :catchall_167
    move-exception v0

    .line 330
    :try_start_168
    monitor-exit v13
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    :try_start_169
    throw v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_16d

    :catchall_16a
    move-exception v0

    .line 291
    :try_start_16b
    monitor-exit v3
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    :try_start_16c
    throw v0
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16d

    :catchall_16d
    move-exception v0

    .line 350
    :try_start_16e
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 351
    throw v0
    :try_end_172
    .catchall {:try_start_16e .. :try_end_172} :catchall_172

    :catchall_172
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 4

    .line 1559
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1561
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .registers 4

    .line 1575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 1580
    :cond_7
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 1586
    :cond_12
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceShell(Ljava/lang/String;)V
    .registers 4

    .line 2057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_22

    if-nez p0, :cond_b

    goto :goto_22

    .line 2059
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-shell user attempted to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method public final findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 1437
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1438
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1440
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_24

    .line 1442
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 1443
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object p0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CACHE_CONTENT"
    .end annotation

    const-string v0, "ContentService"

    .line 1498
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1503
    invoke-virtual {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1504
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1506
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1507
    :try_start_2a
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 1509
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    monitor-exit p2

    return-object p0

    :catchall_36
    move-exception p0

    .line 1510
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p0
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1297
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1312
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1314
    :goto_2c
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1316
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    .line 1317
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    .line 1319
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_40
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1320
    throw p0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4

    .line 1100
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    return v1

    .line 1117
    :cond_2c
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1119
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 1121
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_43

    .line 1125
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_3e
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :catchall_43
    move-exception p0

    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1126
    throw p0
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 1170
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    return p0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 5

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1186
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result p0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3a

    .line 1191
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_35
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1192
    throw p0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_49

    .line 1079
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_41

    .line 1082
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    if-nez p3, :cond_23

    .line 1085
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1088
    :cond_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 1089
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1091
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    .line 1094
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3c
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1095
    throw p0

    .line 1080
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1077
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProcStateForStatsd(I)I
    .registers 2

    packed-switch p1, :pswitch_data_38

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_8
    const/16 p0, 0x13

    return p0

    :pswitch_b
    const/16 p0, 0x12

    return p0

    :pswitch_e
    const/16 p0, 0x11

    return p0

    :pswitch_11
    const/16 p0, 0x10

    return p0

    :pswitch_14
    const/16 p0, 0xe

    return p0

    :pswitch_17
    const/16 p0, 0xd

    return p0

    :pswitch_1a
    const/16 p0, 0xc

    return p0

    :pswitch_1d
    const/16 p0, 0xb

    return p0

    :pswitch_20
    const/16 p0, 0xa

    return p0

    :pswitch_23
    const/16 p0, 0x9

    return p0

    :pswitch_26
    const/16 p0, 0x8

    return p0

    :pswitch_29
    const/4 p0, 0x7

    return p0

    :pswitch_2b
    const/4 p0, 0x6

    return p0

    :pswitch_2d
    const/4 p0, 0x5

    return p0

    :pswitch_2f
    const/4 p0, 0x4

    return p0

    :pswitch_31
    const/4 p0, 0x3

    return p0

    :pswitch_33
    const/4 p0, 0x2

    return p0

    :pswitch_35
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public final getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 4

    .line 1427
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1428
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1427
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1429
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method public final getRestrictionLevelForStatsd(I)I
    .registers 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_24

    const/16 p0, 0x14

    if-eq p1, p0, :cond_22

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_20

    const/16 p0, 0x28

    if-eq p1, p0, :cond_1e

    const/16 p0, 0x32

    if-eq p1, p0, :cond_1c

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x6

    return p0

    :cond_1c
    const/4 p0, 0x5

    return p0

    :cond_1e
    const/4 p0, 0x4

    return p0

    :cond_20
    const/4 p0, 0x3

    return p0

    :cond_22
    const/4 p0, 0x2

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 917
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 919
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 922
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 923
    throw p0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 901
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 903
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    .line 904
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 907
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 908
    throw p0
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 867
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object p0

    return-object p0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 5

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 882
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 885
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 887
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    .line 888
    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 890
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 891
    throw p0
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4

    .line 928
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    return v1

    .line 945
    :cond_2c
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 947
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 949
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    .line 950
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result p0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_46

    .line 953
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_42
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return v1

    :catchall_46
    move-exception p0

    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 954
    throw p0
.end method

.method public final getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 8

    if-eqz p2, :cond_10

    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    .line 1649
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1652
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eq v2, v1, :cond_10

    return v2

    .line 1657
    :cond_10
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 1658
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    return v0

    .line 1662
    :cond_1c
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 1663
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    const/4 v3, 0x2

    if-le v1, v3, :cond_45

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    goto :goto_45

    :cond_2b
    const/4 v3, 0x6

    if-le v1, v3, :cond_32

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    const/16 v0, 0x1d4

    .line 1672
    invoke-virtual {p0, v1}, Lcom/android/server/content/ContentService;->getProcStateForStatsd(I)I

    move-result v1

    .line 1673
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/content/ContentService;->getRestrictionLevelForStatsd(I)I

    move-result p0

    .line 1671
    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    const/4 p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v3
.end method

.method public final getSyncExemptionForCaller(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1642
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    goto :goto_1d

    :catchall_13
    move-exception p0

    goto :goto_21

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    .line 246
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object p0

    .line 249
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    throw p0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5

    .line 1325
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 8

    .line 1335
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_62

    .line 1339
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to read the sync stats for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1341
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_32

    return-object v0

    .line 1347
    :cond_32
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1349
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_5d

    if-nez p0, :cond_40

    .line 1361
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object v0

    :cond_40
    if-eqz p1, :cond_55

    if-eqz p2, :cond_55

    .line 1355
    :try_start_44
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_5d

    .line 1361
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    .line 1357
    :cond_55
    :try_start_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must call sync status with valid authority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 1361
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1362
    throw p0

    .line 1336
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 15

    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1516
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    :cond_7
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_23

    .line 1520
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_23
    if-ltz p6, :cond_7c

    .line 1524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_7b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 1525
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result p2

    if-eqz p2, :cond_7b

    const/4 p2, 0x0

    .line 1528
    iget-object p4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_43

    :goto_41
    move p2, v0

    goto :goto_50

    :cond_43
    if-eqz p5, :cond_50

    .line 1532
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_50

    goto :goto_41

    :cond_50
    :goto_50
    if-nez p2, :cond_7b

    if-eqz p5, :cond_56

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    .line 1542
    :cond_56
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": neither user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    :goto_7b
    return p6

    .line 1523
    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid user: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAccountAccess(ZLandroid/accounts/Account;I)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_10

    const-wide/32 v1, 0xc0722ff

    .line 1604
    invoke-static {v1, v2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-nez p1, :cond_10

    return v0

    .line 1608
    :cond_10
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1610
    :try_start_14
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1612
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1613
    throw p0
.end method

.method public final invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .line 1450
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_b

    return-void

    .line 1453
    :cond_b
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_14

    return-void

    :cond_14
    if-eqz p3, :cond_3e

    const/4 p1, 0x0

    .line 1457
    :goto_17
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p1, p2, :cond_41

    .line 1458
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1459
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_3b

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1461
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_17

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 1468
    :cond_3e
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_41
    return-void
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 7

    .line 1275
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_17

    return v0

    .line 1281
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 1282
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1284
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_3a

    if-nez p0, :cond_29

    .line 1291
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return v0

    .line 1288
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    .line 1291
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_3a
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1292
    throw p0
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5

    .line 1367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 8

    .line 1373
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to retrieve the sync settings for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_2c

    return v0

    .line 1381
    :cond_2c
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-nez p0, :cond_37

    return v0

    :cond_37
    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    .line 1388
    :try_start_3b
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_54

    .line 1394
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    .line 1390
    :cond_4c
    :try_start_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid authority specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    .line 1394
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1395
    throw p0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 485
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 486
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 489
    new-instance v9, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct {v9}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 493
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 495
    array-length v10, v8

    const/16 v29, 0x0

    move/from16 v11, v29

    :goto_1f
    if-ge v11, v10, :cond_ee

    aget-object v12, v8, v11

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v18

    move v4, v15

    move/from16 v7, p5

    .line 497
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 499
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 500
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c8

    .line 501
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 502
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_be

    const/16 v4, 0x1a

    move/from16 v5, p6

    if-lt v5, v4, :cond_8e

    .line 506
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "ContentService"

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_88
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    const-string v4, "Failed to find provider"

    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    goto :goto_c0

    :cond_97
    const-string v1, "ContentService"

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring notify for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    :cond_be
    move/from16 v5, p6

    .line 525
    :goto_c0
    invoke-virtual {v0, v12, v1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {v14, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    :cond_c8
    move/from16 v5, p6

    .line 531
    :goto_ca
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v2

    .line 532
    :try_start_cd
    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v22

    .line 533
    iget-object v3, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v24, p2

    move/from16 v25, p3

    move/from16 v26, p4

    move/from16 v27, v1

    move-object/from16 v28, v9

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 535
    monitor-exit v2

    :goto_e7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1f

    :catchall_eb
    move-exception v0

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_cd .. :try_end_ed} :catchall_eb

    throw v0

    .line 538
    :cond_ee
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 541
    :try_start_f2
    invoke-virtual {v9}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    move/from16 v3, v29

    .line 543
    :goto_f7
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_161

    .line 544
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 545
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 546
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_13a

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    if-eqz v9, :cond_13a

    const/4 v10, 0x0

    .line 554
    invoke-virtual {v0, v15}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v7

    move/from16 v11, v19

    move v12, v15

    move-object v13, v4

    move-object/from16 v20, v14

    move v14, v7

    move v7, v15

    move/from16 v16, v18

    move-object/from16 v17, p7

    .line 552
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_13d

    :cond_13a
    move-object/from16 v20, v14

    move v7, v15

    .line 560
    :goto_13d
    iget-object v9, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_140
    .catchall {:try_start_f2 .. :try_end_140} :catchall_165

    .line 561
    :try_start_140
    array-length v10, v8

    move/from16 v11, v29

    :goto_143
    if-ge v11, v10, :cond_157

    aget-object v12, v8, v11

    .line 562
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_154

    .line 563
    invoke-virtual {v0, v5, v6, v12}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    :cond_154
    add-int/lit8 v11, v11, 0x1

    goto :goto_143

    .line 566
    :cond_157
    monitor-exit v9

    add-int/lit8 v3, v3, 0x1

    move v15, v7

    move-object/from16 v14, v20

    goto :goto_f7

    :catchall_15e
    move-exception v0

    monitor-exit v9
    :try_end_160
    .catchall {:try_start_140 .. :try_end_160} :catchall_15e

    :try_start_160
    throw v0
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_165

    .line 569
    :cond_161
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_165
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_8

    .line 386
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 389
    :goto_8
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_f

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    :cond_f
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2079
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2090
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    :cond_7
    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    :cond_7
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    :cond_7
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CACHE_CONTENT"
    .end annotation

    const/4 v0, 0x1

    .line 1475
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v0, "ContentService"

    .line 1476
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1481
    invoke-virtual {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1482
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1484
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1485
    :try_start_2e
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p3, :cond_38

    .line 1488
    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1490
    :cond_38
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :goto_3b
    monitor-exit p2

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10

    .line 453
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 452
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 15

    if-eqz p3, :cond_97

    if-eqz p1, :cond_97

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move v3, v7

    move v6, p4

    .line 412
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result p4

    .line 415
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 416
    invoke-static {p1, p4}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_24
    move p4, v1

    goto :goto_37

    .line 419
    :cond_26
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_37

    goto :goto_24

    .line 426
    :cond_37
    :goto_37
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 427
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    const/16 v1, 0x1a

    if-ge p5, v1, :cond_7d

    const-string p5, "Failed to find provider"

    .line 432
    invoke-virtual {v0, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_56

    goto :goto_83

    :cond_56
    const-string p0, "ContentService"

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring content changes for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_7d
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_83
    :goto_83
    iget-object p5, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p5

    .line 443
    :try_start_86
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object v0, v4

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v5, v7

    move v6, v8

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 447
    monitor-exit p5

    return-void

    :catchall_94
    move-exception p0

    monitor-exit p5
    :try_end_96
    .catchall {:try_start_86 .. :try_end_96} :catchall_94

    throw p0

    .line 406
    :cond_97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid uri and observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    .line 1045
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_5b

    .line 1049
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1052
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1056
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 1059
    :cond_21
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 1061
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1062
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1064
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePeriodicSync() by uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1065
    invoke-virtual {p0, v4, p3, p1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4e

    .line 1069
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1070
    throw p0

    .line 1050
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1047
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4

    .line 1415
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1417
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 1419
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 1422
    :cond_13
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1423
    throw p0
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    move-object/from16 v5, p3

    const/4 v1, 0x1

    .line 668
    invoke-static {v5, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 669
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 670
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object v3, p1

    .line 674
    invoke-virtual {p0, v1, p1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_1e

    return-void

    .line 678
    :cond_1e
    invoke-virtual {p0, v8, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 679
    invoke-virtual {p0, v8, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 683
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 685
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v6, -0x2

    move-object v1, p1

    move v3, v8

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    .line 687
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3e

    .line 692
    :cond_3a
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception v0

    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 693
    throw v0
.end method

.method public resetTodayStats()V
    .registers 3

    const-string/jumbo v0, "resetTodayStats"

    .line 2065
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 2068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2070
    :try_start_e
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 2072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public semSetMasterSyncAutomaticallyAsUser(ZILjava/lang/String;)V
    .registers 13

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_20
    const-string/jumbo v1, "roaming_policy"

    .line 1220
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v1

    .line 1221
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1222
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "ro.multisim.simslotcount"

    const/4 v5, 0x1

    .line 1223
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_43} :catch_a8

    if-le v4, v5, :cond_47

    move v4, v5

    goto :goto_48

    :cond_47
    move v4, v0

    :goto_48
    if-eqz v1, :cond_a8

    const-string v6, "ContentService"

    if-eqz v2, :cond_63

    .line 1226
    :try_start_4e
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_63

    if-nez v4, :cond_63

    const-string/jumbo v2, "setMasterSyncAutomaticallyAsUser() : policy restricts sync by network-roaming."

    .line 1227
    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_63
    if-eqz v4, :cond_8e

    .line 1233
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string/jumbo v4, "gsm.operator.isroaming"

    const-string v7, "false"

    .line 1234
    invoke-static {v2, v4, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8e

    const-string/jumbo v4, "true"

    .line 1235
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string/jumbo v1, "setMasterSyncAutomaticallyAsUser() : policy restricts sync by network-roaming. (dual-sim)"

    .line 1236
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_8e
    const-string/jumbo v1, "restriction_policy"

    .line 1241
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 1242
    invoke-interface {v1, v3, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_a8

    const-string/jumbo v1, "setMasterSyncAutomaticallyAsUser() : policy restricts changed settings."

    .line 1243
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_a7} :catch_a8

    return-void

    :catch_a8
    :cond_a8
    move v2, p1

    .line 1252
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1253
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1255
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v7

    .line 1257
    :try_start_b5
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    if-eqz p1, :cond_db

    .line 1260
    sget-object v1, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/android/server/content/ContentService;->AUTO_SYNC_LOG_MAX:I

    if-ne v1, v3, :cond_ca

    .line 1261
    sget-object v1, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1263
    :cond_ca
    sget-object v0, Lcom/android/server/content/ContentService;->sAutoSyncLogs:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    .line 1266
    invoke-virtual {p0, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v4

    move v3, p2

    .line 1265
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_db
    .catchall {:try_start_b5 .. :try_end_db} :catchall_df

    .line 1269
    :cond_db
    invoke-static {v7, v8}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_df
    move-exception p0

    invoke-static {v7, v8}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1270
    throw p0
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5

    .line 1132
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 15

    .line 1141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v7

    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 p3, 0x1

    .line 1152
    invoke-virtual {p0, p3, p1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    if-nez p3, :cond_39

    return-void

    .line 1156
    :cond_39
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1158
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move v5, p4

    move-object v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_51

    .line 1164
    :cond_4d
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1165
    throw p0

    .line 1142
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3

    .line 1198
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 7

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", sync="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " {"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    .line 1205
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1207
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->semSetMasterSyncAutomaticallyAsUser(ZILjava/lang/String;)V

    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5

    .line 960
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 16

    .line 966
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 969
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v0, 0x1

    .line 976
    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    .line 980
    :cond_35
    invoke-virtual {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 982
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :try_start_43
    const-string/jumbo v0, "restriction_policy"

    .line 985
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 986
    invoke-interface {v0, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "ContentService"

    const-string/jumbo v1, "policy restricts sync of google account"

    .line 987
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_5e} :catch_5f

    return-void

    .line 995
    :catch_5f
    :cond_5f
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 997
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    if-eqz p0, :cond_74

    .line 999
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_78

    .line 1003
    :cond_74
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_78
    move-exception p0

    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1004
    throw p0

    .line 967
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .registers 4

    .line 707
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v2, p2

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to request sync as user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_2d

    return-void

    .line 734
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 735
    invoke-virtual {v0, v8, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 736
    invoke-virtual {v0, v8, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 740
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v17

    .line 742
    :try_start_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_90

    if-nez v1, :cond_46

    .line 767
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    .line 746
    :cond_46
    :try_start_46
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v14

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v3

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 749
    iget-object v1, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v7, "no permission to write the sync settings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v1, v6, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 756
    invoke-virtual {v0, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v10

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    goto :goto_8c

    .line 762
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    move-object v0, v1

    move-object v1, v3

    move/from16 v2, p2

    move v3, v8

    move-object/from16 v10, p3

    .line 761
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_46 .. :try_end_8c} :catchall_90

    .line 767
    :goto_8c
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_90
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 768
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 461
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 462
    :try_start_5
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 464
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    .line 459
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateExtras(ILandroid/os/Bundle;)V
    .registers 3

    const-string/jumbo p0, "v_exemption"

    .line 1626
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_23

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_14

    goto :goto_23

    :cond_14
    const-string p0, "ContentService"

    const-string p1, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    .line 1634
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid extras specified."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return-void
.end method
