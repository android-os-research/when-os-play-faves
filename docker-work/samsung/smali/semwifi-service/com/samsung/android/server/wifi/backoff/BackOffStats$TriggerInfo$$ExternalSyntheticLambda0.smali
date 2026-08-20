.class public final synthetic Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->$r8$lambda$u-LxEsTi6-YDr9xY6W3pUvg9tJw(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V

    return-void
.end method
