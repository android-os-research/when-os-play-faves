.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "SemHostapdHalAidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$VYhO53qSsBOwg8MlR7VxnLBOD7s(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;->lambda$onRegistration$0()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V

    return-void
.end method

.method private synthetic lambda$onRegistration$0()V
    .registers 3

    const-string v0, "SemHostapdHalAidlImpl"

    const-string v1, "Notify IHostapd service registration, trying to connect"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    const-string v0, "SemHostapdHalAidlImplNotify IHostapd service registration, trying to connect "

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$sfgetHAL_INSTANCE_NAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 95
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
