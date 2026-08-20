.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerRoll"
.end annotation


# instance fields
.field public final mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;-><init>()V

    return-void
.end method


# virtual methods
.method public disenroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z
    .registers 2

    .line 1927
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public enroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z
    .registers 2

    .line 1924
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;",
            ">;"
        }
    .end annotation

    .line 1936
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 1930
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 1933
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
