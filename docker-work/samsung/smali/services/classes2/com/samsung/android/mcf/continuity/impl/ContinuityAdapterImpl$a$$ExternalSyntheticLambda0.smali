.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->$r8$lambda$_a_NEw96xhhV63_vfJwBeBBcQbw(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method
