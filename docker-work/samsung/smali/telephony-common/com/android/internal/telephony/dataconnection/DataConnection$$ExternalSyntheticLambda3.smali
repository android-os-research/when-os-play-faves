.class public final synthetic Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->$r8$lambda$3g1_bCu9bywlFbKdScLSm5b7LbY(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/Object;)V

    return-void
.end method
