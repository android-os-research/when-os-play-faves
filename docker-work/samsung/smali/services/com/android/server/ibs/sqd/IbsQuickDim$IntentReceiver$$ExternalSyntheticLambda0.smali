.class public final synthetic Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->$r8$lambda$L-In_qf_-NgRbiPp6N3WjR5-N1c(Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;Landroid/net/Uri;)V

    return-void
.end method
