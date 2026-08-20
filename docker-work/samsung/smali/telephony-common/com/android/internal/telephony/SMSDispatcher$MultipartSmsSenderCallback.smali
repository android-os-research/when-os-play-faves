.class public final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;
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
    name = "MultipartSmsSenderCallback"
.end annotation


# instance fields
.field private blacklist mCallbackCalled:Z

.field private final blacklist mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V
    .registers 3

    .line 830
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 828
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mCallbackCalled:Z

    .line 832
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    return-void
.end method


# virtual methods
.method public whitelist onDownloadMmsComplete(I)V
    .registers 3

    .line 882
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

    .line 872
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

    .line 877
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
    .registers 6

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendMultipartSmsComplete: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRefs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSDispatcher"

    .line 845
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mCallbackCalled:Z

    if-eqz v0, :cond_3f

    .line 848
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string p2, "onSendMultipartSmsComplete: unexpected call"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$sfgetsAnomalyUnexpectedCallback()Ljava/util/UUID;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    const-string p2, "Unexpected onSendMultipartSmsComplete"

    .line 849
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void

    :cond_3f
    const/4 v0, 0x1

    .line 853
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mCallbackCalled:Z

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->removeTimeout()V

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_5a

    const-string p0, "Unexpected onSendMultipartSmsComplete call with null trackers."

    .line 858
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 862
    :cond_5a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 864
    :try_start_5e
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$mprocessSendMultipartSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_6b

    .line 866
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    throw p0
.end method

.method public whitelist onSendSmsComplete(II)V
    .registers 3

    .line 837
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
