.class public final synthetic Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->$r8$lambda$A4ZOu1Eylh0Gv4ENZepth8xQuWI(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)Z

    move-result p0

    return p0
.end method
