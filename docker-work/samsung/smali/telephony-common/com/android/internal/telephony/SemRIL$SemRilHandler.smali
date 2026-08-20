.class public Lcom/android/internal/telephony/SemRIL$SemRilHandler;
.super Landroid/os/Handler;
.source "SemRIL.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemRilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_73

    const/4 v3, 0x7

    if-eq v0, v3, :cond_11

    goto/16 :goto_162

    .line 282
    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 283
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 284
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cookie = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    .line 286
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_162

    .line 288
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iput-boolean v2, p1, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    :goto_69
    if-gt v2, v1, :cond_162

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SemRIL;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 268
    :cond_73
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v5}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 272
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_162

    .line 273
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iput-boolean v2, p1, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    :goto_cb
    if-gt v2, v1, :cond_162

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SemRIL;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 260
    :cond_d5
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget v0, v0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    if-ne p1, v0, :cond_162

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z

    goto/16 :goto_162

    .line 240
    :cond_e5
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v0, v0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 241
    :try_start_ea
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget v1, v1, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    if-ne p1, v1, :cond_161

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z

    move-result p1

    if-eqz p1, :cond_161

    .line 242
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    if-eqz p1, :cond_10b

    .line 243
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    .line 246
    :cond_10b
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-string v1, "SEM_RILJ"

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_129
    if-ge v2, p1, :cond_161

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    const-string v3, "SEM_RILJ"

    .line 251
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

    .line 252
    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_129

    .line 256
    :cond_161
    monitor-exit v0

    :cond_162
    :goto_162
    return-void

    :catchall_163
    move-exception p0

    monitor-exit v0
    :try_end_165
    .catchall {:try_start_ea .. :try_end_165} :catchall_163

    throw p0
.end method
