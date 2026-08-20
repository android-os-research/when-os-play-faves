.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;
.super Ljava/lang/Object;
.source "SemWifiApServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$callbackIdentifier:I


# direct methods
.method public static synthetic $r8$lambda$RujlUE8s3yt3a5hMnyTzaIOG7Hc(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->lambda$binderDied$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V
    .registers 4

    .line 1360
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->val$binder:Landroid/os/IBinder;

    iput p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->val$callbackIdentifier:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$binderDied$0(I)V
    .registers 2

    .line 1364
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmRegisteredWifiApSmartCallbacks(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;->val$callbackIdentifier:I

    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
