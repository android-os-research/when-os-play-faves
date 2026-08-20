.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;)Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;

    move-result-object p0

    return-object p0
.end method
