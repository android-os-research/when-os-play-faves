.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/q;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

.field public final synthetic f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;->f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/mcf/continuity/impl/q;->$r8$lambda$ytji6ruZCvSfrm3jn2UK4J0IQAI(Lcom/samsung/android/mcf/continuity/impl/q;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method
