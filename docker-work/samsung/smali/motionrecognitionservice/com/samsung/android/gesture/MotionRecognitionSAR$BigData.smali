.class Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BigData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;
    }
.end annotation


# static fields
.field private static final DEVICEID_MASK:I = 0x68092081

.field protected static final GRIP_TIME:I = 0x1

.field protected static final NUM_KEYS:I = 0x2

.field protected static final RRC_TIME:I


# instance fields
.field private mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

.field private screenOn:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetUsage(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->getUsage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetEndTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->setEndTime(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenState(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->setScreenState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStartTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->setStartTime(IJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->screenOn:Z

    .line 125
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    .line 130
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo-IA;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 131
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo-IA;)V

    aput-object v2, v1, v0

    .line 132
    return-void
.end method

.method private getUsage()Ljava/lang/String;
    .registers 8

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->getWorkingTime(I)I

    move-result v2

    .line 211
    .local v2, "sec_grip":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->getWorkingTime(I)I

    move-result v4

    .line 212
    .local v4, "sec_rrctime":I
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v1, "\"SAR_RRC\":\"%d\",\"SAR_GRIP\":\"%d\""

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWorkingTime(I)I
    .registers 14
    .param p1, "type"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "ret":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 183
    .local v1, "curr":J
    const/4 v3, 0x2

    if-lt p1, v3, :cond_9

    .line 184
    return v0

    .line 185
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    monitor-enter v3

    .line 186
    :try_start_e
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_39

    .line 187
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v10

    sub-long v10, v1, v10

    add-long/2addr v8, v10

    invoke-static {v4, v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 188
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v4, v4, p1

    invoke-static {v4, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 190
    :cond_39
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    long-to-int v0, v4

    .line 191
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v4, v4, p1

    invoke-static {v4, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 192
    monitor-exit v3

    .line 193
    return v0

    .line 192
    :catchall_4e
    move-exception v4

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_4e

    throw v4
.end method

.method private resetStartTime(IJ)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "curr"    # J

    .line 167
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 168
    return-void

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v0, v0, p1

    monitor-enter v0

    .line 170
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_65

    .line 171
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3c

    .line 172
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v6, v6, p1

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 174
    :cond_3c
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] resetStartTime type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v1, v1, p1

    invoke-static {v1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 177
    :cond_65
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private setEndTime(IJ)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "device"    # J

    .line 150
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 151
    return-void

    .line 152
    :cond_4
    const-wide/32 v0, 0x68092081

    and-long/2addr p2, v0

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    .line 154
    return-void

    .line 155
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v2, v2, p1

    monitor-enter v2

    .line 156
    :try_start_14
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v4

    not-long v6, p2

    and-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 157
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_83

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_83

    .line 158
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v8, v8, p1

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 159
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAR] setEndTime workingtime type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 162
    :cond_83
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] setEndTime screen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->screenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", device : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v2

    .line 164
    return-void

    .line 163
    :catchall_bf
    move-exception v0

    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_14 .. :try_end_c1} :catchall_bf

    throw v0
.end method

.method private setScreenState(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->screenOn:Z

    .line 198
    const-wide/16 v0, 0x0

    .line 199
    .local v0, "curr":J
    if-eqz p1, :cond_b

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_d

    .line 202
    :cond_b
    const-wide/16 v0, 0x0

    .line 204
    :goto_d
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->resetStartTime(IJ)V

    .line 205
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->resetStartTime(IJ)V

    .line 206
    return-void
.end method

.method private setStartTime(IJ)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "device"    # J

    .line 135
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 136
    return-void

    .line 137
    :cond_4
    const-wide/32 v0, 0x68092081

    and-long/2addr p2, v0

    .line 138
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    .line 139
    return-void

    .line 140
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v2, v2, p1

    monitor-enter v2

    .line 141
    :try_start_14
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->screenOn:Z

    if-eqz v0, :cond_2f

    .line 142
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v0, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 144
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    or-long/2addr v3, p2

    invoke-static {v0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fputmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V

    .line 145
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] setStartTime screen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->screenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", device : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->mTimeInfo:[Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->-$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v2

    .line 147
    return-void

    .line 146
    :catchall_77
    move-exception v0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_14 .. :try_end_79} :catchall_77

    throw v0
.end method
