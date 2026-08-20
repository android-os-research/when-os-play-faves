.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->$r8$lambda$XuobvT2Pa_UP8mjC2J3t5UMHB_8(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    return-void
.end method
