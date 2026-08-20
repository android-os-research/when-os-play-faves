.class public final synthetic Lcom/android/ims/internal/VideoPauseTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/internal/VideoPauseTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/internal/VideoPauseTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/internal/VideoPauseTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/internal/VideoPauseTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/internal/VideoPauseTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->lambda$sourcesToString$0$com-android-ims-internal-VideoPauseTracker(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
