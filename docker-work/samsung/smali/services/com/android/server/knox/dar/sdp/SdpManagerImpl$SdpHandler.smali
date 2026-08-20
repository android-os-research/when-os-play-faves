.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpHandler"
.end annotation


# static fields
.field public static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerImpl.Handler"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 4206
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 4207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p0, "SdpHandler"

    .line 4208
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 4213
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v2, "SdpHandler"

    invoke-static {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V

    .line 4214
    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "userId"

    const-string v3, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_106

    :pswitch_14
    goto/16 :goto_105

    .line 4329
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 4331
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "engineId"

    .line 4332
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "state"

    .line 4333
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4335
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleSendBroadcastForStateChange(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;III)V

    goto/16 :goto_105

    .line 4312
    :pswitch_34
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4314
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_105

    .line 4315
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4316
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p1, :cond_105

    .line 4319
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "Enforce change password"

    .line 4320
    invoke-virtual {p1, v3, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_105

    .line 4295
    :pswitch_55
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4297
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_105

    .line 4298
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4299
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p1, :cond_105

    .line 4302
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "Legacy reset password"

    .line 4303
    invoke-virtual {p1, v3, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_105

    .line 4277
    :pswitch_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_105

    .line 4279
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_105

    .line 4280
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4281
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    .line 4282
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p0, :cond_105

    .line 4285
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_105

    const/4 p1, 0x0

    const-string v0, "Legacy reset timeout"

    .line 4286
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_105

    .line 4270
    :pswitch_9e
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleDeviceOwnerCleared(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    goto :goto_105

    .line 4265
    :pswitch_a4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4266
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleCleanupUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_105

    .line 4257
    :pswitch_ac
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4258
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleStartUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_105

    .line 4252
    :pswitch_b4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4253
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleUserRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_105

    .line 4247
    :pswitch_bc
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4248
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleUserAdded(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    goto :goto_105

    .line 4237
    :pswitch_c4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 4239
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "pkgName"

    const-string v2, ""

    .line 4240
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4242
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;I)V

    goto :goto_105

    .line 4231
    :pswitch_dd
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4232
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4233
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    goto :goto_105

    .line 4226
    :pswitch_e7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4227
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyEvictionRequired(I)V

    goto :goto_105

    .line 4216
    :pswitch_ef
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misSupportedDevice(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Z

    move-result p1

    if-nez p1, :cond_f8

    return-void

    :cond_f8
    const-string p1, "SdpManagerImpl.Handler"

    const-string/jumbo v0, "received MSG_SYSTEM_READY. "

    .line 4219
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$monSystemReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    :cond_105
    :goto_105
    return-void

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_e7
        :pswitch_dd
        :pswitch_c4
        :pswitch_bc
        :pswitch_b4
        :pswitch_ac
        :pswitch_14
        :pswitch_a4
        :pswitch_9e
        :pswitch_14
        :pswitch_76
        :pswitch_55
        :pswitch_34
        :pswitch_16
    .end packed-switch
.end method
