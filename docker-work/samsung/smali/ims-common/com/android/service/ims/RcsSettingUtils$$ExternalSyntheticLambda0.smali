.class public final synthetic Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
