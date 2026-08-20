.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SdpManagerImplBinderListener"
.end annotation


# instance fields
.field public caller:I

.field public mAlias:Ljava/lang/String;

.field public final mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .registers 4

    .line 2144
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2142
    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->caller:I

    .line 2145
    iput-object p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    .line 2146
    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string v0, "SdpManagerImpl"

    const-string v1, "An ISdpListener has died!"

    .line 2157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2159
    :try_start_e
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    .line 2160
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2162
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2163
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3a

    .line 2166
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public getCaller()I
    .registers 1

    .line 2154
    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->caller:I

    return p0
.end method

.method public setCaller(I)V
    .registers 2

    .line 2150
    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->caller:I

    return-void
.end method
