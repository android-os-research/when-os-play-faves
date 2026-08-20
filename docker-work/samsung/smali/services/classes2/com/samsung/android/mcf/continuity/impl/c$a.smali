.class public Lcom/samsung/android/mcf/continuity/impl/c$a;
.super Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/c;->a()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/c;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .registers 9

    const-string/jumbo v0, "onCallback"

    const-string v1, "ContinuityCallbackManager"

    if-nez p1, :cond_d

    const-string p0, "null message"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getCallbackId(Landroid/os/Message;)I

    move-result v2

    packed-switch v2, :pswitch_data_ac

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid callbackId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa

    :pswitch_2a
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityWifiInfoWrapperList(Landroid/os/Message;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/util/List;)V

    goto/16 :goto_aa

    :pswitch_35
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getApStatus(Landroid/os/Message;)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;II)V

    goto :goto_aa

    :pswitch_47
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    goto :goto_aa

    :pswitch_55
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getPeerStatus(Landroid/os/Message;)I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getFailReason(Landroid/os/Message;)I

    move-result v4

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getNetworkRole(Landroid/os/Message;)I

    move-result v5

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getSelectedWifiInterface(Landroid/os/Message;)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    goto :goto_aa

    :pswitch_6f
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getSessionStatus(Landroid/os/Message;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;I)V

    goto :goto_aa

    :pswitch_79
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getEvent(Landroid/os/Message;)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    goto :goto_aa

    :pswitch_87
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;BI)V

    goto :goto_aa

    :pswitch_99
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/c$a;->a:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageData(Landroid/os/Message;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c;Ljava/lang/String;[BB)V

    :goto_aa
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0xfa0
        :pswitch_99
        :pswitch_87
        :pswitch_79
        :pswitch_6f
        :pswitch_55
        :pswitch_47
        :pswitch_35
        :pswitch_2a
    .end packed-switch
.end method
