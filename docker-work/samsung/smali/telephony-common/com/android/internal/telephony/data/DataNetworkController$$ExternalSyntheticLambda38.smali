.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;->f$1:Lcom/android/internal/telephony/data/DataNetwork;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;->f$1:Lcom/android/internal/telephony/data/DataNetwork;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$JlTPNbCmv3Ht5GArIbHJ33L1tdU(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method
