.class public Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliveredAlarm"
.end annotation


# instance fields
.field public final mHash:Ljava/lang/String;

.field public final mOrigWhen:J

.field public final mTag:Ljava/lang/String;

.field public final mWhenDeliveredElapsed:J

.field public final mWhenDeliveredRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;JJ)V
    .registers 8

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mTag:Ljava/lang/String;

    .line 771
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mOrigWhen:J

    .line 772
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p1

    goto :goto_34

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_34
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mHash:Ljava/lang/String;

    .line 773
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredRtc:J

    .line 774
    iput-wide p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredElapsed:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7

    .line 778
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mTag:Ljava/lang/String;

    const-string p3, "[tag"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 779
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mOrigWhen:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "origWhen"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 780
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mHash:Ljava/lang/String;

    const-string p3, "H"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 781
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredElapsed:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "elapsed"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "rtc="

    .line 782
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 783
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredRtc:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 784
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
