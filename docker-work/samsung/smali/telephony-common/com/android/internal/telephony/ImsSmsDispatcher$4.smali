.class Lcom/android/internal/telephony/ImsSmsDispatcher$4;
.super Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReceiveSmsDeliveryReportAck(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Failed to close stream, exception is: "

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSmsDeliveryReportAck token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 300
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 301
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x25

    .line 304
    :try_start_52
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x3

    .line 305
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 306
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v3, "Handle Smspp for Stk sent via GoogleIMS"

    .line 307
    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6e} :catch_7e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_7c

    .line 314
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 317
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_74} :catch_75

    goto :goto_9d

    :catch_75
    move-exception p2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_90

    :catchall_7c
    move-exception p0

    goto :goto_ab

    :catch_7e
    :try_start_7e
    const-string v3, "IOException during handle Smspp for Stk sent via GoogleIMS"

    .line 310
    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_7c

    .line 314
    :try_start_83
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 317
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_89} :catch_8a

    goto :goto_9d

    :catch_8a
    move-exception p2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_9d
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    .line 314
    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 317
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_b2

    goto :goto_c5

    :catch_b2
    move-exception p1

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_c5
    throw p0

    :cond_c6
    :goto_c6
    return-void
.end method

.method public blacklist onSendSmsResponse(IIIIII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSmsResponse for cdma ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v0, :cond_ec

    .line 339
    iput p2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 340
    iput p6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    .line 342
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2, p5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mconvertErrorCodeToNetworkReasonCode(Lcom/android/internal/telephony/ImsSmsDispatcher;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_92

    const/4 v3, 0x2

    if-eq p3, v3, :cond_81

    const/4 v3, 0x3

    if-eq p3, v3, :cond_7b

    const/4 v2, 0x4

    if-eq p3, v2, :cond_75

    goto :goto_a6

    .line 359
    :cond_75
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_a6

    .line 356
    :cond_7b
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p3, v0, v3, p4, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    goto :goto_a6

    .line 352
    :cond_81
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p3, v0, v3, p4, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    .line 353
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 345
    :cond_92
    iget-object p3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-nez p3, :cond_a1

    .line 347
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_a1
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p3, v0, v3, p4, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    .line 364
    :goto_a6
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "onSendSmsResponse:"

    .line 365
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " token ="

    .line 366
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " messageRef ="

    .line 367
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " reason ="

    .line 368
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " errorCode ="

    .line 369
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " errorClass ="

    .line 370
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 372
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, v1, p2, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 336
    :cond_ec
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid token."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist onSendSmsResult(IIIII)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 193
    :try_start_10
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendSmsResult token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " messageRef="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " networkReasonCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 197
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 198
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-eqz v14, :cond_68

    .line 199
    iget-wide v5, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    goto :goto_6a

    :cond_68
    const-wide/16 v5, 0x0

    :goto_6a
    move-wide v7, v5

    move/from16 v5, p3

    move/from16 v6, p4

    .line 198
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsServiceSmsSolicitedResponse(IIIJ)V

    if-eqz v14, :cond_14c

    .line 203
    iput v2, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 205
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    const-string v4, "sms_write_uicc_supported"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 206
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v3, v1, v2, v9, v14}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleVzwSmsWriteUicc(Lcom/android/internal/telephony/ImsSmsDispatcher;IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_8b
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v9, v4, :cond_c5

    const/4 v5, 0x2

    if-eq v9, v5, :cond_b4

    const/4 v5, 0x3

    if-eq v9, v5, :cond_ae

    if-eq v9, v3, :cond_98

    goto :goto_de

    .line 231
    :cond_98
    iget v5, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v5, v4

    iput v5, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 232
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_de

    .line 225
    :cond_ae
    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v6, v14, v5, v10, v11}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    goto :goto_de

    .line 219
    :cond_b4
    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v6, v14, v5, v10, v11}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    .line 221
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 212
    :cond_c5
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v5, v14, v4, v10, v11}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    .line 214
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v5, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    .line 238
    :goto_de
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "onSendSmsResult:"

    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " token ="

    .line 240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " messageRef ="

    .line 241
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " reason ="

    .line 242
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 244
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string v2, "ImsSmsDispatcher"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v1

    const/4 v2, 0x1

    const-string v5, "3gpp2"

    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 249
    invoke-virtual {v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v9, v3, :cond_12e

    move v3, v4

    goto :goto_12f

    :cond_12e
    const/4 v3, 0x0

    :goto_12f
    iget-wide v6, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v8

    .line 254
    invoke-virtual {v14}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v14

    move-object v0, v1

    move v1, v2

    move v2, v5

    move/from16 v4, p4

    move-wide v5, v6

    move v7, v8

    move-wide v8, v14

    .line 247
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJ)V
    :try_end_148
    .catchall {:try_start_10 .. :try_end_148} :catchall_154

    .line 256
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 201
    :cond_14c
    :try_start_14c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_154
    .catchall {:try_start_14c .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    .line 256
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw v0
.end method

.method public blacklist onSmsReceived(ILjava/lang/String;[B)V
    .registers 4

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$monSamsungSmsReceived(Lcom/android/internal/telephony/ImsSmsDispatcher;ILjava/lang/String;[B)V

    return-void
.end method

.method public blacklist onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v3, "Status report received."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 268
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2, p3, p2}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 270
    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v3, :cond_52

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Ljava/lang/String;[B)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_5a

    .line 276
    :try_start_24
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p2

    iget-object p3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v2, 0x1

    invoke-virtual {p2, p1, p3, v2}, Lcom/android/ims/ImsManager;->acknowledgeSmsReport(III)V
    :try_end_32
    .catch Lcom/android/ims/ImsException; {:try_start_24 .. :try_end_32} :catch_33
    .catchall {:try_start_24 .. :try_end_32} :catchall_5a

    goto :goto_4e

    :catch_33
    move-exception p1

    .line 281
    :try_start_34
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acknowledgeSmsReport(). Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_5a

    .line 284
    :goto_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 271
    :cond_52
    :try_start_52
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Status report received with a PDU that could not be parsed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw p0
.end method
