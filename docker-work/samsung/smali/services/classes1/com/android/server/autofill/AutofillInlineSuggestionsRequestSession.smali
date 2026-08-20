.class public final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.super Ljava/lang/Object;
.source "AutofillInlineSuggestionsRequestSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AutofillInlineSuggestionsRequestSession"


# instance fields
.field public mAutofillId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mComponentName:Landroid/content/ComponentName;

.field public mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mImeCurrentFieldId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mImeInputStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mImeInputViewStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mImeRequestConsumer:Ljava/util/function/Consumer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mImeRequestReceived:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mImeSessionInvalidated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public mPreviousHasNonPinSuggestionShow:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

.field public final mUiExtras:Landroid/os/Bundle;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReceiveImeRequest(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReceiveImeSessionInvalidated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeSessionInvalidated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/autofill/AutofillId;ZZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReceiveImeStatusUpdated(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal;",
            "I",
            "Landroid/content/ComponentName;",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 116
    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    .line 117
    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    .line 118
    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p8, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    .line 121
    iput-object p9, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    .line 123
    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 124
    iput-object p7, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .registers 2

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 478
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public destroySessionLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 180
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-nez v0, :cond_1f

    .line 181
    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Never received an InlineSuggestionsRequest from the IME for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public getAutofillIdLocked()Landroid/view/autofill/AutofillId;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public getInlineSuggestionsRequestLocked()Ljava/util/Optional;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_9

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 144
    :cond_9
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-eqz v1, :cond_c

    goto :goto_2d

    :cond_c
    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    const/4 v2, 0x0

    .line 297
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 300
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 301
    iput-object p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 302
    iget-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    .line 304
    :cond_1f
    iget-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2b

    .line 306
    iget-object p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 309
    :cond_2b
    monitor-exit v0

    return-void

    .line 294
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final handleOnReceiveImeSessionInvalidated()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 361
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 363
    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 364
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 344
    monitor-exit v0

    return-void

    :cond_9
    if-eqz p1, :cond_d

    .line 347
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    .line 349
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    .line 350
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final handleOnReceiveImeStatusUpdated(ZZ)V
    .registers 8

    .line 319
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 321
    monitor-exit v0

    return-void

    .line 323
    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_27

    .line 324
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 325
    :goto_16
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eq v4, p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    .line 326
    :goto_1c
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    .line 327
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-nez v1, :cond_24

    if-eqz v2, :cond_27

    .line 329
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    .line 332
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final maybeNotifyFillUiEventLocked(Ljava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 259
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    .line 263
    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestionInfo;->isPinned()Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v0, 0x1

    goto :goto_22

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 268
    :cond_22
    :goto_22
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_47

    .line 269
    sget-object p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeNotifyFillUiEventLoked(): hasSuggestionToShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviousHasNonPinSuggestionShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz v0, :cond_55

    .line 274
    iget-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-nez p1, :cond_55

    .line 276
    iget-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {p1, v1}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V

    goto :goto_62

    :cond_55
    if-nez v0, :cond_62

    .line 277
    iget-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-eqz p1, :cond_62

    .line 279
    iget-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {p1, v1}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V

    .line 282
    :cond_62
    :goto_62
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    return-void
.end method

.method public final maybeUpdateResponseToImeLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 218
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "maybeUpdateResponseToImeLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-nez v0, :cond_15

    goto :goto_54

    .line 222
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 227
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    return-void

    .line 231
    :cond_42
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeNotifyFillUiEventLocked(Ljava/util/List;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    xor-int/lit8 v0, v1, 0x1

    .line 233
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    :cond_54
    :goto_54
    return-void
.end method

.method public onCreateInlineSuggestionsRequestLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 197
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateInlineSuggestionsRequestLocked called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    new-instance v2, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;-><init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl-IA;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    return-void
.end method

.method public onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 155
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 158
    :cond_6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_25

    .line 159
    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInlineSuggestionsResponseLocked called for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz v0, :cond_32

    goto :goto_3f

    .line 166
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 167
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public resetInlineFillUiLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    return-void
.end method

.method public final updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 245
    :cond_5
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send inline response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInlineSuggestionsResponseCallback;->onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_36

    .line 249
    :catch_2f
    sget-object p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string p1, "RemoteException sending InlineSuggestionsResponse to IME"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method
