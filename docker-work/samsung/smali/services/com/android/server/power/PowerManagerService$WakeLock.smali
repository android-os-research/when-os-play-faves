.class public final Lcom/android/server/power/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# static fields
.field public static final WAKE_LOCK_DISABLE_FREECESS:I = 0x8

.field public static final WAKE_LOCK_DISABLE_GMSALARM:I = 0x10

.field public static final WAKE_LOCK_DISABLE_IDLEMODE:I = 0x2

.field public static final WAKE_LOCK_DISABLE_LOWPWRST:I = 0x4

.field public static final WAKE_LOCK_DISABLE_NOCHACHED:I = 0x1


# instance fields
.field public mAcquireTime:J

.field public mCallback:Landroid/os/IWakeLockCallback;

.field public mConsecutiveAcquireCount:I

.field public mDisableReason:I

.field public mDisabled:Z

.field public mDisabledByFreecess:Z

.field public final mDisplayId:I

.field public mFlags:I

.field public mHistoryTag:Ljava/lang/String;

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public mNotifiedLong:Z

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mProximityNegativeDebounce:I

.field public mProximityPositiveDebounce:I

.field public mTag:Ljava/lang/String;

.field public final mUidState:Lcom/android/server/power/PowerManagerService$UidState;

.field public mWorkSource:Landroid/os/WorkSource;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetDisableReasonString(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getDisableReasonString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V
    .registers 13

    .line 8408
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8409
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 8410
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    .line 8411
    iput p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 8412
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 8413
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 8414
    invoke-static {p7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcopyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 8415
    iput-object p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 8416
    iput p9, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 8417
    iput p10, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 8418
    iput-object p11, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 8419
    iput-object p12, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 8420
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->linkToDeath()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 8425
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->unlinkToDeath()V

    .line 8426
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleWakeLockDeath(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    .line 8555
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 8556
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8557
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10b00000003L

    .line 8559
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 8560
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v4

    :goto_31
    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10800000002L

    .line 8562
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v2, v7

    if-eqz v2, :cond_47

    move v2, v3

    goto :goto_48

    :cond_47
    move v2, v4

    :goto_48
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10800000003L

    .line 8564
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v2, v7

    if-eqz v2, :cond_58

    goto :goto_59

    :cond_58
    move v3, v4

    :goto_59
    invoke-virtual {p1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8566
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10800000004L

    .line 8568
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8569
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_77

    const-wide v0, 0x10300000005L

    .line 8570
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_77
    const-wide v0, 0x10800000006L

    .line 8572
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000007L

    .line 8573
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000008L

    .line 8574
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8576
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p0, :cond_a1

    const-wide v0, 0x10b00000009L

    .line 8577
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8579
    :cond_a1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getDisableReasonString()Ljava/lang/String;
    .registers 3

    .line 8620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8621
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    const-string v1, " nocached"

    .line 8622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8624
    :cond_10
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    const-string v1, " idlemode"

    .line 8625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8627
    :cond_1b
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    const-string v1, " lowpwrst"

    .line 8628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8630
    :cond_26
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_31

    const-string v1, " freecess"

    .line 8631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8633
    :cond_31
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3c

    const-string p0, " gmsalarm"

    .line 8634
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8636
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockFlagsString()Ljava/lang/String;
    .registers 4

    .line 8606
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const-string v1, ""

    if-eqz v0, :cond_1a

    .line 8607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACQUIRE_CAUSES_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8609
    :cond_1a
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_32

    .line 8610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ON_AFTER_RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8612
    :cond_32
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_4a

    .line 8613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SYSTEM_WAKELOCK"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4a
    return-object v1
.end method

.method public final getLockLevelString()Ljava/lang/String;
    .registers 2

    .line 8584
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_35

    const/4 v0, 0x6

    if-eq p0, v0, :cond_32

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x20

    if-eq p0, v0, :cond_29

    const/16 v0, 0x40

    if-eq p0, v0, :cond_26

    const/16 v0, 0x80

    if-eq p0, v0, :cond_23

    const-string p0, "???                           "

    return-object p0

    :cond_23
    const-string p0, "DRAW_WAKE_LOCK                "

    return-object p0

    :cond_26
    const-string p0, "DOZE_WAKE_LOCK                "

    return-object p0

    :cond_29
    const-string p0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    return-object p0

    :cond_2c
    const-string p0, "FULL_WAKE_LOCK                "

    return-object p0

    :cond_2f
    const-string p0, "SCREEN_BRIGHT_WAKE_LOCK       "

    return-object p0

    :cond_32
    const-string p0, "SCREEN_DIM_WAKE_LOCK          "

    return-object p0

    :cond_35
    const-string p0, "PARTIAL_WAKE_LOCK             "

    return-object p0
.end method

.method public getPowerGroupId()Ljava/lang/Integer;
    .registers 3

    .line 8498
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    if-ne v0, v1, :cond_e

    goto :goto_25

    .line 8502
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 8504
    iget p0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0

    .line 8499
    :cond_25
    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;IILandroid/os/IWakeLockCallback;)Z
    .registers 7

    .line 8459
    iget p6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-ne p6, p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 8460
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 8461
    invoke-virtual {p0, p3}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne p1, p4, :cond_1c

    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne p0, p5, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public hasSameWorkSource(Landroid/os/WorkSource;)Z
    .registers 2

    .line 8489
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final linkToDeath()V
    .registers 3

    .line 8431
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    .line 8433
    :catch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wakelock.mLock is already dead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisabled(ZI)Z
    .registers 4

    .line 8448
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, p1, :cond_a

    .line 8449
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 8450
    iput p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 8512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8513
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    .line 8514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8515
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 8516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8517
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8518
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_2b

    const-string v1, " DISABLED"

    .line 8519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8521
    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_44

    const-string v1, " ACQ="

    .line 8522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8523
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8525
    :cond_44
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v1, :cond_4d

    const-string v1, " LONG"

    .line 8526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    const-string v1, " (uid="

    .line 8528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8529
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8530
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-eqz v1, :cond_65

    const-string v1, " pid="

    .line 8531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8532
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8534
    :cond_65
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_73

    const-string v1, " ws="

    .line 8535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8536
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_73
    const-string v1, " displayId="

    .line 8539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8540
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lock="

    .line 8542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8543
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8545
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    if-lez v1, :cond_9d

    const-string v1, " acqCnt="

    .line 8546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8547
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9d
    const-string p0, ")"

    .line 8550
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlinkToDeath()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 8440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "PowerManagerService"

    const-string v1, "Failed to unlink Wakelock.mLock"

    .line 8442
    invoke-static {v0, v1, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method public updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 11

    .line 8469
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " to "

    if-eqz v0, :cond_5c

    .line 8473
    iget p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne p3, p6, :cond_3d

    .line 8477
    iget p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne p3, p7, :cond_1e

    .line 8481
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 8482
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 8483
    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 8484
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 8485
    iput-object p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    return-void

    .line 8478
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Existing wake lock pid changed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8474
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Existing wake lock uid changed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8470
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Existing wake lock package name changed: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateWorkSource(Landroid/os/WorkSource;)V
    .registers 2

    .line 8493
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcopyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method
