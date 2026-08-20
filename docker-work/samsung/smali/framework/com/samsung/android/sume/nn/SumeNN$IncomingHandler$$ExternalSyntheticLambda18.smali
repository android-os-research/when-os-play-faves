.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNN;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    check-cast p1, [I

    invoke-static {v0, p1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;->lambda$handleMessage$7(Lcom/samsung/android/sume/nn/SumeNN;[I)V

    return-void
.end method
