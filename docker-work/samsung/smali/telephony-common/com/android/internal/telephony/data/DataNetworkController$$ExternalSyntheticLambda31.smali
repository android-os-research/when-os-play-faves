.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;->f$0:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;->f$0:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$_G6VigDo4K0U3rYq2g1RoX5suTI(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    return-void
.end method
