.class public final Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingTempAllowlist"
.end annotation


# instance fields
.field public final callingUid:I

.field public final duration:J

.field public final reasonCode:I

.field public final tag:Ljava/lang/String;

.field public final targetUid:I

.field public final type:I


# direct methods
.method public constructor <init>(IJILjava/lang/String;II)V
    .registers 8

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    .line 1519
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    .line 1520
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    .line 1521
    iput p6, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    .line 1522
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    .line 1523
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1527
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1528
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1530
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1533
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1534
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1536
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1538
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
