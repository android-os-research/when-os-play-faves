.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;
.super Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.source "MediaRoute2ProviderServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceCallbackStub"
.end annotation


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 3

    .line 621
    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;-><init>()V

    .line 622
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 2

    .line 631
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz p0, :cond_d

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V

    :cond_d
    return-void
.end method

.method public notifyRequestFailed(JI)V
    .registers 4

    .line 663
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz p0, :cond_d

    .line 665
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postRequestFailed(JI)V

    :cond_d
    return-void
.end method

.method public notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 639
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz p0, :cond_d

    .line 641
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionCreated(JLandroid/media/RoutingSessionInfo;)V

    :cond_d
    return-void
.end method

.method public notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 655
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz p0, :cond_d

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionReleased(Landroid/media/RoutingSessionInfo;)V

    :cond_d
    return-void
.end method

.method public notifySessionsUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;)V"
        }
    .end annotation

    .line 647
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz p0, :cond_d

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionsUpdated(Ljava/util/List;)V

    :cond_d
    return-void
.end method
