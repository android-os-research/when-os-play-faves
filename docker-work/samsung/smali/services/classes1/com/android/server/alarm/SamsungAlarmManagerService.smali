.class public Lcom/android/server/alarm/SamsungAlarmManagerService;
.super Ljava/lang/Object;
.source "SamsungAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;
    }
.end annotation


# static fields
.field public static final ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field public static final MAX_TIME_CHANGED_DUMP_SIZE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SamsungAlarmManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

.field public mTimeChangedHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetALARM_CLOCK_CHANGED_INTENT()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/android/server/alarm/SamsungAlarmManagerService;->ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/SamsungAlarmManagerService;->ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;-><init>(Lcom/android/server/alarm/SamsungAlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 68
    iput-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    const-string p0, "SamsungAlarmManager"

    const-string p1, "SamsungAlarmManagerService created."

    .line 69
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dumpmTimeChangedHistoryList(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 117
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Time Changed History:\n"

    .line 118
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 120
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    .line 123
    :cond_29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2c
    return-void
.end method

.method public notifyAlarmClockChanged(Lcom/android/server/alarm/Alarm;Ljava/lang/String;)V
    .registers 3

    .line 129
    iget-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifySetTime(J)V
    .registers 9

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, ", callingPid="

    const-string v3, ", callingUid="

    const-string v4, " [setTime] "

    const/16 v5, 0x3e8

    if-ne v1, v5, :cond_5b

    .line 88
    iget-object v1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 90
    :cond_5b
    iget-object v1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_86
    iget-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_95

    .line 94
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_95
    return-void
.end method

.method public notifySetTimeZone(Ljava/lang/String;)V
    .registers 8

    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 100
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, ", callingPid="

    const-string v3, ", callingUid="

    const-string v4, " [setTimeZone] "

    const/16 v5, 0x3e8

    if-ne v1, v5, :cond_5b

    .line 105
    iget-object v1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 107
    :cond_5b
    iget-object v1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_86
    iget-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_95

    .line 111
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mTimeChangedHistoryList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_95
    return-void
.end method
