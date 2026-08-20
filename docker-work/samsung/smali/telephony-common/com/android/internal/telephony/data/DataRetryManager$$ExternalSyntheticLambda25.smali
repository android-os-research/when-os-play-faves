.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;IJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iput p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$1:I

    iput-wide p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$2:J

    iput p5, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$1:I

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$2:J

    iget v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;->f$3:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$a-CEndwerrz9qvE6s1sCV3WcWHY(Lcom/android/internal/telephony/data/DataRetryManager;IJILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method
