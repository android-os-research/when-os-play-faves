.class public Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PkgStatusInfo"
.end annotation


# instance fields
.field public currentLevel:I

.field public disableReason:I

.field public disableType:I

.field public fasType:I

.field public forceStopTime:J

.field public freezedTimeForLevelUp:[J

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public maxLevel:I

.field public name:Ljava/lang/String;

.field public possibleLevel:I

.field public state:I

.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public uid:I

.field public unfreezedCount:I

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V
    .registers 5

    .line 3981
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3982
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 3983
    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 3984
    iput p4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const-wide/16 p1, 0x0

    .line 3985
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    const/4 p1, 0x0

    .line 3986
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    const/4 p2, 0x1

    .line 3987
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    .line 3988
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 3989
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 3990
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 3991
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 3992
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 3993
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    const/4 p2, -0x1

    .line 3994
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    const/4 p2, 0x2

    new-array p2, p2, [J

    .line 3995
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTimeForLevelUp:[J

    .line 3996
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    .line 3997
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    return-void
.end method
