.class public Lcom/android/server/vcn/VcnNetworkProvider;
.super Landroid/net/NetworkProvider;
.source "VcnNetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;,
        Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mhandleNetworkRequestWithdrawn(Lcom/android/server/vcn/VcnNetworkProvider;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->handleNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNetworkRequested(Lcom/android/server/vcn/VcnNetworkProvider;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->handleNetworkRequested(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnNetworkProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 74
    new-instance v0, Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    invoke-direct {v0}, Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const-string v0, "Missing context"

    .line 81
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v0, "Missing looper"

    .line 82
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Looper;

    sget-object v0, Lcom/android/server/vcn/VcnNetworkProvider;->TAG:Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2, v0}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 85
    iput-object p1, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mContext:Landroid/content/Context;

    .line 86
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mHandler:Landroid/os/Handler;

    const-string p1, "Missing dependencies"

    .line 87
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    return-void
.end method


# virtual methods
.method public final buildCapabilityFilter()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 113
    new-instance p0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0xe

    .line 116
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0xd

    .line 117
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0xf

    .line 118
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0x1c

    .line 119
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 121
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_28

    .line 125
    :cond_3c
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "VcnNetworkProvider:"

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mListeners:"

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 198
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;

    .line 199
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_16

    .line 201
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "mRequests:"

    .line 204
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 206
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 207
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3a

    .line 209
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final handleNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final handleNetworkRequested(Landroid/net/NetworkRequest;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;

    .line 170
    invoke-virtual {p0, v1, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->notifyListenerForEvent(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;Landroid/net/NetworkRequest;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final notifyListenerForEvent(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;Landroid/net/NetworkRequest;)V
    .registers 3

    .line 157
    invoke-interface {p1, p2}, Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;->onNetworkRequested(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public register()V
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    .line 95
    invoke-static {}, Lcom/android/server/vcn/Vcn;->getNetworkScore()Landroid/net/NetworkScore;

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnNetworkProvider;->buildCapabilityFilter()Landroid/net/NetworkCapabilities;

    move-result-object v4

    new-instance v5, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v6, Lcom/android/server/vcn/VcnNetworkProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/vcn/VcnNetworkProvider$1;-><init>(Lcom/android/server/vcn/VcnNetworkProvider;)V

    move-object v2, p0

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;->registerNetworkOffer(Lcom/android/server/vcn/VcnNetworkProvider;Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    return-void
.end method

.method public registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method public resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 151
    invoke-virtual {p0, p1, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->notifyListenerForEvent(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;Landroid/net/NetworkRequest;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
