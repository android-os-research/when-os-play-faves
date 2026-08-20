.class public final synthetic Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SubscriptionController;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->$r8$lambda$jsF3bOjMH1MaVw6Anlkw2mOYy0w(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method
