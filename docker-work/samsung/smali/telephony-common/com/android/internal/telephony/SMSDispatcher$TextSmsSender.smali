.class public final Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TextSmsSender"
.end annotation


# instance fields
.field private final blacklist mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$V7WAyBCVeGyXFcs4u2gabZfVGgk(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->lambda$onServiceReady$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 3

    .line 546
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 548
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-void
.end method

.method private static synthetic blacklist lambda$onServiceReady$0(Ljava/lang/Runnable;)V
    .registers 1

    .line 566
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public blacklist getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 1

    .line 586
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-object p0
.end method

.method public blacklist getSmsTrackers()[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 2

    const-string p0, "SMSDispatcher"

    const-string v0, "getSmsTrackers: Unexpected call for TextSmsSender"

    .line 591
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist onSendComplete(I)V
    .registers 3

    .line 581
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method

.method public declared-synchronized blacklist onServiceReady()V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "SMSDispatcher"

    const-string v1, "TextSmsSender::onServiceReady"

    .line 553
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "text"

    .line 555
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_68

    const/4 v0, 0x1

    if-eqz v2, :cond_5c

    .line 559
    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 561
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 563
    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2c

    move v6, v0

    goto :goto_2e

    :cond_2c
    const/4 v4, 0x0

    move v6, v4

    .line 565
    :goto_2e
    new-instance v7, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender$$ExternalSyntheticLambda0;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 559
    invoke-virtual/range {v1 .. v7}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catchall {:try_start_1a .. :try_end_3c} :catchall_68

    goto :goto_66

    :catch_3d
    move-exception v1

    :try_start_3e
    const-string v2, "SMSDispatcher"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextSmsSender::onServiceReady: Exception sending the SMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->onSendComplete(I)V

    goto :goto_66

    :cond_5c
    const-string v1, "SMSDispatcher"

    const-string v2, "TextSmsSender::onServiceReady: text == null"

    .line 574
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->onSendComplete(I)V
    :try_end_66
    .catchall {:try_start_3e .. :try_end_66} :catchall_68

    .line 577
    :goto_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method
