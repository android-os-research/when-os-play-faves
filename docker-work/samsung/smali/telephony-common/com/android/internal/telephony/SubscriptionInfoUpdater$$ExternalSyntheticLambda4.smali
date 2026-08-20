.class public final synthetic Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/util/List;Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$2:Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$$ExternalSyntheticLambda4;->f$2:Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->$r8$lambda$Hu8FWSQte-XrwV8GgMeKZk7XVtg(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/util/List;Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;)V

    return-void
.end method
