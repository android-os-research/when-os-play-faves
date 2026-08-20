.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/q;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/q;->$r8$lambda$1UFDX_Fvy3_yBbUEdJ7z83XrRuo(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method
