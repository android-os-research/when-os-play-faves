.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/ContentStat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/ContentStat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/ContentStat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/ContentStat;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;->lambda$handleMessage$10(Lcom/samsung/android/sume/ContentStat;Ljava/util/HashSet;)V

    return-void
.end method
