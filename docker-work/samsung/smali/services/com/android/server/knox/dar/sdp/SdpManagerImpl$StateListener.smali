.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;
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
    name = "StateListener"
.end annotation


# instance fields
.field public mEngineId:I

.field public mIsValid:Z

.field public mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/knox/dar/sdp/ISdpListener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$2RhjXYHfrjzapPiyUiVVFtWbGdA(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->lambda$dispose$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNj_4LdUdPQO7X4w-vUURI3zveI(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->lambda$new$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .registers 4

    .line 1945
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1946
    iput-boolean p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    .line 1947
    iput p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    .line 1948
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$dispose$1(Landroid/os/IBinder;)V
    .registers 4

    const-string v0, "SdpManagerImpl"

    const/4 v1, 0x0

    .line 1999
    :try_start_3
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_16

    :catch_7
    move-exception p0

    const-string p1, "Failed to unlink death listener"

    .line 2003
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catch_11
    const-string p0, "Listener might be already finalized..."

    .line 2001
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x0

    .line 1952
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 p1, 0x1

    .line 1953
    iput-boolean p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_16

    :catch_8
    move-exception p1

    const-string v0, "SdpManagerImpl"

    const-string v1, "Failed to link death listener..."

    .line 1955
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1957
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->releaseReferences()V

    :goto_16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 1968
    :cond_8
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public binderDied()V
    .registers 3

    .line 2012
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2013
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    .line 2014
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleEmptyListenerRoll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    .line 2015
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dispose()V
    .registers 3

    .line 1989
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    if-nez v0, :cond_5

    return-void

    .line 1993
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->disenroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z

    .line 1997
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->releaseReferences()V

    return-void
.end method

.method public get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .registers 1

    .line 1963
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    return-object p0
.end method

.method public getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;
    .registers 2

    .line 1972
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    return-object p0
.end method

.method public isValid()Z
    .registers 1

    .line 1976
    iget-boolean p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    return p0
.end method

.method public releaseReferences()V
    .registers 2

    .line 1980
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 1981
    iput-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    return-void
.end method
