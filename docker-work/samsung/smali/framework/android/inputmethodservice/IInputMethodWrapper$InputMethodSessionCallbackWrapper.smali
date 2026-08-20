.class final Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "IInputMethodWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InputMethodSessionCallbackWrapper"
.end annotation


# instance fields
.field final blacklist mCb:Lcom/android/internal/view/IInputSessionCallback;

.field final blacklist mChannel:Landroid/view/InputChannel;

.field final blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "cb"    # Lcom/android/internal/view/IInputSessionCallback;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    .line 124
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V
    .registers 5
    .param p1, "session"    # Landroid/view/inputmethod/InputMethodSession;

    .line 130
    if-eqz p1, :cond_11

    .line 131
    :try_start_2
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-direct {v0, v1, p1, v2}, Landroid/inputmethodservice/IInputMethodSessionWrapper;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V

    .line 133
    .local v0, "wrap":Landroid/inputmethodservice/IInputMethodSessionWrapper;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V

    .line 134
    .end local v0    # "wrap":Landroid/inputmethodservice/IInputMethodSessionWrapper;
    goto :goto_1e

    .line 135
    :cond_11
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_18

    .line 136
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 138
    :cond_18
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_1f

    .line 141
    :goto_1e
    goto :goto_20

    .line 140
    :catch_1f
    move-exception v0

    .line 142
    :goto_20
    return-void
.end method
