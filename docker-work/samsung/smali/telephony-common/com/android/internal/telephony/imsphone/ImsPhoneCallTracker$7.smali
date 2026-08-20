.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 5221
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    .line 5238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsUssdListener onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5240
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 5241
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mUssdSession is not null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5243
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0x92

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdMethod(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_87

    .line 5245
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 5252
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object p1

    .line 5253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_4e
    if-ge v2, v0, :cond_66

    .line 5254
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 5255
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    goto :goto_67

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_66
    move-object p1, p2

    .line 5259
    :goto_67
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5260
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_7c

    .line 5261
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object p2

    .line 5260
    :cond_7c
    invoke-virtual {v0, v1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZILandroid/os/ResultReceiver;)V

    .line 5263
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "Initiated sending ussd by using silent redial."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 5266
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "Failed to start sending ussd by using silent resendUssd.!!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5270
    :cond_8e
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 4

    .line 5225
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mImsUssdListener onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5227
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_2f

    .line 5228
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 5229
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 5230
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5231
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)V

    :cond_2f
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 5275
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsUssdListener onCallTerminated reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5276
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x19

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5277
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 5278
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$munregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 5280
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p2

    if-ne p1, p2, :cond_68

    .line 5281
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 5282
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    if-eqz p2, :cond_61

    .line 5283
    new-instance p2, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 5285
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5286
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5287
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)V

    goto :goto_68

    .line 5290
    :cond_61
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "No pendingUssd"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5295
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "close"

    invoke-static {p0, v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 5297
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 6

    .line 5303
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsUssdListener onCallUssdMessageReceived mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1d

    if-eq p2, p1, :cond_1e

    const/4 p1, -0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 5317
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method
