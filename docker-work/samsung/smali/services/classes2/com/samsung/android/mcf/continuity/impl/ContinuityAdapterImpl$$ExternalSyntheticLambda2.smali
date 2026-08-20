.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;->onServiceDisconnected()V

    return-void
.end method
