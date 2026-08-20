.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# static fields
.field public static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final DEBUG:Z

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field public static final NOT_SHOWN:Ljava/lang/String; = "..."

.field public static final REQUEST_CODE_EVALUATE:I = 0x1

.field public static final SIMPLE_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field public mBootComplete:Z

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field public mNextAlarmTime:J

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegistered:Z

.field public final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final mThread:Landroid/os/HandlerThread;

.field public final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field public final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field public final mWorker:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEvaluateSubscriptionsW(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorker(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevaluateSubscriptions(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevaluateSubscriptionsW(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptionsW()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadTrackers(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/notification/EventConditionProvider;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 60
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".EVALUATE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 77
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 66
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 336
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 345
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 353
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    .line 78
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4a
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method public static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 4

    .line 330
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/service/notification/IConditionProvider;

    return-object p0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2

    .line 183
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .registers 11

    .line 309
    new-instance p0, Landroid/service/notification/Condition;

    const-string v2, "..."

    const-string v3, "..."

    const-string v4, "..."

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9

    const-string p2, "    "

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "      mConnected="

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "      mRegistered="

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "      mBootComplete="

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "mNextAlarmTime"

    .line 100
    iget-wide v2, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/SystemConditionProviderService;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    .line 101
    iget-object p2, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter p2

    :try_start_3d
    const-string v0, "      mSubscriptions="

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "        "

    .line 104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_48

    .line 107
    :cond_5d
    monitor-exit p2
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_8b

    const-string p2, "      mTrackers="

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 109
    :goto_64
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_8a

    const-string v0, "        user="

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/CalendarTracker;

    const-string v1, "          "

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_64

    :cond_8a
    return-void

    :catchall_8b
    move-exception p0

    .line 107
    :try_start_8c
    monitor-exit p2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method public final evaluateSubscriptions()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 210
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final evaluateSubscriptionsW()V
    .registers 18

    move-object/from16 v0, p0

    .line 215
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v2, "ConditionProviders.ECP"

    const-string v3, "evaluateSubscriptions"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_d
    iget-boolean v2, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-nez v2, :cond_1b

    if-eqz v1, :cond_1a

    const-string v0, "ConditionProviders.ECP"

    const-string v1, "Skipping evaluate before boot complete"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    .line 220
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v4, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v4

    const/4 v5, 0x0

    move v6, v5

    .line 223
    :goto_29
    :try_start_29
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4b

    .line 224
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    .line 225
    iget-object v9, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_43

    const/4 v8, 0x0

    goto :goto_45

    :cond_43
    iget-object v8, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 224
    :goto_45
    invoke-virtual {v7, v8}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 227
    :cond_4b
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_55

    const/4 v6, 0x1

    goto :goto_56

    :cond_55
    move v6, v5

    :goto_56
    invoke-virtual {v0, v6}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    .line 229
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v11, 0x0

    :goto_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 230
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v14

    if-nez v14, :cond_7e

    .line 232
    invoke-virtual {v0, v13, v5}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v6

    goto/16 :goto_ea

    .line 236
    :cond_7e
    iget-object v15, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v15, :cond_ba

    move v15, v5

    const/4 v8, 0x0

    .line 238
    :goto_84
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v15, v7, :cond_b7

    .line 239
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    .line 240
    invoke-virtual {v7, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v7

    if-nez v8, :cond_9e

    move-object/from16 v16, v6

    move-object v8, v7

    goto :goto_b1

    .line 244
    :cond_9e
    iget-boolean v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    iget-boolean v10, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    or-int/2addr v9, v10

    iput-boolean v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 245
    iget-wide v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-object/from16 v16, v6

    iget-wide v5, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    :goto_b1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_84

    :cond_b7
    move-object/from16 v16, v6

    goto :goto_f3

    :cond_ba
    move-object/from16 v16, v6

    .line 250
    iget v5, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v5

    .line 251
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/CalendarTracker;

    if-nez v6, :cond_ef

    const-string v6, "ConditionProviders.ECP"

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No calendar tracker found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 254
    invoke-virtual {v0, v13, v5}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ea
    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_61

    .line 257
    :cond_ef
    invoke-virtual {v6, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v8

    .line 259
    :goto_f3
    iget-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_104

    cmp-long v7, v11, v9

    if-eqz v7, :cond_103

    cmp-long v7, v5, v11

    if-gez v7, :cond_104

    :cond_103
    move-wide v11, v5

    .line 263
    :cond_104
    iget-boolean v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    if-nez v5, :cond_112

    const/4 v5, 0x0

    .line 264
    invoke-virtual {v0, v13, v5}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_11b

    :cond_112
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 267
    invoke-virtual {v0, v13, v6}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11b
    move-object/from16 v6, v16

    goto/16 :goto_61

    .line 269
    :cond_11f
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V

    .line 270
    monitor-exit v4
    :try_end_123
    .catchall {:try_start_29 .. :try_end_123} :catchall_159

    .line 271
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_127
    :goto_127
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_139

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Condition;

    if-eqz v4, :cond_127

    .line 273
    invoke-virtual {v0, v4}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_127

    .line 276
    :cond_139
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_158

    const-string v0, "ConditionProviders.ECP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateSubscriptions took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    return-void

    :catchall_159
    move-exception v0

    .line 270
    :try_start_15a
    monitor-exit v4
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    throw v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 86
    sget-object p0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPendingIntent(J)Landroid/app/PendingIntent;
    .registers 5

    .line 295
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android"

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "time"

    .line 300
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0xc000000

    .line 295
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public isScheduleEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public onBootComplete()V
    .registers 4

    .line 117
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/EventConditionProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    return-void
.end method

.method public onConnected()V
    .registers 3

    .line 134
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 140
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 141
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    return-void
.end method

.method public onScheduleEnabled(Z)V
    .registers 3

    .line 148
    sget-boolean p0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_1b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onScheduleEnabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConditionProviders.ECP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 5

    .line 159
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1b
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    return-void

    .line 164
    :cond_2a
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    .line 165
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 168
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5

    .line 173
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    .line 175
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 176
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 178
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final reloadTrackers()V
    .registers 8

    .line 192
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "reloadTrackers"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    .line 193
    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 194
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/CalendarTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 196
    :cond_24
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 198
    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    goto :goto_52

    :cond_4c
    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/notification/EventConditionProvider;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    :goto_52
    if-nez v3, :cond_6d

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 203
    :cond_6d
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    new-instance v5, Lcom/android/server/notification/CalendarTracker;

    iget-object v6, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 205
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method public final rescheduleAlarm(JJ)V
    .registers 12

    .line 280
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    .line 281
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 282
    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/EventConditionProvider;->getPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object p0

    .line 283
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const-string v2, "ConditionProviders.ECP"

    if-eqz v1, :cond_4b

    cmp-long v3, p3, p1

    if-gez v3, :cond_20

    goto :goto_4b

    .line 289
    :cond_20
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x1

    sub-long v5, p3, p1

    invoke-static {v5, v6}, Lcom/android/server/notification/SystemConditionProviderService;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    invoke-static {p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Scheduling evaluate for %s, in %s, now=%s"

    .line 289
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_47
    invoke-virtual {v0, v3, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 285
    :cond_4b
    :goto_4b
    sget-boolean p0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_6c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not scheduling evaluate: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5f

    const-string/jumbo p1, "no time specified"

    goto :goto_62

    :cond_5f
    const-string/jumbo p1, "specified time in the past"

    .line 286
    :goto_62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return-void
.end method

.method public final setRegistered(Z)V
    .registers 4

    .line 313
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 314
    :cond_5
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    if-eqz p1, :cond_3f

    .line 317
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/service/notification/ConditionProviderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_44

    .line 324
    :cond_3f
    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_44
    return-void
.end method
