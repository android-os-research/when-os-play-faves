.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->$r8$lambda$FXs_K8AKrO-u_5TtrJtjnAH81_4(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method
