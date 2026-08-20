.class public Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideCurrentInputMethod(I)V
    .registers 2

    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 1

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 4

    return-void
.end method

.method public onImeParentChanged()V
    .registers 1

    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .registers 3

    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 2

    return-void
.end method

.method public removeImeSurface()V
    .registers 1

    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public setInteractive(Z)V
    .registers 2

    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public unbindAccessibilityFromCurrentClient(I)V
    .registers 2

    return-void
.end method

.method public updateImeWindowStatus(Z)V
    .registers 2

    return-void
.end method
