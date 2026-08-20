.class public final synthetic Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->$r8$lambda$EXI7Ne3TmX-aKYH7StVDu9BNEMQ(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V

    return-void
.end method
