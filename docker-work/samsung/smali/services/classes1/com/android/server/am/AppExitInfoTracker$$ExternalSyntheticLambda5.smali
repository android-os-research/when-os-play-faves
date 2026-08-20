.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$HgA0fEpOdGFLYq7N-Ie2IlCzgmo(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
