.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;
.super Landroid/os/Handler;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoHotspotHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 212
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "MHSMcf:Adapter"

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x5

    packed-switch p1, :pswitch_data_fe

    :pswitch_f
    goto/16 :goto_fd

    .line 240
    :pswitch_11
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_fd

    :pswitch_16
    const/4 p1, 0x6

    .line 247
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_fd

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result v1

    if-nez v1, :cond_fd

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V

    if-ge v6, v5, :cond_fd

    .line 248
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMessageListener()I

    move-result v1

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerMessageListener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_fd

    .line 251
    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_fd

    .line 234
    :pswitch_5a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V

    const/16 p1, 0x1e

    if-gt v0, p1, :cond_fd

    .line 235
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$mbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    .line 236
    invoke-virtual {p0, v5, v2, v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_fd

    .line 244
    :pswitch_72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$munbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    goto/16 :goto_fd

    .line 224
    :pswitch_79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_BIND,isBound:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSamsungAccountSignedIn:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isEnabledContinuitySettings:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 225
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "EVENT_BIND:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_fd

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result p1

    if-nez p1, :cond_fd

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fgetisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 227
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$mbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    .line 229
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V

    .line 230
    invoke-virtual {p0, v5, v2, v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_fd

    .line 219
    :pswitch_e7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V

    .line 220
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 221
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    goto :goto_fd

    .line 215
    :pswitch_f5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    :cond_fd
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_e7
        :pswitch_79
        :pswitch_72
        :pswitch_5a
        :pswitch_16
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_72
    .end packed-switch
.end method
