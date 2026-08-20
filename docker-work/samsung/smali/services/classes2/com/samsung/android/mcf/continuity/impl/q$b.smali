.class public Lcom/samsung/android/mcf/continuity/impl/q$b;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/q;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/q;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$b;->b:Lcom/samsung/android/mcf/continuity/impl/q;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;->onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method


# virtual methods
.method public onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/q$b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
