.class Lcom/android/internal/telephony/CmcCallTracker$2;
.super Lcom/android/ims/ImsCall$Listener;
.source "CmcCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CmcCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CmcCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CmcCallTracker;)V
    .registers 2

    .line 1282
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "CmcListener.onCallHeld"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1369
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 1374
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "CmcListener.onCallHoldFailed"

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CmcListener.onCallHoldReceived"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1400
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "CmcListener.onCallProgressing"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1287
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 1386
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "CmcListener.onCallResumeFailed"

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CmcListener.onCallResumeReceived"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1393
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 6

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "CmcListener.onCallResumed"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1381
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p2, "CmcListener.onCallStartFailed"

    invoke-static {v0, p2, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1338
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iput-boolean v3, p2, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    const/4 v0, -0x1

    .line 1340
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    .line 1341
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 7

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "CmcListener.onCallStarted"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1294
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    if-eqz v0, :cond_1d

    .line 1295
    iput-boolean v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 1296
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    goto :goto_22

    .line 1298
    :cond_1d
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    :goto_22
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 9

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string v5, "CmcListener.onCallTerminated"

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iput-boolean v3, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 1350
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p2

    const/16 v0, 0x1779

    if-eq p2, v0, :cond_33

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2b

    const/16 v0, 0xd2

    if-ne p2, v0, :cond_25

    goto :goto_2b

    :cond_25
    const/16 v0, 0x25b

    if-ne p2, v0, :cond_2c

    const/4 v3, 0x7

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v3, v4

    .line 1361
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    :cond_33
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 7

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "CmcListener.onCallUpdated"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    if-nez p1, :cond_11

    return-void

    .line 1309
    :cond_11
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v0, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_27

    .line 1311
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const-string p1, "onCallUpdated - bundle is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;)V

    return-void

    :cond_27
    const-string v0, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    .line 1317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1320
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1321
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendDtmf(C)V

    goto :goto_57

    .line 1323
    :cond_4f
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1325
    :goto_57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method
