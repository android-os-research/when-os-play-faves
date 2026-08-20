.class public final synthetic Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->$r8$lambda$ODGbChdoA1p7OhOvni9mUqsyAhw(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/function/Consumer;Ljava/lang/Integer;)V

    return-void
.end method
