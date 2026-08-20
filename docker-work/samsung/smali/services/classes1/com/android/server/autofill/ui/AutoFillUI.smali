.class public final Lcom/android/server/autofill/ui/AutoFillUI;
.super Ljava/lang/Object;
.source "AutoFillUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AutofillUI"


# instance fields
.field public mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mContext:Landroid/content/Context;

.field public mContextForResources:Landroid/content/Context;

.field public mCreateFillUiRunnable:Ljava/lang/Runnable;

.field public mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

.field public mFillUi:Lcom/android/server/autofill/ui/FillUi;

.field public final mHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

.field public mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mUiModeMgr:Lcom/android/server/UiModeManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$3Awxx6tNaZaB9QZO-U7h36R68V0(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$destroyAll$11(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEDqa4tsOCQnTRUdqNAJKKvM9Jg(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideFillDialog$4(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-n54hnXUIh6ahPrM5XBEnwI2FI(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showError$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxXmGZj5SFR1rwFSed7Y8hSogfc(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideAll$10(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nct1uE7d5jGx_j4TZ1xTTofnI2I(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/metrics/LogMaker;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillDialog$8(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QEkZ0Vhvwd6S11ozZJM3zc7-1VE(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$filterFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$St7PFEWvDI0Pf7t00jswp2N1ddU(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$6(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYufD2fdghGeKy_F5CmF4-TONL0(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showSaveUi$7(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TeRTV8jUBeOLXAk4-OCB5meGuh4(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$onPendingSaveUi$9(ILandroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XaM0hy-2xIX8Jo0aqbwSl608Xvk(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$guPliExew6UIxr2VWgqPIAyMyvA(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$setCallback$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPmN962dKT_ZXNF52ELteIZqfaY(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideFillUi$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdestroySaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 112
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 114
    const-class v0, Lcom/android/server/UiModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/UiModeManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne v0, p1, :cond_a

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    :cond_a
    return-void
.end method

.method private synthetic lambda$destroyAll$11(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4

    .line 517
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method private synthetic lambda$filterFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_5

    return-void

    .line 192
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz p0, :cond_c

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/FillUi;->setFilterText(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$hideAll$10(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private synthetic lambda$hideFillDialog$4(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private synthetic lambda$hideFillUi$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method private synthetic lambda$onPendingSaveUi$9(ILandroid/os/IBinder;)V
    .registers 3

    .line 497
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz p0, :cond_8

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->onPendingUi(ILandroid/os/IBinder;)V

    goto :goto_24

    .line 500
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPendingSaveUi("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): no save ui"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillUI"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method private synthetic lambda$setCallback$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_18

    if-eqz v0, :cond_16

    .line 124
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->isSaveUiShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    goto :goto_16

    .line 128
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 131
    :cond_16
    :goto_16
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    :cond_18
    return-void
.end method

.method private synthetic lambda$showError$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_5

    return-void

    .line 162
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 164
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_18
    return-void
.end method

.method private synthetic lambda$showFillDialog$8(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/metrics/LogMaker;)V
    .registers 27

    move-object/from16 v6, p0

    .line 434
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v2, p1

    if-eq v2, v0, :cond_9

    return-void

    .line 437
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 438
    new-instance v15, Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v8, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v14, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 440
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v16

    new-instance v17, Lcom/android/server/autofill/ui/AutoFillUI$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V

    move-object v7, v15

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object v0, v14

    move-object/from16 v14, p7

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v7 .. v17}, Lcom/android/server/autofill/ui/DialogFillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/DialogFillUi$UiCallback;)V

    iput-object v1, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    return-void
.end method

.method private synthetic lambda$showFillUi$6(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .registers 27

    move-object/from16 v6, p0

    .line 233
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v3, p1

    if-eq v3, v0, :cond_9

    return-void

    .line 236
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 238
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 240
    new-instance v15, Lcom/android/server/autofill/ui/FillUi;

    iget-object v8, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    iget-object v12, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 244
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v16

    new-instance v17, Lcom/android/server/autofill/ui/AutoFillUI$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    move-object v7, v15

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object v0, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V

    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    return-void
.end method

.method private synthetic lambda$showSaveUi$7(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 358
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v1, v2, :cond_9

    return-void

    .line 361
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 362
    iput-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 364
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 366
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v13, Lcom/android/server/autofill/ui/AutoFillUI$2;

    move-object/from16 v5, p3

    move-object/from16 v3, p10

    invoke-direct {v13, v0, v3, v1, v5}, Lcom/android/server/autofill/ui/AutoFillUI$2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;)V

    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 409
    invoke-virtual {v1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v14

    move-object v3, v2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V

    iput-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    return-void
.end method


# virtual methods
.method public clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 6

    .line 517
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4

    .line 636
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 637
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 638
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public final destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V
    .registers 6

    .line 605
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    const-string v1, "AutofillUI"

    if-nez v0, :cond_10

    .line 609
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_f

    const-string p0, "destroySaveUiUiThread(): already destroyed"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    .line 613
    :cond_10
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySaveUiUiThread(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_28
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->destroy()V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 616
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eqz p1, :cond_5d

    if-eqz p2, :cond_5d

    .line 619
    :try_start_36
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_3f

    const-string p2, "destroySaveUiUiThread(): notifying client"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3f
    iget-object p2, p1, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    iget p1, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_47} :catch_48

    goto :goto_5d

    :catch_48
    move-exception p1

    .line 622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client to set save UI state to hidden: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_5d
    :goto_5d
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_74

    .line 627
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_6b

    const-string/jumbo p1, "start the pending fill UI request.."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_6b
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    :cond_74
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "Autofill UI"

    .line 529
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    .line 532
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Night mode: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    const-string v2, "    "

    if-eqz v1, :cond_2d

    .line 534
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsFillUi: true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/ui/FillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_36

    .line 537
    :cond_2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsFillUi: false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    :goto_36
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v1, :cond_49

    .line 540
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsSaveUi: true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/ui/SaveUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_52

    .line 543
    :cond_49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsSaveUi: false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    :goto_52
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-eqz v1, :cond_65

    .line 546
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showsFillDialog: true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/autofill/ui/DialogFillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6e

    .line 549
    :cond_65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "showsFillDialog: false"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method public filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getContextForResources(Landroid/content/Context;I)Landroid/content/Context;
    .registers 3

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    const-string p0, "display"

    .line 559
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-nez p0, :cond_e

    return-object p1

    .line 563
    :cond_e
    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_15

    return-object p1

    .line 569
    :cond_15
    invoke-virtual {p1, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 5

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 646
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 647
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_20

    const-string v1, "AutofillUI"

    const-string/jumbo v2, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    .line 648
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_20
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    :cond_23
    return-void
.end method

.method public hideFillDialog(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v1, :cond_10

    .line 598
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->destroy()V

    const/4 p1, 0x0

    .line 599
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    :cond_10
    return-void
.end method

.method public hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v1, :cond_10

    .line 576
    :cond_a
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->destroy(Z)V

    const/4 p1, 0x0

    .line 577
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    :cond_10
    return-void
.end method

.method public final hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 4

    .line 584
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2f

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hideSaveUiUiThread(): mSaveUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_2f
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p0, p1, :cond_3c

    .line 590
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p0

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFillDialogShowing()Z
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->isShowing()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public isSaveUiShowing()Z
    .registers 1

    .line 521
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->isShowing()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showError(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFillDialog(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V
    .registers 24

    .line 420
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showFillDialog for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillUI"

    .line 421
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_2a
    move-object/from16 v1, p2

    :goto_2c
    const/16 v0, 0x38e

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v2, p8

    move/from16 v3, p9

    .line 426
    invoke-static {v0, v10, v9, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38f

    const/4 v3, 0x0

    if-nez p3, :cond_41

    move v4, v3

    goto :goto_45

    .line 429
    :cond_41
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 428
    invoke-virtual {v0, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38d

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_5e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v11

    move-object v0, p0

    .line 433
    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    move-object v2, v13

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/metrics/LogMaker;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZI)V
    .registers 25

    move-object v10, p0

    .line 220
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v11, "AutofillUI"

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    if-nez p3, :cond_c

    move v0, v1

    goto :goto_10

    .line 221
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 222
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFillUi(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " chars"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_34
    move-object v5, p1

    :goto_35
    const/16 v0, 0x38e

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p9

    move/from16 v6, p10

    .line 225
    invoke-static {v0, v3, v2, v4, v6}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38f

    if-nez p3, :cond_49

    move v3, v1

    goto :goto_4d

    .line 228
    :cond_49
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38d

    .line 230
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5e

    goto :goto_66

    :cond_5e
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 232
    new-instance v12, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p8

    move/from16 v3, p11

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->isSaveUiShowing()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 323
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_91

    const-string/jumbo v0, "postpone fill UI request.."

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_91
    iput-object v12, v10, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    goto :goto_99

    .line 326
    :cond_94
    iget-object v0, v10, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_99
    return-void
.end method

.method public showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZI)V
    .registers 28

    move/from16 v12, p9

    .line 341
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_34

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveUi(update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_34
    move-object/from16 v9, p4

    .line 346
    :goto_36
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    move v0, v1

    goto :goto_44

    :cond_3f
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    array-length v0, v0

    :goto_44
    add-int/2addr v0, v1

    .line 347
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    if-nez v2, :cond_4c

    goto :goto_51

    :cond_4c
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v1, v1

    :goto_51
    add-int/2addr v0, v1

    const/16 v1, 0x394

    move-object/from16 v4, p8

    .line 349
    iget v2, v4, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v13, p10

    .line 350
    invoke-static {v1, v8, v7, v2, v13}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x395

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v11

    if-eqz v12, :cond_78

    const/16 v0, 0x613

    const/4 v1, 0x1

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_78
    move-object/from16 v1, p0

    .line 357
    iget-object v14, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda11;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p11

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
