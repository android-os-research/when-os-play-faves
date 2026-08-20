.class abstract Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;
.super Ljava/lang/Object;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LISTENER;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method public static synthetic $r8$lambda$1YHldJ3CSh-2N2afbvly1xr6hZE(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->lambda$trigger$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 335
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$trigger$0()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action(Z)V

    return-void
.end method


# virtual methods
.method protected action(Z)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 312
    :cond_4
    instance-of v1, p1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;

    if-nez v1, :cond_9

    return v0

    .line 313
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    if-ne p0, p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method trigger()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 323
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 327
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action(Z)V

    :goto_16
    return-void
.end method
