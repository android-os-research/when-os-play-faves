.class public final Landroid/view/autofill/AutofillClientController;
.super Ljava/lang/Object;
.source "AutofillClientController.java"

# interfaces
.implements Landroid/view/autofill/AutofillManager$AutofillClient;
.implements Landroid/util/Dumpable;


# static fields
.field public static final blacklist AUTOFILL_RESET_NEEDED:Ljava/lang/String; = "@android:autofillResetNeeded"

.field public static final blacklist AUTO_FILL_AUTH_WHO_PREFIX:Ljava/lang/String; = "@android:autoFillAuth:"

.field public static final blacklist DEBUG:Z

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "AutofillManager"

.field public static final blacklist LAST_AUTOFILL_ID:Ljava/lang/String; = "android:lastAutofillId"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "autofill_client"

.field private static final blacklist TAG:Ljava/lang/String; = "AutofillClientController"


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private blacklist mAutoFillIgnoreFirstResumePause:Z

.field private blacklist mAutoFillResetNeeded:Z

.field private blacklist mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private blacklist mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

.field public blacklist mLastAutofillId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    const-string v0, "autofill_client"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 78
    iput-object p1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 79
    return-void
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    .line 82
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_10

    .line 83
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 85
    :cond_10
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    return-object v0
.end method


# virtual methods
.method public blacklist autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 13
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "authenticateInline"    # Z

    .line 484
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-string v2, "@android:autoFillAuth:"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 488
    goto :goto_27

    .line 486
    :catch_e
    move-exception v0

    .line 487
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillClientController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_27
    return-void
.end method

.method public blacklist autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 457
    .local v0, "rootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 461
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V

    .line 463
    :cond_9
    return-void
.end method

.method public blacklist autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "windowId"    # I

    .line 370
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 371
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "rootNum":I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 373
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v3

    if-ne v3, p2, :cond_2e

    .line 375
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 376
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2e

    .line 377
    return-object v3

    .line 372
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 381
    .end local v1    # "rootNum":I
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 387
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    .local v0, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "rootNum":I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 391
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2c

    .line 392
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 393
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2c

    .line 394
    return-object v3

    .line 388
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 398
    .end local v1    # "rootNum":I
    :cond_2f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
    .registers 9
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .line 403
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    .line 405
    .local v0, "views":[Landroid/view/View;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    .line 407
    .local v1, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v2, 0x0

    .local v2, "rootNum":I
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 408
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 410
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_3b

    .line 411
    array-length v4, p1

    .line 412
    .local v4, "viewCount":I
    const/4 v5, 0x0

    .local v5, "viewNum":I
    :goto_26
    if-ge v5, v4, :cond_3b

    .line 413
    aget-object v6, v0, v5

    if-nez v6, :cond_38

    .line 414
    aget-object v6, p1, v5

    .line 415
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v6

    .line 414
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v0, v5

    .line 412
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 407
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "viewCount":I
    .end local v5    # "viewNum":I
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 420
    .end local v2    # "rootNum":I
    :cond_3e
    return-object v0
.end method

.method public blacklist autofillClientGetActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
    .registers 3

    .line 324
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method public blacklist autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
    .registers 8
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .line 349
    array-length v0, p1

    .line 350
    .local v0, "autofillIdCount":I
    new-array v1, v0, [Z

    .line 351
    .local v1, "visible":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_28

    .line 352
    aget-object v3, p1, v2

    .line 353
    .local v3, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillClientController;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_25

    .line 355
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 356
    invoke-virtual {v4}, Landroid/view/View;->isVisibleToUser()Z

    move-result v5

    aput-boolean v5, v1, v2

    goto :goto_25

    .line 358
    :cond_1b
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->isVisibleToUserForAutofill(I)Z

    move-result v5

    aput-boolean v5, v1, v2

    .line 351
    .end local v3    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v4    # "view":Landroid/view/View;
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 362
    .end local v2    # "i":I
    :cond_28
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_48

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofillClientGetViewVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillClientController"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_48
    return-object v1
.end method

.method public blacklist autofillClientIsCompatibilityModeEnabled()Z
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientIsFillUiShowing()Z
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist autofillClientIsVisibleForAutofill()Z
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVisibleForAutofill()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientRequestHideFillUi()Z
    .registers 2

    .line 430
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_6

    .line 431
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_6
    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "anchorBounds"    # Landroid/graphics/Rect;
    .param p5, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 443
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_d

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "wasShowing":Z
    new-instance v1, Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {v1, p5}, Landroid/view/autofill/AutofillPopupWindow;-><init>(Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    goto :goto_11

    .line 447
    .end local v0    # "wasShowing":Z
    :cond_d
    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    .line 449
    .restart local v0    # "wasShowing":Z
    :goto_11
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V

    .line 451
    if-nez v0, :cond_28

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public blacklist autofillClientResetableStateAvailable()V
    .registers 2

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    .line 473
    return-void
.end method

.method public blacklist autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 477
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 293
    const-string v0, ""

    .line 294
    .local v0, "prefix":Ljava/lang/String;
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    .line 295
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    const-string v2, ""

    if-eqz v1, :cond_1f

    .line 296
    invoke-virtual {v1, v2, p1}, Landroid/view/autofill/AutofillManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 297
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Compat Mode: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27

    .line 300
    :cond_1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No AutofillManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    :goto_27
    return-void
.end method

.method public blacklist enableAutofillCompatibilityIfNeeded()V
    .registers 3

    .line 278
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 279
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 280
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_17

    .line 281
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->enableCompatibilityMode()V

    .line 284
    .end local v0    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_17
    return-void
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 288
    const-string v0, "AutofillManager"

    return-object v0
.end method

.method public blacklist getNextAutofillId()I
    .registers 3

    .line 311
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_c

    .line 312
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 315
    :cond_c
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 317
    return v0
.end method

.method public blacklist isDisablingEnterExitEventForAutofill()Z
    .registers 2

    .line 467
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist onActivityAttached(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .line 94
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Application;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 95
    return-void
.end method

.method public blacklist onActivityBackPressed(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 224
    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 227
    :cond_d
    return-void
.end method

.method public blacklist onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    .line 102
    const-string v0, "android:lastAutofillId"

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 103
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_1f

    .line 104
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onCreate(Landroid/os/Bundle;)V

    .line 106
    :cond_1f
    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_13

    .line 192
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onActivityFinishing()V

    .line 194
    :cond_13
    return-void
.end method

.method public blacklist onActivityFinish(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 213
    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 216
    :cond_d
    return-void
.end method

.method public blacklist onActivityPaused()V
    .registers 4

    .line 158
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_57

    .line 159
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    const-string v1, "AutofillClientController"

    if-nez v0, :cond_3a

    .line 160
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill notifyViewExited "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_24
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 163
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;)V

    .line 165
    .end local v0    # "focus":Landroid/view/View;
    :cond_39
    goto :goto_57

    .line 167
    :cond_3a
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill got first pause "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    .line 171
    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist onActivityPerformResume(Z)V
    .registers 4
    .param p1, "followedByPause"    # Z

    .line 143
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_24

    .line 147
    iput-boolean p1, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    .line 148
    if-eqz p1, :cond_24

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofill will ignore first pause when relaunching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillClientController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_24
    return-void
.end method

.method public blacklist onActivityResumed()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->enableAutofillCompatibilityIfNeeded()V

    .line 122
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_20

    .line 123
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_20

    .line 124
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 133
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 137
    .end local v0    # "focus":Landroid/view/View;
    :cond_20
    return-void
.end method

.method public blacklist onActivityStarted()V
    .registers 2

    .line 112
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_b

    .line 113
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onVisibleForAutofill()V

    .line 115
    :cond_b
    return-void
.end method

.method public blacklist onActivityStopped(Landroid/content/Intent;Z)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "changingConfigurations"    # Z

    .line 177
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_e

    .line 179
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->onInvisibleForAutofill(Z)V

    goto :goto_23

    .line 180
    :cond_e
    if-eqz p1, :cond_23

    .line 181
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 182
    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 183
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 185
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist onDispatchActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 233
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    move-object v0, p3

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 234
    .local v0, "resultData":Landroid/content/Intent;
    :goto_6
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 235
    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 234
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/autofill/AutofillManager;->onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 200
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const-string v1, "android:lastAutofillId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_18

    .line 202
    const/4 v0, 0x1

    const-string v1, "@android:autofillResetNeeded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    :cond_18
    return-void
.end method

.method public blacklist onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "startIntent"    # Landroid/content/Intent;
    .param p2, "cachedIntent"    # Landroid/content/Intent;

    .line 242
    if-eqz p2, :cond_3e

    .line 243
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 244
    const-string v1, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 245
    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 246
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 248
    nop

    .line 249
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "token":Landroid/os/IBinder;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_3e
    return-void
.end method

.method public blacklist restoreAutofillSaveUi(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 264
    nop

    .line 265
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 267
    .local v1, "token":Landroid/os/IBinder;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 268
    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/autofill/AutofillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 271
    return-void
.end method
