.class public final synthetic Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SubscriptionController;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->$r8$lambda$jGD773aWqbAoWUpl7ComVfdDsAc(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
