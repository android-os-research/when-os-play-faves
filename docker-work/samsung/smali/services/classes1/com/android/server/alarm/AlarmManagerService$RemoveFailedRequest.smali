.class public Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveFailedRequest"
.end annotation


# instance fields
.field public final mHash:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public final mWhenRemoveFailedElapsed:J

.field public final mWhenRemoveFailedRtc:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JJ)V
    .registers 8

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    const-string v0, ""

    .line 700
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_c
    const-string/jumbo v0, "listener"

    :goto_f
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mTag:Ljava/lang/String;

    if-eqz p1, :cond_2d

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "L:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4a
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mHash:Ljava/lang/String;

    .line 702
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mWhenRemoveFailedRtc:J

    .line 703
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mWhenRemoveFailedElapsed:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7

    .line 707
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mTag:Ljava/lang/String;

    const-string p3, "[tag"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 708
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mHash:Ljava/lang/String;

    const-string p3, "H"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 709
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mWhenRemoveFailedElapsed:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "elapsed"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "rtc="

    .line 710
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 711
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->mWhenRemoveFailedRtc:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 712
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
