.class public final synthetic Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda3;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda3;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->$r8$lambda$foQe99J4ZdHSXcM0Kn02jSIlzzY(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V

    return-void
.end method
