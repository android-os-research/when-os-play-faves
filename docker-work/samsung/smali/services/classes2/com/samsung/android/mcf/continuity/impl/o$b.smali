.class public Lcom/samsung/android/mcf/continuity/impl/o$b;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->g()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public static synthetic $r8$lambda$7ql4suEdyKDpvD-rB0stclgPVs0(Lcom/samsung/android/mcf/continuity/impl/o$b;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o$b;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$b;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$b;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    check-cast p1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    check-cast p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

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

    instance-of v0, p1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    if-eqz v0, :cond_11

    instance-of v0, p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o$b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/o$b;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void

    :cond_11
    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "onPeerConnectionRequested"

    const-string p2, "fail to cast ContinuityNearbyMyDeviceWrapper or ContinuityNetworkPolicyWrapper"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
