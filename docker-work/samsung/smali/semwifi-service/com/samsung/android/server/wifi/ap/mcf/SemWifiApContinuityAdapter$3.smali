.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 6

    const-string v0, "MHSMcf:Adapter"

    const-string v1, "onServiceconnected"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMessageListener()I

    move-result v1

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceconnected,registerMessageListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V

    if-gez v1, :cond_3a

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    :cond_3a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 183
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->setServiceBinded(Z)V

    .line 185
    :cond_4f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 186
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->setServiceBinded(Z)V

    .line 188
    :cond_64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->removeMessages(I)V

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->unregisterMessageListener()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->release(Landroid/content/Context;)V

    .line 195
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 196
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->setServiceBinded(Z)V

    .line 198
    :cond_2f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 199
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->setServiceBinded(Z)V

    :cond_44
    const-string v0, "MHSMcf:Adapter"

    const-string v1, "onServiceDisconnected"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$mgetWifiApUtil(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->hasSamsungAccount()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    :cond_61
    return-void
.end method
