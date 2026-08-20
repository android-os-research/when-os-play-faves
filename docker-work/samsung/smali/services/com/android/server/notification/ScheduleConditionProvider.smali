.class public Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "ScheduleConditionProvider.java"


# static fields
.field public static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final DEBUG:Z = true

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field public static final NOT_SHOWN:Ljava/lang/String; = "..."

.field public static final REQUEST_CODE_EVALUATE:I = 0x1

.field public static final SCP_SETTING:Ljava/lang/String; = "snoozed_schedule_condition_provider"

.field public static final SEPARATOR:Ljava/lang/String; = ";"

.field public static final SIMPLE_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ConditionProviders.SCP"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public mNextAlarmTime:J

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegistered:Z

.field public mScheduleEnabled:Z

.field public mSnoozedForAlarm:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/ScheduleCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevaluateSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/notification/ScheduleConditionProvider;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 60
    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".EVALUATE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 67
    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    .line 358
    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "new "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConditionProviders.SCP"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method


# virtual methods
.method public addSnoozed(Landroid/net/Uri;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    .line 312
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/service/notification/IConditionProvider;

    return-object p0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final conditionSnoozed(Landroid/net/Uri;)Z
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;
    .registers 12

    .line 292
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyCondition "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "ConditionProviders.SCP"

    .line 292
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2f
    new-instance p0, Landroid/service/notification/Condition;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const-string v2, "..."

    const-string v3, "..."

    const-string v4, "..."

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9

    const-string p2, "    "

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "      mConnected="

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "      mRegistered="

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "      mSubscriptions="

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 101
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "        "

    .line 102
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ScheduleCalendar;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/notification/ScheduleConditionProvider;->meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "* "

    goto :goto_5d

    :cond_5b
    const-string v2, "  "

    :goto_5d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "            "

    .line 105
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ScheduleCalendar;

    invoke-virtual {v1}, Landroid/service/notification/ScheduleCalendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39

    .line 108
    :cond_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_2f .. :try_end_79} :catchall_9f

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      snoozed due to alarm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mNextAlarmTime"

    .line 110
    iget-wide v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/SystemConditionProviderService;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    return-void

    :catchall_9f
    move-exception p0

    .line 108
    :try_start_a0
    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSubscriptions"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 205
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 206
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v4, 0x2

    invoke-static {p5, p6}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "evaluateSubscriptionLocked cal=%s, now=%s, nextUserAlarmTime=%s"

    .line 205
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ConditionProviders.SCP"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-nez p2, :cond_2f

    const-string p2, "!invalidId"

    .line 209
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p2

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    return-object p2

    .line 213
    :cond_2f
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->conditionSnoozed(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "snoozed"

    .line 215
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_55

    :cond_43
    const-string/jumbo v0, "meetsSchedule"

    .line 222
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_55

    :cond_4b
    const-string v0, "!meetsSchedule"

    .line 225
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    move-object p1, v0

    .line 228
    :goto_55
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 229
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide p5

    const-wide/16 v0, 0x0

    cmp-long p2, p5, v0

    if-lez p2, :cond_72

    cmp-long p2, p5, p3

    if-lez p2, :cond_72

    .line 231
    iget-wide p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long p4, p2, v0

    if-eqz p4, :cond_70

    cmp-long p2, p5, p2

    if-gez p2, :cond_72

    .line 232
    :cond_70
    iput-wide p5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    :cond_72
    return-object p1
.end method

.method public final evaluateSubscriptions()V
    .registers 15

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 182
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    .line 183
    iput-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 184
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->getNextAlarm()J

    move-result-wide v10

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v12, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 187
    :try_start_24
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3c
    :goto_3c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    .line 189
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 190
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    move-object v1, p0

    move-wide v4, v8

    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 196
    :cond_5f
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_24 .. :try_end_60} :catchall_75

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/notification/Condition;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 198
    iget-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    invoke-virtual {p0, v8, v9, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->updateAlarm(JJ)V

    return-void

    :catchall_75
    move-exception p0

    .line 196
    :try_start_76
    monitor-exit v12
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 85
    sget-object p0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNextAlarm()J
    .registers 3

    .line 265
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 266
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 265
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 267
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x0

    :goto_13
    return-wide v0
.end method

.method public getPendingIntent(J)Landroid/app/PendingIntent;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "time"

    .line 260
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0xc000000

    .line 255
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public isScheduleEnabled()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    return p0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 2

    .line 90
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z
    .registers 4

    if-eqz p1, :cond_a

    .line 271
    invoke-virtual {p1, p2, p3}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onBootComplete()V
    .registers 1

    return-void
.end method

.method public onConnected()V
    .registers 3

    .line 115
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->readSnoozed()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 127
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 128
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onScheduleEnabled(Z)V
    .registers 4

    .line 135
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScheduleEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1b
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 5

    .line 147
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1b
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x3

    const-string/jumbo v1, "invalidId"

    .line 149
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    return-void

    .line 152
    :cond_2d
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 153
    :try_start_30
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    .line 155
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_3e
    move-exception p0

    .line 154
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5

    .line 160
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 162
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_2b
    move-exception p0

    .line 163
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final readSnoozed()V
    .registers 8

    .line 332
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 333
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_49

    .line 335
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "snoozed_schedule_condition_provider"

    .line 338
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 335
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    const-string v4, ";"

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 341
    :goto_21
    array-length v5, v3

    if-ge v4, v5, :cond_3f

    .line 342
    aget-object v5, v3, v4

    if-eqz v5, :cond_2c

    .line 344
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 346
    :cond_2c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_3c

    .line 349
    :cond_33
    iget-object v6, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_44

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 353
    :cond_3f
    :try_start_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    .line 353
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    throw p0

    :catchall_49
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final removeSnoozed(Landroid/net/Uri;)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    .line 319
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final saveSnoozedLocked()V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 325
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "snoozed_schedule_condition_provider"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setRegistered(Z)V
    .registers 4

    .line 275
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 276
    :cond_5
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.SCP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-eqz p1, :cond_44

    .line 279
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/service/notification/ConditionProviderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_49

    .line 287
    :cond_44
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_49
    return-void
.end method

.method public final updateAlarm(JJ)V
    .registers 12

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 240
    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->getPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 242
    iget-boolean p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    if-eqz p0, :cond_4f

    cmp-long p0, p3, p1

    const-string v2, "ConditionProviders.SCP"

    if-lez p0, :cond_46

    .line 244
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz p0, :cond_42

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 245
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    const/4 v4, 0x1

    sub-long v5, p3, p1

    invoke-static {v5, v6}, Lcom/android/server/notification/SystemConditionProviderService;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    const/4 v4, 0x2

    invoke-static {p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "Scheduling evaluate for %s, in %s, now=%s"

    .line 244
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_42
    invoke-virtual {v0, v3, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_4f

    .line 248
    :cond_46
    sget-boolean p0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_4f

    const-string p0, "Not scheduling evaluate"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return-void
.end method
