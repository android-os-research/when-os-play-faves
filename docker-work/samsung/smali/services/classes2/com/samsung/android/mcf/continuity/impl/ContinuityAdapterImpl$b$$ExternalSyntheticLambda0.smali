.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;

.field public final synthetic f$1:Landroid/os/Message;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iput p5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->$r8$lambda$AE9wMBhByhuktnQ08hjECAHbZTU(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    return-void
.end method
