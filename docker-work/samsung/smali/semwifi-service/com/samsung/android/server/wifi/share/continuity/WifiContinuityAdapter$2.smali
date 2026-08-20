.class Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
.source "WifiContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$message:[B

.field final synthetic val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;


# direct methods
.method public static synthetic $r8$lambda$izK3Tnq5LfJTf4pH5LSt5YwJ6yg(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->lambda$onDiscovered$0(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Landroid/os/Handler;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .registers 5

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$message:[B

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onDiscovered$0(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .registers 6

    .line 120
    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDiscovered event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifi.Continuity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_37

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {p2, p0, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->sendMessage(Ljava/lang/String;[B)Z

    :cond_37
    return-void
.end method


# virtual methods
.method public onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .registers 6
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$message:[B

    new-instance v2, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, v1, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
