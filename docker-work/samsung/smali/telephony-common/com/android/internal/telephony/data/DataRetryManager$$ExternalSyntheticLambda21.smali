.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$g30Bct-Poj9jyDais3K28hyzO8M(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    return-void
.end method
