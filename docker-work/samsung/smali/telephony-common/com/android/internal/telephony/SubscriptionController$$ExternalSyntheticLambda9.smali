.class public final synthetic Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->$r8$lambda$xT9EIi4KNqGN-cCIP-DbDpgZ33o(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method
