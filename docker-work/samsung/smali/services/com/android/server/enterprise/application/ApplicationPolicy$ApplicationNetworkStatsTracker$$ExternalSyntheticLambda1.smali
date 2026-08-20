.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->$r8$lambda$ygmt54Gl4A8RkZfh5rF9SVgnQmI(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;IILjava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;)V

    return-void
.end method
