.class public Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemovedAlarm"
.end annotation


# static fields
.field public static final REMOVE_REASON_ALARM_CANCELLED:I = 0x1

.field public static final REMOVE_REASON_DATA_CLEARED:I = 0x3

.field public static final REMOVE_REASON_EXACT_PERMISSION_REVOKED:I = 0x2

.field public static final REMOVE_REASON_PI_CANCELLED:I = 0x4

.field public static final REMOVE_REASON_UNDEFINED:I = 0x0

.field public static final REMOVE_REASON_UNINSTALL_RECEIVER:I = 0x5


# instance fields
.field public final mHash:Ljava/lang/String;

.field public final mRemoveReason:I

.field public final mTag:Ljava/lang/String;

.field public final mWhenRemovedElapsed:J

.field public final mWhenRemovedRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;IJJ)V
    .registers 8

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mTag:Ljava/lang/String;

    .line 646
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 647
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 648
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    .line 650
    iget-object p2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_22

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PI:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p1

    goto :goto_36

    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "L:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_36
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mHash:Ljava/lang/String;

    return-void
.end method

.method public static final isLoggable(I)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static final removeReasonToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_22

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string/jumbo p0, "uninstall_receiver"

    return-object p0

    :cond_26
    const-string/jumbo p0, "pi_cancelled"

    return-object p0

    :cond_2a
    const-string p0, "data_cleared"

    return-object p0

    :cond_2d
    const-string p0, "exact_alarm_permission_revoked"

    return-object p0

    :cond_30
    const-string p0, "alarm_cancelled"

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7

    .line 680
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mTag:Ljava/lang/String;

    const-string p3, "[tag"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 682
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mHash:Ljava/lang/String;

    const-string p3, "H"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 683
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    invoke-static {p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->removeReasonToString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "reason"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 684
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "elapsed"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string p2, " rtc="

    .line 686
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 687
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 688
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
