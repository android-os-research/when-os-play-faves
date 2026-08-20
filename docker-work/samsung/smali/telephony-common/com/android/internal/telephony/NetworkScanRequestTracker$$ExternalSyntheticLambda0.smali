.class public final synthetic Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->$r8$lambda$SP5v-gsoXQzoyen6d0mH099UaL0(Landroid/telephony/SubscriptionInfo;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
