.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/q$b;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method
