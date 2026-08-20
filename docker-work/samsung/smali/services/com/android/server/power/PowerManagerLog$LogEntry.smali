.class public Lcom/android/server/power/PowerManagerLog$LogEntry;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"

# interfaces
.implements Lcom/android/server/power/PowerManagerLog$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation


# instance fields
.field public mArgs:[B

.field public mTag:B

.field public mTid:S

.field public mTime:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final combineArgsToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 427
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    if-eqz v0, :cond_10

    const-string v1, "#"

    .line 429
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_10
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 432
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpOnce(Ljava/io/PrintWriter;J)J
    .registers 6

    .line 450
    iget-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 451
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 453
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 454
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->-$$Nest$sfgetFORMATTER()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerLog$LogEntry;->makeLogLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-wide p2
.end method

.method public final getFormatFromTag()Ljava/lang/String;
    .registers 1

    .line 522
    iget-byte p0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    packed-switch p0, :pswitch_data_64

    const-string/jumbo p0, "not matching tag case"

    return-object p0

    :pswitch_9
    const-string p0, "PowerManagerService: release WakeLock %s \'%s\'  %10s uid : %s  %s"

    return-object p0

    :pswitch_c
    const-string p0, "PowerManagerService: acquire WakeLock %s \'%s\'  %10s uid : %s  %s"

    return-object p0

    :pswitch_f
    const-string p0, "PowerManagerService: [api] setDozeAfterScreenOff: %s"

    return-object p0

    :pswitch_12
    const-string p0, "PowerManagerService: nativeSetInteractiveAsync %s"

    return-object p0

    :pswitch_15
    const-string p0, "PowerManagerService: [API] setDualScreenPolicy: dualScreenPolicy: %s"

    return-object p0

    :pswitch_18
    const-string p0, "PowerManagerService: [PWL] %s \'%s\'  %10s uid : %s  %s"

    return-object p0

    :pswitch_1b
    const-string p0, "PowerManagerService: [PWL] mBootCompleted : %s"

    return-object p0

    :pswitch_1e
    const-string p0, "PowerManagerService: [PWL] mDisplayPowerRequest.policy : %s"

    return-object p0

    :pswitch_21
    const-string p0, "PowerManagerService: [PWL] mDisplayReady : %s"

    return-object p0

    :pswitch_24
    const-string p0, "PowerManagerService: [PWL] mUserActivitySummary : 0x%s"

    return-object p0

    :pswitch_27
    const-string p0, "PowerManagerService: [PWL] Off : %s ago"

    return-object p0

    :pswitch_2a
    const-string p0, "PowerManagerService: [PWL] On : %s, mStayOn: %s, mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: %s, mUserActivitySummary: 0x%s"

    return-object p0

    :pswitch_2d
    const-string p0, "LocalDisplayAdapter: !@ %s: took %s ms"

    return-object p0

    :pswitch_30
    const-string p0, "DisplayPowerController: updatePowerState : mUseHbmAtManualMax : %s"

    return-object p0

    :pswitch_33
    const-string p0, "AutomaticBrightnessController: calculateAmbientLux: No ambient light readings available"

    return-object p0

    :pswitch_36
    const-string p0, "PowerManagerService: UserActivityState : %s -> %s"

    return-object p0

    :pswitch_39
    const-string p0, "DisplayPowerState: !@ ColorFade exit"

    return-object p0

    :pswitch_3c
    const-string p0, "DisplayPowerState: !@ ColorFade entry"

    return-object p0

    :pswitch_3f
    const-string p0, "LocalDisplayAdapter: !@ display_state: %s -> %s (id:%s, limit:%s, L:%s)"

    return-object p0

    :pswitch_42
    const-string p0, "BrightnessMappingStrategy: addUserDataPoint: [%s] %s"

    return-object p0

    :pswitch_45
    const-string p0, "ShortTermModel: reset data, %s"

    return-object p0

    :pswitch_48
    const-string p0, "AutomaticBrightnessController: updateAutoBrightness : %s    %6s < %6s < %8s (adj:%s) %s"

    return-object p0

    :pswitch_4b
    const-string p0, "DisplayPowerController: Animating brightness: target=%s, rate=%s, AB limit(%s ~ %s), MB limit(%s ~ %s), sf=%s"

    return-object p0

    :pswitch_4e
    const-string p0, "PowerManagerService: Screen__On : Cancel (folder)"

    return-object p0

    :pswitch_51
    const-string p0, "PowerManagerService: Screen__On : Cancel (coverType: %s)"

    return-object p0

    :pswitch_54
    const-string p0, "PowerManagerService: Screen__On : Cancel (proximity)"

    return-object p0

    :pswitch_57
    const-string p0, "PowerManagerService: Screen__On : Cancel (notifications are disabled : %s)"

    return-object p0

    :pswitch_5a
    const-string p0, "PowerManagerService: Screen__On : Cancel (not allow 3rd-party app on sub screen"

    return-object p0

    :pswitch_5d
    const-string p0, "PowerManagerService: !@Screen__Off - %s : (groupid : %s, uid : %s, reason : %s)"

    return-object p0

    :pswitch_60
    const-string p0, "PowerManagerService: !@Screen__On - %s : (groupid : %s, uid : %s, reason : %s)"

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public final getLockFlagsToString(I)Ljava/lang/String;
    .registers 4

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_59

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_53

    const/16 v1, 0x20

    if-eq v0, v1, :cond_44

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x80

    if-eq v0, v1, :cond_38

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported wakelock level flags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_38
    const-string v0, "DRAW_WAKE_LOCK                 "

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_3e
    const-string v0, "DOZE_WAKE_LOCK                 "

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_44
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK "

    .line 495
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6a

    const-string v0, "WAIT_FOR_NO_PROXIMITY "

    .line 497
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_53
    const-string v0, "FULL_WAKE_LOCK                 "

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_59
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK        "

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_5f
    const-string v0, "SCREEN_DIM_WAKE_LOCK           "

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_65
    const-string v0, "PARTIAL_WAKE_LOCK              "

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    :goto_6a
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_74

    const-string v0, "ACQUIRE_CAUSES_WAKEUP "

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_7e

    const-string p1, "ON_AFTER_RELEASE "

    .line 508
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_7e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTime(J)J
    .registers 5

    .line 445
    iget-byte p0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    int-to-long v0, p0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public makeLogLine()Ljava/lang/String;
    .registers 4

    .line 436
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "#"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-byte v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_29

    :cond_1c
    const/4 v1, 0x0

    .line 438
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerLog$LogEntry;->getLockFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 440
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerLog$LogEntry;->getFormatFromTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(BBS[Ljava/lang/Object;)V
    .registers 5

    .line 406
    iput-byte p1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    .line 407
    iput-byte p2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    .line 408
    iput-short p3, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    .line 409
    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerLog$LogEntry;->combineArgsToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    return-void
.end method

.method public set([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 413
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    const/4 v0, 0x1

    .line 414
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    const/4 v0, 0x2

    .line 415
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    const/4 v0, 0x3

    .line 416
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
