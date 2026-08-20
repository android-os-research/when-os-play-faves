.class public Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpiredRecord"
.end annotation


# instance fields
.field public final mDiff:J

.field public final mFlags:J

.field public final mLastElapsed:J

.field public final mLastRtc:J

.field public final mNonWakeup:J

.field public final mWakeup:J

.field public final mWhenExpiredElapsed:J

.field public final mWhenExpiredRtc:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .registers 15

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    .line 800
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    .line 801
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    .line 802
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    .line 803
    iput-wide p9, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 804
    iput-wide p11, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    .line 805
    iput-wide p13, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    sub-long/2addr p7, p11

    sub-long/2addr p7, p9

    add-long/2addr p7, p13

    .line 806
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 9

    .line 814
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "[flag"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 815
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    const-wide/32 v0, 0x10000

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_36

    .line 816
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    cmp-long v0, p2, v0

    const-string v1, "diff"

    if-nez v0, :cond_26

    const-string/jumbo p2, "last 0"

    .line 817
    invoke-virtual {p1, v1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    goto :goto_36

    .line 819
    :cond_26
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    sub-long/2addr v2, p2

    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    sub-long/2addr v2, p2

    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    add-long/2addr v2, p2

    .line 820
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 823
    :cond_36
    :goto_36
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "wakeup"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 824
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "non-wakeup"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 825
    iget-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "elapsed"

    invoke-virtual {p1, p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "rtc="

    .line 826
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 827
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 828
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isValid()Z
    .registers 6

    .line 810
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_1e

    const-wide/16 v2, -0x3e8

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method
