.class Lcom/android/server/tare/Agent$OngoingEvent;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OngoingEvent"
.end annotation


# instance fields
.field public final actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

.field public final eventId:I

.field public refCount:I

.field public final reward:Lcom/android/server/tare/EconomicPolicy$Reward;

.field public final startTimeElapsed:J

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V
    .registers 6

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 930
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 931
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 932
    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 933
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    const/4 p1, 0x1

    .line 934
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V
    .registers 6

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 920
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 921
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    .line 922
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    const/4 p1, 0x0

    .line 923
    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    const/4 p1, 0x1

    .line 924
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    return-void
.end method


# virtual methods
.method public getCtpPerSec()J
    .registers 3

    .line 949
    iget-object p0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz p0, :cond_7

    .line 950
    iget-wide v0, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaPerSec()J
    .registers 3

    .line 938
    iget-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz v0, :cond_8

    .line 939
    iget-wide v0, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v0, v0

    return-wide v0

    .line 941
    :cond_8
    iget-object p0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-eqz p0, :cond_f

    .line 942
    iget-wide v0, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    return-wide v0

    .line 944
    :cond_f
    invoke-static {}, Lcom/android/server/tare/Agent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No action or reward in ongoing event?!??!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method
