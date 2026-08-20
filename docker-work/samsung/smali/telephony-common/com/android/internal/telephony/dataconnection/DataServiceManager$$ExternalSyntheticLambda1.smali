.class public final synthetic Lcom/android/internal/telephony/dataconnection/DataServiceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->$r8$lambda$yxYmAEwpmTWYaQPbp3Uh2wJFsiE(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method
