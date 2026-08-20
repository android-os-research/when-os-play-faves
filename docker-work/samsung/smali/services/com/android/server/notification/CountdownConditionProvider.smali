.class public Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CountdownConditionProvider$Receiver;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final DEBUG:Z

.field public static final EXTRA_CONDITION_ID:Ljava/lang/String; = "condition_id"

.field public static final REQUEST_CODE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "ConditionProviders.CCP"


# instance fields
.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public mIsAlarm:Z

.field public final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field public mTime:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetACTION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnewCondition(JZI)Landroid/service/notification/Condition;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JZI)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/notification/CountdownConditionProvider;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 47
    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$Receiver-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 59
    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_19

    const-string p0, "ConditionProviders.CCP"

    const-string/jumbo v0, "new CountdownConditionProvider()"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method public static final newCondition(JZI)Landroid/service/notification/Condition;
    .registers 13

    .line 182
    new-instance v8, Landroid/service/notification/Condition;

    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v8
.end method

.method public static tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    .line 187
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long p0, v6, v0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v4, 0xea60

    move-wide v0, v6

    move-wide v2, v8

    .line 191
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 193
    invoke-static {v6, v7}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    invoke-static {v8, v9}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Scheduled for %s, %s in the future (%s), now=%s"

    .line 192
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/service/notification/IConditionProvider;

    return-object p0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5

    const-string p2, "    CountdownConditionProvider:"

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "      mConnected="

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "      mTime="

    .line 91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 64
    sget-object p0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .registers 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "condition_id"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 156
    iget-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    const/16 v0, 0x64

    const/high16 v1, 0xc000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

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

    .line 69
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public onBootComplete()V
    .registers 1

    return-void
.end method

.method public onConnected()V
    .registers 5

    .line 96
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 104
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 105
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    if-eqz v0, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1a
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    return-void
.end method

.method public onScheduleEnabled(Z)V
    .registers 3

    .line 115
    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_1b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onScheduleEnabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConditionProviders.CCP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 14

    .line 126
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    const-string v1, "ConditionProviders.CCP"

    if-eqz v0, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscribe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1b
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 128
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    .line 129
    iget-object v2, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider;->getPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 132
    invoke-virtual {v2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 133
    iget-wide v3, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_9d

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 135
    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/32 v8, 0xea60

    move-wide v6, v10

    .line 136
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 137
    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v6, v4, v10

    const/4 v7, 0x0

    if-gtz v6, :cond_5f

    .line 139
    iget-boolean p1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    invoke-static {v4, v5, p1, v7}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JZI)Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_62

    .line 142
    :cond_5f
    invoke-virtual {v2, v7, v4, v5, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_62
    if-eqz v0, :cond_9d

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    .line 146
    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v0, v4, v10

    if-gtz v0, :cond_70

    const-string v0, "Not scheduling"

    goto :goto_72

    :cond_70
    const-string v0, "Scheduling"

    :goto_72
    aput-object v0, p1, v7

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    aput-object v2, p1, v0

    const/4 v0, 0x2

    .line 147
    invoke-static {v4, v5}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p1, v0

    const/4 p0, 0x4

    aput-object v3, p1, p0

    const/4 p0, 0x5

    invoke-static {v10, v11}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p0

    const-string p0, "%s %s for %s, %s in the future (%s), now=%s"

    .line 144
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method
