.class public Lcom/samsung/android/mcf/continuity/impl/q$d;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/q;->a(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/q;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$d;->b:Lcom/samsung/android/mcf/continuity/impl/q;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$d;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;->onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;I)V

    return-void
.end method


# virtual methods
.method public onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;I)V
    .registers 5
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$d;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$d$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/q$d$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
