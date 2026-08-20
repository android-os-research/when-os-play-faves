.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 198
    monitor-enter p1

    .line 199
    :try_start_3
    iput-object p2, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 200
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit p1

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_c2

    goto/16 :goto_c1

    .line 169
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v2, "GSM EVENT_GET_CB_CONFIG_DONE"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 170
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 172
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2d

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$mconvertCbConfigToByteArray(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/samsung/android/telephony/gsm/SemCbConfig;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fputmCbConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;[B)V

    goto :goto_34

    .line 175
    :cond_2d
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot Get CB Config"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 177
    :goto_34
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fgetmCbConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[B

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_c1

    .line 181
    :pswitch_3f
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_c1

    .line 183
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Radio is off. Clear mCellBroadcastRangeManager"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 186
    :try_start_59
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fgetmCellBroadcastRangeManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IntRangeManager;->clearRanges()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_c1

    .line 188
    :catch_63
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string p1, "May already cleared by other thread, do nothing"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_c1

    .line 157
    :pswitch_6b
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_7c

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsDispatchersController;->extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_83

    .line 163
    :cond_7c
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot read SMSC"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 165
    :goto_83
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    goto :goto_c1

    .line 140
    :pswitch_87
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_8d

    const/4 p1, 0x1

    goto :goto_8e

    :cond_8d
    const/4 p1, 0x0

    :goto_8e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    goto :goto_c1

    .line 144
    :pswitch_96
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_ae

    .line 145
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    goto :goto_be

    :cond_ae
    const/4 p1, 0x3

    const-string v0, "SMS"

    .line 149
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot load Sms records"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 153
    :cond_be
    :goto_be
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_96
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_6b
        :pswitch_87
        :pswitch_3f
        :pswitch_10
    .end packed-switch
.end method
