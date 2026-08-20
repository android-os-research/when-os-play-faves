.class public Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddedAlarm"
.end annotation


# instance fields
.field public final mAlarmClock:Z

.field public final mFlags:I

.field public final mHash:Ljava/lang/String;

.field public final mInterval:J

.field public final mOrigWhen:J

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mWhenAddedElapsed:J

.field public final mWhenAddedRtc:J

.field public final mWindowLength:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;JJ)V
    .registers 8

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    .line 730
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    .line 731
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    .line 732
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    .line 733
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    goto :goto_41

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_41
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    .line 734
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    .line 735
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    .line 736
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    .line 737
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    .line 738
    iput-wide p4, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 8

    .line 742
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    const-string p3, "[tag"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 743
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "T"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 744
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "F"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 745
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "AC"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 746
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    const-string p3, "H"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 747
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    invoke-static {p2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    const-string p2, "OW="

    .line 748
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_67

    .line 751
    :cond_5c
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "OW"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 753
    :goto_67
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_78

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "WL"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 754
    :cond_78
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_87

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "RI"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 755
    :cond_87
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "elapsed"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "rtc="

    .line 756
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 757
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 758
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
