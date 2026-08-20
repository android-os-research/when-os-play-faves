.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$SupportCallback;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MSG_CANCEL:I = 0x3

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x5

.field private static final greylist-max-o MSG_RESET:I = 0x4

.field private static final greylist-max-o MSG_START_LISTENING:I = 0x1

.field private static final greylist-max-o MSG_STOP_LISTENING:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private greylist-max-o mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private greylist-max-o mCurrentCallback:Landroid/speech/RecognitionService$Callback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mStartedDataDelivery:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$w4RfsJ0Mifma_PY1OHH9A_qI1-o(Landroid/speech/RecognitionService;Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCancel(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCheckRecognitionSupport(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/speech/RecognitionService;->dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchClearCallback(Landroid/speech/RecognitionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStartListening(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStopListening(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchTriggerModelDownload(Landroid/speech/RecognitionService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 98
    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkPermissionAndStartDataDelivery()Z
    .registers 5

    .line 593
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 594
    return v1

    .line 596
    :cond_a
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 598
    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    const/4 v2, 0x0

    .line 596
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v3, v0, v2}, Landroid/content/PermissionChecker;->checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 600
    iput-boolean v1, p0, Landroid/speech/RecognitionService;->mStartedDataDelivery:Z

    .line 602
    :cond_1f
    iget-boolean v0, p0, Landroid/speech/RecognitionService;->mStartedDataDelivery:Z

    return v0
.end method

.method private blacklist checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 606
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    .line 608
    .local v0, "result":I
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method private greylist-max-o dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 180
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_5

    goto :goto_23

    .line 182
    :cond_5
    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmListener(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    .line 183
    const-string v0, "RecognitionService"

    const-string v1, "cancel called by client who did not call startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 185
    :cond_1b
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 186
    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    .line 189
    :goto_23
    return-void
.end method

.method private blacklist dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/IRecognitionSupportCallback;

    .line 199
    new-instance v0, Landroid/speech/RecognitionService$SupportCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/speech/RecognitionService$SupportCallback;-><init>(Landroid/speech/IRecognitionSupportCallback;Landroid/speech/RecognitionService$SupportCallback-IA;)V

    invoke-virtual {p0, p1, v0}, Landroid/speech/RecognitionService;->onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V

    .line 200
    return-void
.end method

.method private greylist-max-o dispatchClearCallback()V
    .registers 2

    .line 192
    invoke-virtual {p0}, Landroid/speech/RecognitionService;->finishDataDelivery()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/RecognitionService;->mStartedDataDelivery:Z

    .line 195
    return-void
.end method

.method private blacklist dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 131
    const-string v0, "RecognitionService"

    :try_start_2
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v1, :cond_42

    .line 132
    const-string v1, "android.speech.extra.AUDIO_SOURCE"

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 134
    invoke-direct {p0, p3}, Landroid/speech/RecognitionService;->checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    .line 135
    .local v1, "preflightPermissionCheckPassed":Z
    :goto_18
    if-eqz v1, :cond_25

    .line 140
    new-instance v2, Landroid/speech/RecognitionService$Callback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p3, v3}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$Callback-IA;)V

    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 141
    invoke-virtual {p0, p1, v2}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    .line 144
    :cond_25
    if-eqz v1, :cond_2d

    invoke-direct {p0}, Landroid/speech/RecognitionService;->checkPermissionAndStartDataDelivery()Z

    move-result v2

    if-nez v2, :cond_41

    .line 145
    :cond_2d
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 146
    if-eqz v1, :cond_3c

    .line 148
    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v2}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 149
    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    .line 151
    :cond_3c
    const-string v2, "caller doesn\'t have permission:android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "preflightPermissionCheckPassed":Z
    :cond_41
    goto :goto_4c

    .line 155
    :cond_42
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 156
    const-string v1, "concurrent startListening received - ignoring this call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4c} :catch_4d

    .line 160
    :goto_4c
    goto :goto_54

    .line 158
    :catch_4d
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onError call from startListening failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_54
    return-void
.end method

.method private greylist-max-o dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 165
    const-string v0, "RecognitionService"

    :try_start_2
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v1, :cond_11

    .line 166
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 167
    const-string/jumbo v1, "stopListening called with no preceding startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 168
    :cond_11
    invoke-static {v1}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmListener(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_2b

    .line 169
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 170
    const-string/jumbo v1, "stopListening called by other caller than startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 172
    :cond_2b
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_31

    .line 176
    :goto_30
    goto :goto_38

    .line 174
    :catch_31
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onError call from stopListening failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method

.method private blacklist dispatchTriggerModelDownload(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, p1}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method private blacklist handleAttributionContextCreation(Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 309
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmCallingAttributionSource(Landroid/speech/RecognitionService$Callback;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 311
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fputmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;Z)V

    .line 313
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 5
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 296
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 297
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 298
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    goto :goto_30

    .line 300
    :cond_1e
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionService;)V

    .line 302
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 301
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    :cond_30
    :goto_30
    invoke-super {p0, p1}, Landroid/app/Service;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method blacklist finishDataDelivery()V
    .registers 3

    .line 613
    iget-boolean v0, p0, Landroid/speech/RecognitionService;->mStartedDataDelivery:Z

    if-eqz v0, :cond_1a

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/RecognitionService;->mStartedDataDelivery:Z

    .line 615
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "op":Ljava/lang/String;
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 617
    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 616
    invoke-static {p0, v0, v1}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 619
    .end local v0    # "op":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 318
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object v0
.end method

.method protected abstract whitelist onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "supportCallback"    # Landroid/speech/RecognitionService$SupportCallback;

    .line 281
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/speech/RecognitionService$SupportCallback;->onError(I)V

    .line 282
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 324
    invoke-virtual {p0}, Landroid/speech/RecognitionService;->finishDataDelivery()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 326
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    .line 327
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 328
    return-void
.end method

.method protected abstract whitelist onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract whitelist onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;)V
    .registers 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 291
    return-void
.end method
