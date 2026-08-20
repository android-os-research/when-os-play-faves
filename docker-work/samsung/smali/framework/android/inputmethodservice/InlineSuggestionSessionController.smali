.class Landroid/inputmethodservice/InlineSuggestionSessionController;
.super Ljava/lang/Object;
.source "InlineSuggestionSessionController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionSessionController"


# instance fields
.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImeClientFieldId:Landroid/view/autofill/AutofillId;

.field private blacklist mImeClientPackageName:Ljava/lang/String;

.field private blacklist mImeInputStarted:Z

.field private blacklist mImeInputViewStarted:Z

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/inputmethodservice/InlineSuggestionSession;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p2, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p3, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    .line 87
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 88
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 89
    return-void
.end method

.method private static blacklist match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 259
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 260
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 259
    :goto_11
    return v0
.end method

.method private static blacklist match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z
    .registers 5
    .param p0, "inlineSuggestionsRequestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_8

    goto :goto_24

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 248
    :goto_23
    return v0

    .line 246
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method blacklist match(Landroid/view/autofill/AutofillId;)Z
    .registers 3
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 238
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist notifyOnFinishInput()V
    .registers 4

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 215
    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 216
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 218
    :try_start_14
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 221
    goto :goto_37

    .line 219
    :catch_1e
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    return-void
.end method

.method blacklist notifyOnFinishInputView()V
    .registers 4

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 198
    :try_start_d
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    .line 201
    goto :goto_30

    .line 199
    :catch_17
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    return-void
.end method

.method blacklist notifyOnShowInputRequested(Z)V
    .registers 5
    .param p1, "requestResult"    # Z

    .line 160
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 162
    :try_start_a
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 165
    goto :goto_2d

    .line 163
    :catch_14
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodShowInputRequested() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method blacklist notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeFieldId"    # Landroid/view/autofill/AutofillId;

    .line 129
    if-eqz p1, :cond_5d

    if-nez p2, :cond_5

    goto :goto_5d

    .line 132
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 133
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_5c

    .line 137
    sget-object v1, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->isCallbackInvoked()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 141
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    goto :goto_5c

    .line 142
    :cond_2f
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 144
    :try_start_37
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_43

    .line 147
    goto :goto_5c

    .line 145
    :catch_43
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    return-void

    .line 130
    :cond_5d
    :goto_5d
    return-void
.end method

.method blacklist notifyOnStartInputView()V
    .registers 4

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 178
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 180
    :try_start_d
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    .line 183
    goto :goto_30

    .line 181
    :catch_17
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    return-void
.end method

.method blacklist onMakeInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 12
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 100
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->invalidate()V

    .line 103
    :cond_7
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSession;

    iget-object v4, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v5, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iget-object v6, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    iget-object v8, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroid/inputmethodservice/InlineSuggestionSession;-><init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    .line 108
    iget-boolean v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 109
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    .line 111
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    if-eqz v0, :cond_54

    .line 113
    :try_start_31
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 116
    goto :goto_54

    .line 114
    :catch_3b
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    return-void
.end method
