.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onUnbind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$mU0CCDW0ncsvRk_rG7IFlKk_Smo(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->lambda$run$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 1

    .line 152
    sget-object p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-ne v2, p0, :cond_13

    .line 152
    new-instance p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;-><init>()V

    # invokes: Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V
    invoke-static {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V

    .line 154
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0
.end method
