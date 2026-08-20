.class Lcom/android/internal/telephony/InboundSmsHandler$3;
.super Landroid/os/Handler;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2

    .line 3139
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12

    const-string v0, "Failed to close stream, exception is: "

    .line 3142
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x17

    const-string v3, "InboundSmsHandler"

    if-eq v1, v2, :cond_200

    const/16 v4, 0x18

    if-eq v1, v4, :cond_1f5

    const-string v2, "4444"

    const/16 v4, 0x1e

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, "0"

    if-eq v1, v4, :cond_ea

    const/16 v8, 0x1f

    if-eq v1, v8, :cond_1e

    goto/16 :goto_20e

    :cond_1e
    const-string v1, "EVENT_CCT_UNLOCK_RESULT"

    .line 3195
    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_55

    .line 3197
    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_50

    .line 3199
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_30

    goto :goto_50

    :cond_30
    const-string p1, "Unlock success"

    .line 3202
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_35
    const-string p1, "content://com.samsung.android.app.telephonyui.internal"

    .line 3204
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3206
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "show_network_unlock_successful_toast"

    const/4 v9, 0x0

    invoke-virtual {v1, p1, v8, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_4a

    goto :goto_55

    :catch_4a
    const-string p1, "fail to display unlock popup"

    .line 3208
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_50
    :goto_50
    const-string p1, "Unlock failure"

    .line 3200
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :cond_55
    :goto_55
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3214
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3216
    :try_start_5f
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3217
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3218
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v5, "Get unlock status to send unlock command ack"

    .line 3219
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v8, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_80} :catch_9f
    .catchall {:try_start_5f .. :try_end_80} :catchall_9d

    .line 3226
    :try_start_80
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3227
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_86} :catch_88

    goto/16 :goto_20e

    :catch_88
    move-exception p0

    .line 3229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20e

    :catchall_9d
    move-exception p0

    goto :goto_cf

    .line 3222
    :catch_9f
    :try_start_9f
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->sendAckSMSforCCTUnlock(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "IOException during get unlock status"

    .line 3223
    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_9f .. :try_end_c0} :catchall_9d

    .line 3226
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3227
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c6} :catch_c8

    goto/16 :goto_20e

    :catch_c8
    move-exception p0

    .line 3229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8e

    .line 3226
    :goto_cf
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3227
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d5} :catch_d6

    goto :goto_e9

    :catch_d6
    move-exception p1

    .line 3229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    :goto_e9
    throw p0

    :cond_ea
    const-string v0, "EVENT_GET_UNLOCK_STATUS_RESULT"

    .line 3153
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1c4

    .line 3156
    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_1bf

    .line 3157
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1bf

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_101

    goto/16 :goto_1bf

    :cond_101
    const-string v0, "Get unlock status success"

    .line 3160
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_1b9

    .line 3163
    array-length v0, p1

    if-lt v0, v6, :cond_1b9

    .line 3164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buf[0] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Buf[1] : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Buf[2] : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Buf[3] : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-byte v6, p1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    aget-byte v0, p1, v1

    const-string v1, "2"

    if-ne v0, v2, :cond_14e

    move-object v0, v1

    goto :goto_14f

    :cond_14e
    move-object v0, v7

    .line 3171
    :goto_14f
    aget-byte v6, p1, v2

    if-ne v6, v2, :cond_163

    .line 3172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_172

    .line 3174
    :cond_163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3176
    :goto_172
    aget-byte v5, p1, v5

    if-ne v5, v2, :cond_186

    .line 3177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_195

    .line 3179
    :cond_186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3181
    :goto_195
    aget-byte p1, p1, v4

    if-ne p1, v2, :cond_1a9

    .line 3182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c4

    .line 3184
    :cond_1a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c4

    :cond_1b9
    const-string p1, "Buf is invalid"

    .line 3187
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c4

    :cond_1bf
    :goto_1bf
    const-string p1, "Get unlock status failure"

    .line 3158
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_1c4
    :goto_1c4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statusCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->sendAckSMSforCCTUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20e

    :cond_1f5
    const-string v0, "EVENT_STOP_REASSEMBLE is called"

    .line 3149
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_20e

    :cond_200
    const-string v0, "EVENT_REASSEMBLE_TIMEOUT is called"

    .line 3144
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    .line 3146
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleReassembleTimeout(Landroid/telephony/SmsMessage;)V

    :goto_20e
    return-void
.end method
