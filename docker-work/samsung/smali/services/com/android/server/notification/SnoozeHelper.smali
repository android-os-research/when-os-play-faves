.class public Lcom/android/server/notification/SnoozeHelper;
.super Ljava/lang/Object;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SnoozeHelper$Callback;,
        Lcom/android/server/notification/SnoozeHelper$Inserter;
    }
.end annotation


# static fields
.field public static final CONCURRENT_SNOOZE_LIMIT:I = 0x1f4

.field public static final DEBUG:Z

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final INDENT:Ljava/lang/String; = "    "

.field public static final MAX_STRING_LENGTH:I = 0x3e8

.field public static final REPOST_ACTION:Ljava/lang/String;

.field public static final REPOST_SCHEME:Ljava/lang/String; = "repost"

.field public static final REQUEST_CODE_REPOST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SnoozeHelper"

.field public static final XML_SNOOZED_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final XML_SNOOZED_NOTIFICATION_CONTEXT:Ljava/lang/String; = "context"

.field public static final XML_SNOOZED_NOTIFICATION_CONTEXT_ID:Ljava/lang/String; = "id"

.field public static final XML_SNOOZED_NOTIFICATION_KEY:Ljava/lang/String; = "key"

.field public static final XML_SNOOZED_NOTIFICATION_PKG:Ljava/lang/String; = "pkg"

.field public static final XML_SNOOZED_NOTIFICATION_TIME:Ljava/lang/String; = "time"

.field public static final XML_SNOOZED_NOTIFICATION_USER_ID:Ljava/lang/String; = "user-id"

.field public static final XML_SNOOZED_NOTIFICATION_VERSION:I = 0x1

.field public static final XML_SNOOZED_NOTIFICATION_VERSION_LABEL:Ljava/lang/String; = "version"

.field public static final XML_TAG_NAME:Ljava/lang/String; = "snoozed-notifications"


# instance fields
.field public mAm:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistedSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public mUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1xN8LvFhyckntIi5UcO83hfx5iI(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->lambda$clearData$1(Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Q-0j2rToL1UzpJhmm03oGbn3SA(JLandroid/util/TypedXmlSerializer;Ljava/lang/Long;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->lambda$writeXml$3(JLandroid/util/TypedXmlSerializer;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pa2s-zkuiRKdo5HDgV2lESLlUfk(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/SnoozeHelper;->lambda$scheduleRepostAtTime$2(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$koMFTLjD_L0rf2yxbsNpNRf1RM4(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->lambda$writeXml$4(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDb35BATegonwCrfSJGgB_I0nUg(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->lambda$repostGroupSummary$0(Lcom/android/server/notification/NotificationRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetREPOST_ACTION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "SnoozeHelper"

    const/4 v1, 0x3

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 7

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 695
    new-instance v0, Lcom/android/server/notification/SnoozeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SnoozeHelper$1;-><init>(Lcom/android/server/notification/SnoozeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "repost"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 124
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v0, "alarm"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 127
    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    .line 128
    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-void
.end method

.method private synthetic lambda$clearData$1(Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V
    .registers 5

    .line 480
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 481
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 482
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p1, 0x33f

    .line 483
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 p1, 0x5

    .line 484
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 482
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private synthetic lambda$repostGroupSummary$0(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 5

    .line 456
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x33f

    .line 457
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    .line 458
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 456
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 459
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method private synthetic lambda$scheduleRepostAtTime$2(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 9

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 533
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 534
    sget-boolean p2, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz p2, :cond_2c

    const-string p2, "SnoozeHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling evaluate for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_2c
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p4, p5, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw p0
.end method

.method public static synthetic lambda$writeXml$3(JLandroid/util/TypedXmlSerializer;Ljava/lang/Long;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 591
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p1, "time"

    .line 590
    invoke-interface {p2, p0, p1, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static synthetic lambda$writeXml$4(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    .line 596
    invoke-interface {p0, v0, v1, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public canSnooze(I)Z
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    add-int/2addr p0, p1

    const/16 p1, 0x1f4

    if-le p0, p1, :cond_11

    const/4 p0, 0x0

    .line 146
    monitor-exit v0

    return p0

    .line 148
    :cond_11
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public cancel(IZ)V
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 345
    monitor-exit v0

    return-void

    .line 347
    :cond_d
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 348
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    if-eqz p2, :cond_1d

    .line 350
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 352
    :cond_1d
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    .line 354
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v2

    if-ltz v2, :cond_3b

    const/4 v2, 0x1

    .line 355
    iput-boolean v2, p2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    goto :goto_3b

    .line 359
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

.method public cancel(ILjava/lang/String;)Z
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    if-nez p0, :cond_14

    .line 367
    monitor-exit v0

    return p1

    .line 369
    :cond_14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_18
    const/4 v1, 0x1

    if-ge p1, p2, :cond_26

    .line 371
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v1, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 373
    :cond_26
    monitor-exit v0

    return v1

    :catchall_28
    move-exception p0

    .line 374
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public cancel(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 325
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_4a

    .line 329
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 330
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 332
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p2

    if-ne p2, p4, :cond_19

    .line 333
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 334
    monitor-exit v0

    return p1

    .line 338
    :cond_4a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public cleanupPersistedContext(Ljava/lang/String;)V
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, p1, v1, v3}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 140
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public clearData(ILjava/lang/String;)V
    .registers 9

    .line 468
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_13

    .line 472
    monitor-exit v0

    return-void

    .line 474
    :cond_13
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_40

    .line 475
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-eqz v3, :cond_3d

    .line 477
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v4, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p2, v3, p1}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V

    .line 486
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 489
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 6

    .line 493
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "repost"

    .line 497
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 498
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "key"

    .line 499
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "userId"

    .line 500
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0xc000000

    .line 493
    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8

    .line 544
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    const-string v0, "\n  Snoozed notifications:"

    .line 545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "    "

    .line 547
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 550
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 551
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "    "

    .line 553
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    .line 554
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    .line 555
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_48

    :cond_67
    const-string v0, "\n Pending snoozed notifications"

    .line 559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "    "

    .line 561
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 564
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_a7

    goto :goto_76

    .line 568
    :cond_a7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 569
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "    "

    .line 570
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    .line 571
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    .line 572
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    .line 574
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_af

    .line 578
    :cond_da
    monitor-exit p2

    return-void

    :catchall_dc
    move-exception p0

    monitor-exit p2
    :try_end_de
    .catchall {:try_start_3 .. :try_end_de} :catchall_dc

    throw p0
.end method

.method public getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 7

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_41

    .line 221
    :cond_15
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 224
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_39

    .line 226
    monitor-exit v0

    return-object v2

    .line 228
    :cond_39
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object p0

    :cond_41
    :goto_41
    const-string p0, "SnoozeHelper"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Snoozed data sets no longer agree for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v0

    return-object v2

    :catchall_59
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 201
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_3b

    const/4 p1, 0x0

    .line 203
    :goto_1b
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p1, p3, :cond_3b

    .line 204
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/NotificationRecord;

    .line 205
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 207
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 211
    :cond_3b
    monitor-exit v1

    return-object v0

    :catchall_3d
    move-exception p0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final getPkgKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_1d

    .line 173
    invoke-virtual {p0, p3}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 175
    :cond_1d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_1c

    .line 159
    invoke-virtual {p0, p3}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 161
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_27

    if-nez p0, :cond_26

    const-wide/16 p0, 0x0

    .line 163
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_26
    return-object p0

    :catchall_27
    move-exception p0

    .line 161
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getSnoozed(ILjava/lang/String;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 189
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 191
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_25

    .line 192
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :catchall_25
    move-exception p0

    .line 191
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getSnoozed()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 240
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 242
    :cond_2e
    monitor-exit v0

    return-object v1

    :catchall_30
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_10

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_10

    const/4 p0, 0x0

    .line 292
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    return-object p1
.end method

.method public isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    .line 183
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ad

    .line 645
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_19

    const-string/jumbo v3, "snoozed-notifications"

    .line 647
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_ad

    :cond_19
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "notification"

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "context"

    .line 652
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2d
    const-string/jumbo v0, "version"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 653
    invoke-interface {p1, v3, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :try_start_38
    const-string/jumbo v0, "key"

    .line 656
    invoke-interface {p1, v3, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    .line 657
    invoke-interface {p1, v3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "user-id"

    .line 658
    invoke-interface {p1, v3, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "notification"

    .line 660
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string/jumbo v5, "time"

    const-wide/16 v6, 0x0

    .line 661
    invoke-interface {p1, v3, v5, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 663
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_7f

    .line 664
    iget-object v11, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6e} :catch_a3

    .line 666
    :try_start_6e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    move-object v5, p0

    move-object v6, v1

    move-object v7, v0

    .line 665
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 667
    monitor-exit v11

    goto :goto_7f

    :catchall_7c
    move-exception v0

    monitor-exit v11
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0

    :cond_7f
    :goto_7f
    const-string v5, "context"

    .line 670
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "id"

    .line 671
    invoke-interface {p1, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 673
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_91} :catch_a3

    .line 675
    :try_start_91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    move-object v5, p0

    move-object v6, v1

    move-object v7, v0

    .line 674
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 677
    monitor-exit v2

    goto/16 :goto_0

    :catchall_a0
    move-exception v0

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v0

    const-string v1, "SnoozeHelper"

    const-string v2, "Exception in reading snooze data from policy xml"

    .line 680
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 313
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_12
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 318
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_27

    .line 319
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object p2
.end method

.method public repost(Ljava/lang/String;IZ)V
    .registers 9

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 406
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 408
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 410
    invoke-virtual {p0, p2, v2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_36

    .line 412
    monitor-exit v1

    return-void

    .line 414
    :cond_36
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 416
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_70

    if-eqz p1, :cond_6f

    .line 418
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v0, :cond_6f

    .line 420
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 422
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x33f

    .line 423
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    .line 424
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {p0, p2, p1, p3}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;Z)V

    :cond_6f
    return-void

    :catchall_70
    move-exception p0

    .line 416
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public repost(Ljava/lang/String;Z)V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 395
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;IZ)V

    .line 397
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 430
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 432
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-nez p1, :cond_13

    .line 434
    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_47

    .line 440
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 441
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 442
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 443
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 444
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_47
    :goto_47
    if-eqz v1, :cond_67

    .line 450
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 451
    iget-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_67

    .line 454
    iget-boolean p3, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez p3, :cond_67

    .line 455
    new-instance p3, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;I)V

    .line 461
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 464
    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 14

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v6, v0, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public final scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 14

    .line 529
    new-instance v7, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 540
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public scheduleRepostsForPersistedNotifications(J)V
    .registers 14

    .line 505
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const/4 v3, 0x0

    .line 507
    :goto_1a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 508
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 509
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 510
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 511
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v4, :cond_5a

    if-eqz v6, :cond_5a

    if-nez v5, :cond_45

    goto :goto_5a

    .line 516
    :cond_45
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_82

    .line 517
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_82

    :cond_5a
    :goto_5a
    const-string v7, "SnoozeHelper"

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data out of sync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 521
    :cond_85
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public setAlarmManager(Landroid/app/AlarmManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 688
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    return-void
.end method

.method public final snooze(Lcom/android/server/notification/NotificationRecord;)V
    .registers 11

    .line 280
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 281
    sget-boolean v1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "SnoozeHelper"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Snoozing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_26
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v8, p1

    .line 285
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 287
    monitor-exit v1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public snooze(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 13

    .line 250
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move-wide v5, p2

    .line 255
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 257
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 258
    :try_start_2b
    invoke-virtual {p0, v7}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 260
    monitor-exit p1

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public snooze(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 12

    .line 267
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p2, :cond_30

    .line 269
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 273
    invoke-virtual {p0, p2}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 270
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 274
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw p0

    .line 276
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public final storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;TT;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1f

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 306
    :cond_1f
    invoke-virtual {v0, p2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(ILcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 383
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1b

    .line 385
    monitor-exit v0

    return-void

    .line 387
    :cond_1b
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "snoozed-notifications"

    const/4 v4, 0x0

    .line 584
    invoke-interface {p1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    const-string/jumbo v5, "notification"

    new-instance v6, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v2, p1}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;-><init>(JLandroid/util/TypedXmlSerializer;)V

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Landroid/util/TypedXmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V

    .line 593
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    const-string v2, "context"

    new-instance v3, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/TypedXmlSerializer;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Landroid/util/TypedXmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V

    const-string/jumbo p0, "snoozed-notifications"

    .line 599
    invoke-interface {p1, v4, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final writeXml(Landroid/util/TypedXmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/TypedXmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/SnoozeHelper$Inserter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_8a

    .line 614
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    .line 615
    :goto_f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_86

    .line 616
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 617
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 618
    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 619
    iget-object v8, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v7, :cond_5c

    if-nez v8, :cond_34

    goto :goto_5c

    :cond_34
    const/4 v9, 0x0

    .line 626
    invoke-interface {p1, v9, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    invoke-interface {p4, v6}, Lcom/android/server/notification/SnoozeHelper$Inserter;->insert(Ljava/lang/Object;)V

    const-string/jumbo v6, "version"

    const/4 v10, 0x1

    .line 630
    invoke-interface {p1, v9, v6, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "key"

    .line 632
    invoke-interface {p1, v9, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkg"

    .line 633
    invoke-interface {p1, v9, v5, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "user-id"

    invoke-interface {p1, v9, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    invoke-interface {p1, v9, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_83

    .line 622
    :cond_5c
    :goto_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " or user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " missing for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SnoozeHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_8a
    return-void
.end method
