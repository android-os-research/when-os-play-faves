.class public final Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FgsTempAllowListItemExt"
.end annotation


# instance fields
.field public final mCallingUid:I

.field public final mDuration:J

.field public final mPackageName:Ljava/lang/String;

.field public final mReason:Ljava/lang/String;

.field public final mReasonCode:I

.field public final mServiceType:I

.field public final mStartTime:J

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJILjava/lang/String;II)V
    .registers 9

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mPackageName:Ljava/lang/String;

    .line 1581
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mUid:I

    .line 1582
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mDuration:J

    .line 1583
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mReasonCode:I

    .line 1584
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mReason:Ljava/lang/String;

    .line 1585
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mServiceType:I

    .line 1586
    iput p8, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mCallingUid:I

    .line 1587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mStartTime:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mCallingUid:I

    .line 1593
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mReasonCode:I

    .line 1594
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;->mStartTime:J

    .line 1597
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1591
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
