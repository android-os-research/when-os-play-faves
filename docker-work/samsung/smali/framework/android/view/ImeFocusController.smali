.class public final Landroid/view/ImeFocusController;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist DEBUG_SEP:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ImeFocusController"


# instance fields
.field private blacklist mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

.field private blacklist mHasImeFocus:Z

.field private blacklist mNextServedView:Landroid/view/View;

.field private blacklist mServedView:Landroid/view/View;

.field private final blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 56
    iput-object p1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 57
    return-void
.end method

.method private blacklist getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .registers 3

    .line 61
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    if-nez v0, :cond_16

    .line 62
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 63
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 65
    :cond_16
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-object v0
.end method

.method private static blacklist isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p0, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 303
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public blacklist checkFocus(ZZ)Z
    .registers 10
    .param p1, "forceNewFocus"    # Z
    .param p2, "startInput"    # Z

    .line 169
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v6

    .line 170
    .local v6, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v6, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_16

    if-nez p1, :cond_16

    goto :goto_87

    .line 175
    :cond_16
    sget-boolean v0, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    const-string v2, "ImeFocusController"

    if-eqz v0, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFocus: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    iget-object v4, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-eqz v4, :cond_56

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_58

    :cond_56
    const-string v4, "<none>"

    :goto_58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_63
    iget-object v3, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-nez v3, :cond_75

    .line 184
    if-eqz v0, :cond_6e

    .line 185
    const-string v0, "checkFocus return, next served view is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6e
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 189
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->closeCurrentIme()V

    .line 190
    return v1

    .line 192
    :cond_75
    iput-object v3, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 193
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishComposingText()V

    .line 195
    if-eqz p2, :cond_85

    .line 196
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInput(ILandroid/view/View;III)Z

    .line 199
    :cond_85
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_87
    :goto_87
    return v1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 366
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 367
    .local v0, "token":J
    iget-boolean v2, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 368
    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 369
    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 371
    return-void
.end method

.method public blacklist getNextServedView()Landroid/view/View;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getServedView()Landroid/view/View;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasImeFocus()Z
    .registers 2

    .line 362
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return v0
.end method

.method public blacklist onInteractiveChanged(Z)V
    .registers 5
    .param p1, "interactive"    # Z

    .line 285
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 286
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 287
    return-void

    .line 289
    :cond_d
    if-eqz p1, :cond_20

    .line 290
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {p0, v1, v2}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 292
    .end local v1    # "focusedView":Landroid/view/View;
    goto :goto_25

    .line 293
    :cond_20
    iget-object v1, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    invoke-interface {v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInputAndReportToIme()V

    .line 295
    :goto_25
    return-void
.end method

.method blacklist onMovedToDisplay()V
    .registers 2

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 76
    return-void
.end method

.method blacklist onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 127
    const-string v0, "ImeFocusController"

    if-eqz p2, :cond_69

    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v1, :cond_69

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_69

    .line 139
    :cond_f
    if-eqz p1, :cond_13

    move-object v1, p1

    goto :goto_17

    :cond_13
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 141
    .local v1, "viewForWindowFocus":Landroid/view/View;
    :goto_17
    sget-boolean v2, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v2, :cond_42

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " softInputMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 143
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_42
    const/4 v0, 0x0

    .line 148
    .local v0, "forceFocus":Z
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v2

    .line 149
    .local v2, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isRestartOnNextWindowFocus(Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 151
    const/4 v0, 0x1

    .line 155
    :cond_4f
    invoke-virtual {p0, v1, v3}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 159
    iget-object v4, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v4, v1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    .line 160
    .local v3, "nextFocusIsServedView":Z
    :goto_58
    if-eqz v3, :cond_61

    invoke-interface {v2, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->hasActiveConnection(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_61
    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v2, v1, v4, v5, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V

    .line 166
    return-void

    .line 129
    .end local v0    # "forceFocus":Z
    .end local v1    # "viewForWindowFocus":Landroid/view/View;
    .end local v2    # "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .end local v3    # "nextFocusIsServedView":Z
    :cond_69
    :goto_69
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v1, :cond_9c

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostWindowFocus: it doesn\'t have focus., hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowAttribute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasImeFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_9c
    return-void
.end method

.method blacklist onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 97
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_17

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    .line 109
    :cond_b
    if-eqz p1, :cond_16

    .line 110
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 112
    :cond_16
    return-void

    .line 99
    :cond_17
    :goto_17
    sget-boolean v0, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v0, :cond_4c

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreWindowFocus: it doesn\'t have focus., hasWindowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasImeFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeFocusController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4c
    return-void
.end method

.method blacklist onProcessImeInputStage(Ljava/lang/Object;Landroid/view/InputEvent;Landroid/view/WindowManager$LayoutParams;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;)I
    .registers 8
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 309
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_24

    .line 312
    :cond_c
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 313
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 314
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1b

    .line 315
    return v1

    .line 317
    :cond_1b
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p2, p1, p4, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    return v1

    .line 310
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_24
    :goto_24
    return v1
.end method

.method blacklist onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/ImeFocusController;->updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v0

    .line 81
    .local v0, "hasImeFocus":Z
    if-eqz p1, :cond_27

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_27

    .line 84
    :cond_e
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-ne v0, v1, :cond_13

    .line 85
    return-void

    .line 87
    :cond_13
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 88
    if-eqz v0, :cond_26

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/view/ImeFocusController;->onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V

    .line 90
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Landroid/view/ImeFocusController;->onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V

    .line 93
    :cond_26
    return-void

    .line 82
    :cond_27
    :goto_27
    return-void
.end method

.method blacklist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 249
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 250
    return-void

    .line 252
    :cond_f
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, p1, :cond_16

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 255
    :cond_16
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v0, p1, :cond_1f

    .line 256
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 258
    :cond_1f
    return-void
.end method

.method blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 204
    const-string v0, "ImeFocusController"

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_96

    .line 213
    :cond_c
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    const-string/jumbo v2, "onViewFocusChanged return, view : "

    if-nez v1, :cond_4a

    .line 215
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v1, :cond_49

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not current root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_49
    return-void

    .line 222
    :cond_4a
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_61

    .line 241
    :cond_57
    if-eqz p2, :cond_5b

    .line 242
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 244
    :cond_5b
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 245
    return-void

    .line 224
    :cond_61
    :goto_61
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v1, :cond_95

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view.hasImeFocus() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view.hasWindowFocus() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_95
    return-void

    .line 206
    :cond_96
    :goto_96
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v1, :cond_b9

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChanged return, view is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    if-nez p1, :cond_ac

    const-string/jumbo v2, "null"

    goto :goto_ae

    :cond_ac
    const-string v2, "detached temporarily"

    :goto_ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_b9
    return-void
.end method

.method blacklist onWindowDismissed()V
    .registers 4

    .line 262
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 263
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 264
    return-void

    .line 266
    :cond_d
    iget-object v1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_20

    .line 268
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG_SEP:Z

    if-eqz v1, :cond_1d

    .line 269
    const-string v1, "ImeFocusController"

    const-string/jumbo v2, "windowDismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1d
    invoke-interface {v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 274
    :cond_20
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 276
    return-void
.end method

.method public blacklist setNextServedView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 354
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 355
    return-void
.end method

.method public blacklist setServedView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 350
    iput-object p1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 351
    return-void
.end method

.method blacklist updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 4
    .param p1, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "force"    # Z

    .line 116
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    .line 118
    .local v0, "hasImeFocus":Z
    if-eqz p2, :cond_a

    .line 119
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 121
    :cond_a
    return v0
.end method
