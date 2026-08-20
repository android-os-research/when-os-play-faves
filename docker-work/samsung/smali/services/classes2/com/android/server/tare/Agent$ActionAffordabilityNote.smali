.class public final Lcom/android/server/tare/Agent$ActionAffordabilityNote;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionAffordabilityNote"
.end annotation


# instance fields
.field public final mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public mCtp:J

.field public mIsAffordable:Z

.field public final mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public mModifiedPrice:J


# direct methods
.method public static bridge synthetic -$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCachedModifiedPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCtp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->setNewAffordability(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1105
    invoke-virtual {p1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1106
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1108
    iget v2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p3, v2}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v2

    if-eqz v2, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1110
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid action id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1113
    :cond_3a
    iput-object p2, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1166
    :cond_4
    instance-of v1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1167
    :cond_a
    check-cast p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 1168
    iget-object v1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    iget-object v3, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v1, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    iget-object p1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .registers 1

    .line 1118
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0
.end method

.method public final getCachedModifiedPrice()J
    .registers 3

    .line 1127
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    return-wide v0
.end method

.method public final getCtp()J
    .registers 3

    .line 1131
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    return-wide v0
.end method

.method public getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .registers 1

    .line 1123
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1175
    iget-object v1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1176
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public isCurrentlyAffordable()Z
    .registers 1

    .line 1156
    iget-boolean p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return p0
.end method

.method public recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 1139
    iget-object v1, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1140
    invoke-virtual {v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    .line 1141
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_45

    .line 1142
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1144
    iget v8, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 1145
    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    .line 1146
    iget-wide v12, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v14, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v9, v14

    mul-long/2addr v9, v12

    move-object v15, v1

    iget-wide v0, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v16, 0x3e8

    div-long v18, v0, v16

    mul-long v12, v12, v18

    add-long/2addr v9, v12

    add-long/2addr v2, v9

    .line 1148
    iget-wide v7, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    int-to-long v9, v14

    mul-long/2addr v9, v7

    div-long v0, v0, v16

    mul-long/2addr v7, v0

    add-long/2addr v9, v7

    add-long/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    goto :goto_d

    .line 1151
    :cond_45
    iput-wide v2, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    .line 1152
    iput-wide v4, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    return-void
.end method

.method public final setNewAffordability(Z)V
    .registers 2

    .line 1160
    iput-boolean p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return-void
.end method
