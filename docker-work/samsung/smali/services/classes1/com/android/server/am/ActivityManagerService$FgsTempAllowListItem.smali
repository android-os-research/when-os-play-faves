.class public final Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FgsTempAllowListItem"
.end annotation


# instance fields
.field public final mCallingUid:I

.field public final mDuration:J

.field public final mReason:Ljava/lang/String;

.field public final mReasonCode:I


# direct methods
.method public constructor <init>(JILjava/lang/String;I)V
    .registers 6

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    .line 1554
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 1555
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    .line 1556
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    .line 1561
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 1562
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1560
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
