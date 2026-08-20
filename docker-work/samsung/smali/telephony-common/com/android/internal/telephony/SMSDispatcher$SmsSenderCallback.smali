.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmsSenderCallback"
.end annotation


# instance fields
.field private blacklist mCallbackCalled:Z

.field private final blacklist mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .registers 3

    .line 662
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 660
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    .line 663
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    return-void
.end method


# virtual methods
.method public whitelist onDownloadMmsComplete(I)V
    .registers 3

    .line 706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onReceiveSmsComplete(I)V
    .registers 3

    .line 696
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onReceiveSmsComplete call with result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onSendMmsComplete(I[B)V
    .registers 3

    .line 701
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onSendMultipartSmsComplete(I[I)V
    .registers 3

    .line 691
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onSendSmsComplete(II)V
    .registers 7

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSmsComplete: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    if-eqz v0, :cond_3b

    .line 673
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string p2, "onSendSmsComplete: unexpected call"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$sfgetsAnomalyUnexpectedCallback()Ljava/util/UUID;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    const-string p2, "Unexpected onSendSmsComplete"

    .line 674
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void

    :cond_3b
    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mCallbackCalled:Z

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    :try_start_42
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-virtual {v2}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    .line 682
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->getSmsTracker()Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v3

    invoke-static {v2, v3, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mprocessSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 683
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->removeTimeout()V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_5d

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    throw p0
.end method
