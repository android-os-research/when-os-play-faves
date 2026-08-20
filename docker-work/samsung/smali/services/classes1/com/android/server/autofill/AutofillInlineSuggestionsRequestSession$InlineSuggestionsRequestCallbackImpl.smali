.class public final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
.super Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;
.source "AutofillInlineSuggestionsRequestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineSuggestionsRequestCallbackImpl"
.end annotation


# instance fields
.field public final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3cUMi5AwXItCfiFDVCUXCimE1C8(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsUnsupported$0(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eD-NhaAQgAaWV4xWXp6fTTGpK8(Ljava/lang/Object;ZZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInputMethodFinishInputView$4(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$93C0LeU2EHcI07fDOWJQBHwvRtc(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsRequest$1(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6KGeNAHRvMAx6UVwQDBgY5g03s(Ljava/lang/Object;Landroid/view/autofill/AutofillId;ZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInputMethodStartInput$2(Ljava/lang/Object;Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XS1N3pz3fznES_41qVCFW0CXwhs(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsSessionInvalidated$6(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_toALHf9LhzDDXXTVXT8BjqBe_E(Ljava/lang/Object;ZZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInputMethodStartInputView$3(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYWwnndWe0-hXzKg3FU2C6MB78w(Ljava/lang/Object;ZZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInputMethodFinishInput$5(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .registers 3

    .line 376
    invoke-direct {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    return-void
.end method

.method public static synthetic lambda$onInlineSuggestionsRequest$1(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 3

    .line 400
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeRequest(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method public static synthetic lambda$onInlineSuggestionsSessionInvalidated$6(Ljava/lang/Object;)V
    .registers 1

    .line 465
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeSessionInvalidated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    return-void
.end method

.method public static synthetic lambda$onInlineSuggestionsUnsupported$0(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 3

    .line 387
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeRequest(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method public static synthetic lambda$onInputMethodFinishInput$5(Ljava/lang/Object;ZZ)V
    .registers 3

    .line 453
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method

.method public static synthetic lambda$onInputMethodFinishInputView$4(Ljava/lang/Object;ZZ)V
    .registers 3

    .line 442
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method

.method public static synthetic lambda$onInputMethodStartInput$2(Ljava/lang/Object;Landroid/view/autofill/AutofillId;ZZ)V
    .registers 4

    .line 411
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method public static synthetic lambda$onInputMethodStartInputView$3(Ljava/lang/Object;ZZ)V
    .registers 3

    .line 430
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method


# virtual methods
.method public onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 6

    .line 396
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInlineSuggestionsRequest() received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_37

    .line 399
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_37
    return-void
.end method

.method public onInlineSuggestionsSessionInvalidated()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInlineSuggestionsSessionInvalidated() called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_28

    .line 464
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_28
    return-void
.end method

.method public onInlineSuggestionsUnsupported()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInlineSuggestionsUnsupported() called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_29

    .line 386
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    return-void
.end method

.method public onInputMethodFinishInput()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodFinishInput() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_2a

    .line 452
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 454
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 452
    invoke-static {v1, p0, v2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2a
    return-void
.end method

.method public onInputMethodFinishInputView()V
    .registers 5

    .line 438
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodFinishInputView() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_2c

    .line 441
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 443
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 441
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    return-void
.end method

.method public onInputMethodShowInputRequested(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_1d

    .line 419
    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInputMethodShowInputRequested() received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInputMethodStartInput() received on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_3b

    .line 410
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 412
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 410
    invoke-static {v1, p0, p1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3b
    return-void
.end method

.method public onInputMethodStartInputView()V
    .registers 4

    .line 426
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodStartInputView() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_2a

    .line 429
    invoke-static {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->-$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 431
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 429
    invoke-static {v1, p0, v2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2a
    return-void
.end method
