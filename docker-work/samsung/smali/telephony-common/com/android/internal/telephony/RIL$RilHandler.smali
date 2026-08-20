.class public Lcom/android/internal/telephony/RIL$RilHandler;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_76

    const/4 v3, 0x7

    if-eq v0, v3, :cond_14

    goto/16 :goto_1a9

    .line 375
    :cond_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 376
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 377
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cookie = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    .line 379
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1a9

    .line 381
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iput-boolean v2, p1, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    :goto_6c
    if-gt v2, v1, :cond_1a9

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 357
    :cond_76
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object v5

    .line 360
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 361
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1a9

    .line 362
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iput-boolean v2, p1, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    :goto_ce
    if-gt v2, v1, :cond_1a9

    .line 365
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 337
    :cond_d8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mfindAndRemoveRequestFromList(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-nez p1, :cond_ea

    goto/16 :goto_1a9

    .line 345
    :cond_ea
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_112

    .line 346
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$smgetResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    iget-object v1, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 348
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 352
    :cond_112
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mdecrementWakeLock(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_1a9

    .line 329
    :cond_11c
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    if-ne p1, v0, :cond_1a9

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z

    goto/16 :goto_1a9

    .line 309
    :cond_12c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 310
    :try_start_131
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v1, v1, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    if-ne p1, v1, :cond_1a8

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z

    move-result p1

    if-eqz p1, :cond_1a8

    .line 311
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    if-eqz p1, :cond_152

    .line 312
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    .line 315
    :cond_152
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-string v1, "RILJ"

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_170
    if-ge v2, p1, :cond_1a8

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    const-string v3, "RILJ"

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 321
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_170

    .line 325
    :cond_1a8
    monitor-exit v0

    :cond_1a9
    :goto_1a9
    return-void

    :catchall_1aa
    move-exception p0

    monitor-exit v0
    :try_end_1ac
    .catchall {:try_start_131 .. :try_end_1ac} :catchall_1aa

    throw p0
.end method
