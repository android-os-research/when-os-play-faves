.class public final synthetic Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->$r8$lambda$y4VW6_rnKnBRoSd14BbUYLvS7V8(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V

    return-void
.end method
