.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PkgSettings"
.end annotation


# instance fields
.field public mCurrentRestrictionLevel:I

.field public mLastNotificationShownTime:[J

.field public mLastRestrictionLevel:I

.field public mLevelChangeTime:J

.field public mNotificationId:[I

.field public final mPackageName:Ljava/lang/String;

.field public mReason:I

.field public final mUid:I

.field public final synthetic this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V
    .registers 4

    .line 455
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 457
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 596
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 597
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 598
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 599
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 600
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_26

    .line 601
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 604
    :cond_26
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-eqz p0, :cond_31

    .line 605
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    :cond_31
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;J)V
    .registers 10

    .line 494
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 495
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-eqz v1, :cond_22

    const/16 v1, 0x2f

    .line 497
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 498
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_22
    const-string v1, " levelChange="

    .line 500
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 502
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    .line 503
    :goto_32
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    array-length v3, v2

    if-ge v1, v3, :cond_62

    .line 504
    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5f

    const-string v2, " lastNoti("

    .line 505
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")="

    .line 507
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aget-wide v2, v2, v1

    sub-long/2addr v2, p2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 512
    :cond_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_7a

    const-string p2, " effectiveExemption="

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-virtual {p2, p0}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :catchall_7a
    move-exception p0

    .line 512
    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 616
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez v2, :cond_c

    goto :goto_4f

    .line 619
    :cond_c
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 620
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    if-ne v2, v3, :cond_4d

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-ne v2, v3, :cond_4d

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-ne v2, v3, :cond_4d

    iget-wide v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iget-wide v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    if-ne v2, v3, :cond_4d

    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 625
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 626
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 628
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public getCurrentRestrictionLevel()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 527
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return p0
.end method

.method public getLastNotificationTime(I)J
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 543
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 546
    :cond_7
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getLastRestrictionLevel()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 532
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return p0
.end method

.method public getNotificationId(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 571
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_6
    aget p0, p0, p1

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 518
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 537
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 522
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    return p0
.end method

.method public setLastNotificationTime(IJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 552
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    return-void
.end method

.method public setLastNotificationTime(IJZ)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 560
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 563
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aput-wide p2, v0, p1

    if-eqz p4, :cond_28

    .line 564
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 565
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_28
    return-void
.end method

.method public setLevelChangeTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 589
    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-void
.end method

.method public setNotificationId(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 581
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 583
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    aput p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "RestrictionLevel{"

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    invoke-static {p0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(III)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 463
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-eq p1, v0, :cond_33

    .line 464
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 465
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 466
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    const v0, 0xff00

    and-int/2addr p2, v0

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    .line 467
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 468
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p2

    const/4 p3, 0x1

    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 471
    :cond_33
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return p0
.end method
