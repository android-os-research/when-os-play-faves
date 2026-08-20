.class public Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupRecord"
.end annotation


# instance fields
.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWakeupRtc:J


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .registers 5

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    .line 839
    iput p3, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    .line 840
    iput-object p4, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 6

    .line 844
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "rtc"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 845
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 846
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "tag"

    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 847
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
