.class public Lcom/samsung/android/mcf/continuity/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/c$c;,
        Lcom/samsung/android/mcf/continuity/impl/c$b;,
        Lcom/samsung/android/mcf/continuity/impl/c$d;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "ContinuityCallbackManager"


# instance fields
.field public volatile a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile d:Lcom/samsung/android/mcf/continuity/impl/c$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile f:Lcom/samsung/android/mcf/continuity/impl/c$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile g:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile h:Lcom/samsung/android/mcf/continuity/impl/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;)Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;
    .registers 1

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/c;->a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/c;->a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;BI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Ljava/lang/String;BI)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;[BB)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Ljava/lang/String;[BB)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/c$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/c$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/c;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-nez p0, :cond_e

    const-string p0, "ContinuityCallbackManager"

    const-string p1, "handleSessionStatusChanged"

    const-string v0, "null sessionStatusListenerWrapper"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    return-void
.end method

.method public final a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 5
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleDiscoveryDiscovered"

    const-string v1, "ContinuityCallbackManager"

    if-nez p2, :cond_c

    const-string p0, "null parameters"

    :goto_8
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    if-nez p0, :cond_13

    const-string p0, "null discoveryListener"

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;->onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method

.method public final a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 14
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleSessionPeerStatusChanged"

    const-string v1, "ContinuityCallbackManager"

    if-nez p2, :cond_c

    const-string p0, "null parameters"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/c;->f:Lcom/samsung/android/mcf/continuity/impl/c$c;

    if-nez v2, :cond_16

    const-string p0, "null peerStatusListenerWrapper"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/mcf/continuity/impl/c$c;->a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->g:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/impl/c$b;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->h:Lcom/samsung/android/mcf/continuity/impl/c$b;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/impl/c$c;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->f:Lcom/samsung/android/mcf/continuity/impl/c$c;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/impl/c$d;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->d:Lcom/samsung/android/mcf/continuity/impl/c$d;

    return-void
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleSessionPeerConnectionRequested"

    const-string v1, "ContinuityCallbackManager"

    if-eqz p1, :cond_17

    if-nez p2, :cond_9

    goto :goto_17

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->g:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    if-nez p0, :cond_13

    const-string p0, "null peerConnectionRequestListenerWrapper"

    :goto_f
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;->onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void

    :cond_17
    :goto_17
    const-string p0, "null parameters"

    goto :goto_f
.end method

.method public final a(Ljava/lang/String;BI)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleMessageSent"

    const-string v1, "ContinuityCallbackManager"

    if-nez p1, :cond_c

    const-string p0, "null parameters"

    :goto_8
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p2, :cond_14

    const-string p0, "SendMessageCallback for simple message is not supported"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->d:Lcom/samsung/android/mcf/continuity/impl/c$d;

    if-nez p0, :cond_1b

    const-string p0, "null sendMessageCallbackWrapper"

    goto :goto_8

    :cond_1b
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/c$d;->a(Ljava/lang/String;BI)V

    :goto_1e
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleApStatus"

    const-string v1, "ContinuityCallbackManager"

    if-nez p1, :cond_c

    const-string p0, "null btMac"

    :goto_8
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->h:Lcom/samsung/android/mcf/continuity/impl/c$b;

    if-nez p0, :cond_13

    const-string p0, "null apStatusCallbackWrapper"

    goto :goto_8

    :cond_13
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/c$b;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final a(Ljava/lang/String;[BB)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleMessageReceived"

    const-string v1, "ContinuityCallbackManager"

    if-eqz p1, :cond_2b

    if-nez p2, :cond_9

    goto :goto_2b

    :cond_9
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_20

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    if-nez p0, :cond_27

    const-string p0, "null simpleMessageListener"

    :goto_1c
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    if-nez p0, :cond_27

    const-string p0, "null sessionMessageListener"

    goto :goto_1c

    :cond_27
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void

    :cond_2b
    :goto_2b
    const-string p0, "null parameters"

    goto :goto_1c
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "handleWifiInfoUpdated"

    const-string v2, "ContinuityCallbackManager"

    if-eqz v0, :cond_10

    const-string p0, "empty list"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c;->e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-nez p0, :cond_1a

    const-string p0, "null sessionStatusListenerWrapper"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/c$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/c$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onWifiInfoUpdated(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$d;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$c;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method public b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method
