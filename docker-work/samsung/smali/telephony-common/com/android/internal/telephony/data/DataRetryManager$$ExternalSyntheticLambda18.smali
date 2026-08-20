.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iput p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$1:I

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$WKyi5PKysWq3Byu3ScCUdVVT-MM(Lcom/android/internal/telephony/data/DataRetryManager;IILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method
