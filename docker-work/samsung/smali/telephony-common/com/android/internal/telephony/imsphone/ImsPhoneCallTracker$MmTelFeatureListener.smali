.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;
.super Landroid/telephony/ims/feature/MmTelFeature$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmTelFeatureListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$Dp5GnF60OYDyj-vQ_5FUhKCxq4g(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onVoiceMessageCountUpdate$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hnn1lL7TB9BbXU6IcNOXPiKX4Ho(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$executeAndWait$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nernuwRU7p7dXmfDNrQWvWOd4Zo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onIncomingCall$0(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    return-void
.end method

.method private blacklist executeAndWait(Ljava/lang/Runnable;)V
    .registers 4

    .line 433
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2e

    :catch_13
    move-exception p1

    .line 436
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder - exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logw(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private static synthetic blacklist lambda$executeAndWait$2(Ljava/lang/Runnable;)V
    .registers 1

    .line 434
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onIncomingCall$0(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 3

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->processIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceMessageCountUpdate$1(I)V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_28

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceMessageCountChanged :: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 420
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    goto :goto_2d

    :cond_28
    const-string p0, "onVoiceMessageCountUpdate: null phone"

    .line 422
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method private blacklist processIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    const-string v4, "takeCall"

    const-string v5, "takeCall (USSD)"

    const-string v6, "onIncomingCall: exception processing: "

    const-string v7, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    const-string v8, "processIncomingCall: USSD"

    const-string v9, "processIncomingCall: exception "

    const-string v10, "com.samsung.telephony.extra.CMC_TYPE"

    const-string v11, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v12, "notifyReadyToHandleImsCallbacks"

    .line 232
    iget-object v13, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v14, "processIncomingCall: incoming call intent"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p2, :cond_27

    .line 234
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    goto :goto_29

    :cond_27
    move-object/from16 v13, p2

    .line 235
    :goto_29
    iget-object v14, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v14

    if-nez v14, :cond_32

    return-void

    :cond_32
    const/4 v14, 0x1

    .line 242
    :try_start_33
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16
    :try_end_37
    .catch Lcom/android/ims/ImsException; {:try_start_33 .. :try_end_37} :catch_37c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_37c
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_37} :catch_33a
    .catchall {:try_start_33 .. :try_end_37} :catchall_334

    if-eqz v16, :cond_8a

    .line 243
    :try_start_39
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v14, :cond_50

    .line 245
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "processIncomingCall - SEM_CALL_EXTRA_SEM_CMC_TYPE: PD"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 246
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCmcCT:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-virtual {v3, v2, v13}, Lcom/android/internal/telephony/CmcCallTracker;->onIncomingCmcCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    return-void

    .line 249
    :cond_50
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 250
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    iget-object v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processIncomingCall - SEM_EXTRA_CMC_BOUND_SESSION_ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_7a
    .catch Lcom/android/ims/ImsException; {:try_start_39 .. :try_end_7a} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_7a} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_7a} :catch_80
    .catchall {:try_start_39 .. :try_end_7a} :catchall_7b

    goto :goto_8a

    :catchall_7b
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    goto/16 :goto_3c3

    :catch_80
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    goto/16 :goto_33e

    :catch_85
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    goto/16 :goto_380

    :cond_8a
    :goto_8a
    :try_start_8a
    const-string v7, "android.telephony.ims.feature.extra.IS_USSD"

    const/4 v10, 0x0

    .line 257
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v11, "android:ussd"

    .line 259
    invoke-virtual {v13, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11
    :try_end_97
    .catch Lcom/android/ims/ImsException; {:try_start_8a .. :try_end_97} :catch_37c
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_97} :catch_37c
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_97} :catch_33a
    .catchall {:try_start_8a .. :try_end_97} :catchall_334

    or-int/2addr v7, v11

    const/4 v10, 0x2

    if-eqz v7, :cond_f7

    .line 261
    :try_start_9b
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 262
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 264
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v3, v5, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 266
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsUssdListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 268
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v2, v5, v10, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eqz v2, :cond_f6

    .line 272
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "accept (USSD)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 274
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_f6
    .catch Lcom/android/ims/ImsException; {:try_start_9b .. :try_end_f6} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_f6} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_9b .. :try_end_f6} :catch_80
    .catchall {:try_start_9b .. :try_end_f6} :catchall_7b

    :cond_f6
    return-void

    :cond_f7
    :try_start_f7
    const-string v5, "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"

    const/4 v7, 0x0

    .line 279
    invoke-virtual {v13, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v8, "android:isUnknown"

    .line 281
    invoke-virtual {v13, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    or-int/2addr v5, v8

    .line 283
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processIncomingCall: isUnknown = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " fg = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 284
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " bg = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 285
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 290
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v8, 0x0

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-static {v7, v4, v8, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 292
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v7

    .line 294
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v14, v11

    invoke-static {v8, v4, v10, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_15f
    .catch Lcom/android/ims/ImsException; {:try_start_f7 .. :try_end_15f} :catch_37c
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_15f} :catch_37c
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_15f} :catch_33a
    .catchall {:try_start_f7 .. :try_end_15f} :catchall_334

    .line 303
    :try_start_15f
    new-instance v4, Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;

    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v10, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v5, :cond_16a

    .line 306
    iget-object v11, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    goto :goto_16c

    :cond_16a
    iget-object v11, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    :goto_16c
    move-object/from16 v21, v11

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 309
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v8

    if-eqz v8, :cond_19e

    .line 310
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v8

    if-eqz v8, :cond_19e

    if-eqz v7, :cond_19e

    .line 315
    iget-object v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 316
    invoke-static {v10, v8, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mshouldDisconnectActiveCallOnAnswer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v8

    .line 317
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/Connection;->setActiveCallDisconnectedOnAnswer(Z)V

    .line 320
    :cond_19e
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAllowAddCallDuringVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/Connection;->setAllowAddCallDuringVideoCall(Z)V

    .line 321
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAllowHoldingVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/Connection;->setAllowHoldingVideoCall(Z)V

    if-eqz v2, :cond_221

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    if-eqz v8, :cond_221

    .line 324
    invoke-interface/range {p1 .. p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_221

    .line 325
    invoke-interface/range {p1 .. p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 326
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_221

    .line 327
    invoke-interface/range {p1 .. p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const/4 v8, 0x0

    .line 328
    invoke-virtual {v2, v3, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d9
    .catch Lcom/android/ims/ImsException; {:try_start_15f .. :try_end_1d9} :catch_330
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_1d9} :catch_330
    .catch Ljava/lang/NullPointerException; {:try_start_15f .. :try_end_1d9} :catch_32c
    .catchall {:try_start_15f .. :try_end_1d9} :catchall_327

    if-eqz v2, :cond_221

    .line 331
    :try_start_1db
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v10, Landroid/telephony/ims/ImsReasonInfo;

    .line 332
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x0

    invoke-direct {v10, v2, v11, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 331
    invoke-virtual {v3, v10, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    const/16 v3, 0x51

    if-ne v2, v3, :cond_221

    .line 335
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 336
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "onIncomingCall : incoming call auto rejected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 337
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v2

    const-string v3, "processIncomingCall: auto rejected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_208
    .catch Ljava/lang/NumberFormatException; {:try_start_1db .. :try_end_208} :catch_209
    .catch Lcom/android/ims/ImsException; {:try_start_1db .. :try_end_208} :catch_330
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_208} :catch_330
    .catch Ljava/lang/NullPointerException; {:try_start_1db .. :try_end_208} :catch_32c
    .catchall {:try_start_1db .. :try_end_208} :catchall_327

    goto :goto_221

    :catch_209
    move-exception v0

    move-object v2, v0

    :try_start_20b
    const-string v3, "ImsPhoneCallTracker"

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in parsing Integer Data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_221
    :goto_221
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onIncomingCall: isUnknown="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", connId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 348
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$maddConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 350
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$msetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    .line 353
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v8

    .line 352
    invoke-virtual {v2, v3, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V

    .line 354
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallReceived(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    if-eqz v5, :cond_2bd

    .line 359
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_2b5

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 361
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingCall: unknown call "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " replaces "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 364
    :cond_2b5
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_307

    .line 366
    :cond_2bd
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2d3

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 367
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, v3, :cond_2d8

    .line 368
    :cond_2d3
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v7, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 371
    :cond_2d8
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 372
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyIncomingRing()V

    const-string v2, "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

    .line 374
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_307

    .line 375
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "processIncomingCall - Incoming call is forwarded call"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 376
    new-instance v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    const/4 v3, 0x1

    .line 377
    iput v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v3, 0x0

    .line 378
    iput v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 379
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 384
    :cond_307
    :goto_307
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 385
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V
    :try_end_313
    .catch Lcom/android/ims/ImsException; {:try_start_20b .. :try_end_313} :catch_330
    .catch Landroid/os/RemoteException; {:try_start_20b .. :try_end_313} :catch_330
    .catch Ljava/lang/NullPointerException; {:try_start_20b .. :try_end_313} :catch_32c
    .catchall {:try_start_20b .. :try_end_313} :catchall_327

    .line 397
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v12, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->notifyReadyToHandleImsCallbacks()V

    goto/16 :goto_3c0

    :catchall_327
    move-exception v0

    move-object v2, v0

    move-object v14, v7

    goto/16 :goto_3c3

    :catch_32c
    move-exception v0

    move-object v2, v0

    move-object v14, v7

    goto :goto_33e

    :catch_330
    move-exception v0

    move-object v2, v0

    move-object v14, v7

    goto :goto_380

    :catchall_334
    move-exception v0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v14, v8

    goto/16 :goto_3c3

    :catch_33a
    move-exception v0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v14, v8

    .line 391
    :goto_33e
    :try_start_33e
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 392
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_36a
    .catchall {:try_start_33e .. :try_end_36a} :catchall_3c1

    if-eqz v14, :cond_3c0

    .line 397
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v12, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3bd

    :catch_37c
    move-exception v0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v14, v8

    .line 387
    :goto_380
    :try_start_380
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 388
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_3ac
    .catchall {:try_start_380 .. :try_end_3ac} :catchall_3c1

    if-eqz v14, :cond_3c0

    .line 397
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v12, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 398
    :goto_3bd
    invoke-virtual {v14}, Lcom/android/ims/ImsCall;->notifyReadyToHandleImsCallbacks()V

    :cond_3c0
    :goto_3c0
    return-void

    :catchall_3c1
    move-exception v0

    move-object v2, v0

    :goto_3c3
    if-eqz v14, :cond_3d7

    .line 397
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v12, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v14}, Lcom/android/ims/ImsCall;->notifyReadyToHandleImsCallbacks()V

    .line 401
    :cond_3d7
    throw v2
.end method


# virtual methods
.method public blacklist onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 7

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onIncomingCall"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 412
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->executeAndWait(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onVoiceMessageCountUpdate(I)V
    .registers 3

    .line 417
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
