.class Lcom/android/internal/telephony/NetworkTypeController$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_12a

    :goto_11
    move p1, v3

    goto :goto_5f

    :sswitch_13
    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 p1, 0x6

    goto :goto_5f

    :sswitch_1e
    const-string v0, "com.samsung.intent.action.LTE_BAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_11

    :cond_27
    const/4 p1, 0x5

    goto :goto_5f

    :sswitch_29
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_11

    :cond_32
    const/4 p1, 0x4

    goto :goto_5f

    :sswitch_34
    const-string v0, "com.samsung.telephony.event.EVENT_ICON_UW_DSQ_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_11

    :cond_3d
    const/4 p1, 0x3

    goto :goto_5f

    :sswitch_3f
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_11

    :cond_48
    const/4 p1, 0x2

    goto :goto_5f

    :sswitch_4a
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_11

    :cond_53
    move p1, v1

    goto :goto_5f

    :sswitch_55
    const-string v0, "com.samsung.telephony.event.EVENT_CP_ICON_TYPE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_11

    :cond_5e
    move p1, v2

    :goto_5f
    const/4 v0, 0x7

    packed-switch p1, :pswitch_data_148

    goto/16 :goto_128

    :pswitch_65
    const-string p1, "request_status"

    .line 198
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string p2, "ACTION_DEVICE_CONFIG_UPDATED"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsDeviceConfigUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_128

    :pswitch_80
    const-string p1, "BAND"

    .line 206
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_LTE_BAND_CHANGED mPrimaryBand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto/16 :goto_128

    .line 193
    :pswitch_ad
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_128

    .line 216
    :pswitch_b6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "ACTION_UW_DSQ_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_ce

    goto :goto_128

    .line 220
    :cond_ce
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveUwDsqNrAdvancedDisabled(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    const-string p1, "SlotIdx"

    .line 221
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_e6

    goto :goto_128

    .line 224
    :cond_e6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveUwDsqOutOfNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    goto :goto_128

    :pswitch_f1
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    .line 185
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_128

    const-string p1, "android.telephony.extra.REBROADCAST_ON_UNLOCK"

    .line 187
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_128

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto :goto_128

    .line 212
    :pswitch_111
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto :goto_128

    .line 229
    :pswitch_117
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "ACTION_CP_ICON_TYPE_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsCpIconTypeSupported(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveCpIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    :cond_128
    :goto_128
    return-void

    nop

    :sswitch_data_12a
    .sparse-switch
        -0x66fef32d -> :sswitch_55
        -0x6695ea54 -> :sswitch_4a
        -0x43dd7a3f -> :sswitch_3f
        0x232e91d0 -> :sswitch_34
        0x33e5d967 -> :sswitch_29
        0x42b5455e -> :sswitch_1e
        0x5d219d68 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_117
        :pswitch_111
        :pswitch_f1
        :pswitch_b6
        :pswitch_ad
        :pswitch_80
        :pswitch_65
    .end packed-switch
.end method
