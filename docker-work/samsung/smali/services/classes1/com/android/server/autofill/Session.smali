.class public final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Session$SaveResult;,
        Lcom/android/server/autofill/Session$AssistDataReceiverImpl;,
        Lcom/android/server/autofill/Session$SessionFlags;,
        Lcom/android/server/autofill/Session$SessionState;
    }
.end annotation


# static fields
.field public static final ACTION_DELAYED_FILL:Ljava/lang/String; = "android.service.autofill.action.DELAYED_FILL"

.field public static final AUGMENTED_AUTOFILL_REQUEST_ID:I = 0x1

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_FINISHED:I = 0x2

.field public static final STATE_REMOVED:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AutofillSession"

.field public static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field public mActivityToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field public mAugmentedAutofillDestroyer:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAugmentedAutofillableIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field public mAugmentedRequestsLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field public mClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mClientState:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mClientVulture:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mContexts:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentViewId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDelayedFillBroadcastReceiverRegistered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDisplayId:I

.field public final mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasCallback:Z

.field public final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field public mLastInlineSuggestionsRequest:Landroid/util/Pair;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field public final mRequestLogs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field public mResponses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field public mSaveOnAllViewsInvisible:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSelectedDatasetIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field public final mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSessionState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStartTime:J

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mUiShownTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mViewStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWtfHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$1ub_6tTUidAFQu-nf_0xBwjn5_0(Lcom/android/server/autofill/Session;ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$5(ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3GQmtIdxpVPfLohRHhojBq-Mjms(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/autofill/Session;->lambda$logFieldClassificationScore$2(III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$48lf7EoyN57sB4ZuPC9AyWBh5FY(Lcom/android/server/autofill/Session;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->handleLogContextCommitted(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6rEBrMV-oCtdOaVAXVRHLmI-g8E(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$92rc8p5ur7GxIKq_CcXalnEwHwU(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-zKv-BveSCb-AWDeFqK5sfZNUU(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$3(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IUh3HGytfl9SGQTd7DkhlqSCXKk(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->lambda$setClientLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$L2m_Kn7_d5H9dLpzV4Mx9gVB_EE(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ue5kx2pknsYYXqMSwu3z_27gYqA(Lcom/android/server/autofill/Session;Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->lambda$inlineSuggestionsRequestCacheDecorator$7(Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aFIOBhFnhAYcwA7zhhQoCgxcuRk(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->lambda$requestNewFillResponseLocked$0(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvpKlPL1gF-ZEFRW7HO0XSOcW2Y(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public static synthetic $r8$lambda$hRvuLDBwox1kdWwhCMJDCY69kqs(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$6(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ob2VRQBpTmucgItVbNSRhctaxxg(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientState(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompatMode(Lcom/android/server/autofill/Session;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInlineSessionController(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillInlineSessionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionFlags(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$SessionFlags;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewStates(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmContexts(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUrlBar(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelCurrentRequestLocked(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePreviousSessionLocked(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiShown(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1019
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v9, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v9}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v9, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x0

    .line 184
    iput v1, v0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 246
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 340
    new-instance v2, Landroid/util/SparseArray;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 372
    iput v1, v0, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 381
    new-instance v2, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    const/4 v11, 0x0

    invoke-direct {v2, v0, v11}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$AssistDataReceiverImpl-IA;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 385
    new-instance v2, Lcom/android/server/autofill/Session$1;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-gez v8, :cond_42

    const-string v2, "Non-positive sessionId: %s"

    new-array v3, v10, [Ljava/lang/Object;

    .line 1021
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v11, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    :cond_42
    iput v8, v0, Lcom/android/server/autofill/Session;->id:I

    move/from16 v12, p20

    .line 1024
    iput v12, v0, Lcom/android/server/autofill/Session;->mFlags:I

    move/from16 v13, p5

    .line 1025
    iput v13, v0, Lcom/android/server/autofill/Session;->userId:I

    move/from16 v1, p8

    .line 1026
    iput v1, v0, Lcom/android/server/autofill/Session;->taskId:I

    move/from16 v1, p9

    .line 1027
    iput v1, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 1028
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/autofill/Session;->mStartTime:J

    move-object/from16 v14, p1

    .line 1029
    iput-object v14, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1030
    iput-object v7, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    move-object/from16 v1, p2

    .line 1031
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    move-object/from16 v15, p4

    .line 1032
    iput-object v15, v0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    if-nez p15, :cond_6c

    move-object v1, v11

    goto :goto_7d

    .line 1034
    :cond_6c
    new-instance v16, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p15

    move/from16 v4, p5

    move-object/from16 v5, p0

    move/from16 v6, p18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    :goto_7d
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, p10

    .line 1036
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    move/from16 v1, p12

    .line 1037
    iput-boolean v1, v0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    move-object/from16 v1, p13

    .line 1038
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    move-object/from16 v1, p14

    .line 1039
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    move-object/from16 v1, p3

    .line 1040
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    move-object/from16 v1, p16

    .line 1041
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move/from16 v2, p17

    .line 1042
    iput-boolean v2, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1043
    iput v10, v0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 1044
    invoke-static/range {p7 .. p7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->forSessionId(I)Lcom/android/server/autofill/PresentationStatsEventLogger;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1045
    monitor-enter p6

    .line 1046
    :try_start_a4
    new-instance v2, Lcom/android/server/autofill/Session$SessionFlags;

    invoke-direct {v2, v0, v11}, Lcom/android/server/autofill/Session$SessionFlags;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$SessionFlags-IA;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    move/from16 v3, p19

    .line 1047
    invoke-static {v2, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabledLocked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    move-object/from16 v2, p11

    .line 1049
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1050
    monitor-exit p6
    :try_end_bd
    .catchall {:try_start_a4 .. :try_end_bd} :catchall_eb

    .line 1058
    new-instance v2, Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v3, Lcom/android/server/autofill/Session$2;

    invoke-direct {v3, v0}, Lcom/android/server/autofill/Session$2;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 p7, v2

    move-object/from16 p8, p21

    move/from16 p9, p5

    move-object/from16 p10, p16

    move-object/from16 p11, p4

    move-object/from16 p12, p6

    move-object/from16 p13, v3

    invoke-direct/range {p7 .. p13}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    const/16 v1, 0x38a

    .line 1072
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x5ac

    .line 1073
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1072
    invoke-virtual {v9, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :catchall_eb
    move-exception v0

    .line 1050
    :try_start_ec
    monitor-exit p6
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method public static actionAsString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_24

    const/4 v0, 0x5

    if-eq p0, v0, :cond_21

    .line 4673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p0, "RESPONSE_EXPIRED"

    return-object p0

    :cond_24
    const-string p0, "VALUE_CHANGED"

    return-object p0

    :cond_27
    const-string p0, "VIEW_EXITED"

    return-object p0

    :cond_2a
    const-string p0, "VIEW_ENTERED"

    return-object p0

    :cond_2d
    const-string p0, "START_SESSION"

    return-object p0
.end method

.method public static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 4

    .line 4346
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result p1

    if-eqz p1, :cond_16

    const-string p3, ", "

    .line 4348
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :cond_16
    return-void
.end method

.method public static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 7

    const-string v0, "CAT="

    .line 4303
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", TYPE="

    .line 4304
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_32

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_26

    .line 4310
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    :cond_26
    const-string v1, "FAILURE"

    .line 4308
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    :cond_2c
    const-string v1, "SUCCESS"

    .line 4307
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    :cond_32
    const-string v1, "CLOSE"

    .line 4309
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_37
    const/16 v1, 0x28

    .line 4312
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string v3, ", PKG="

    .line 4313
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ", SERVICE="

    .line 4314
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x38c

    .line 4315
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 4314
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ", ORDINAL="

    .line 4316
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x5ae

    .line 4317
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 4316
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x5ac

    const-string v4, "FLAGS"

    .line 4318
    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    const/16 v3, 0x38d

    const-string v4, "NUM_DATASETS"

    .line 4319
    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    const/16 v3, 0x479

    const-string v4, "UI_LATENCY"

    .line 4320
    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    const/16 v3, 0x5ad

    .line 4322
    invoke-static {p1, v3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v3

    if-eqz v3, :cond_b9

    const-string v4, ", AUTH_STATUS="

    .line 4324
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x390

    if-eq v3, v4, :cond_ab

    packed-switch v3, :pswitch_data_c8

    .line 4334
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_99
    const-string v2, "INVALID_AUTHENTICATION"

    .line 4331
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_9f
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    .line 4333
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_a5
    const-string v2, "DATASET_AUTHENTICATED"

    .line 4329
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    :cond_ab
    const-string v2, "AUTHENTICATED"

    .line 4327
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4336
    :goto_b0
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_b9
    const/16 v0, 0x4f7

    const-string v1, "FC_IDS"

    .line 4338
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    const/16 v0, 0x586

    const-string v1, "COMPAT_MODE"

    .line 4340
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    return-void

    :pswitch_data_c8
    .packed-switch 0x466
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
    .end packed-switch
.end method

.method public static isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    .line 1739
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1741
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1744
    :cond_d
    invoke-static {p0}, Lcom/android/server/autofill/Session;->isPinnedDataset(Landroid/service/autofill/Dataset;)Z

    move-result p0

    return p0
.end method

.method public static isPinnedDataset(Landroid/service/autofill/Dataset;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 1756
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1757
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_12
    if-ge v2, v1, :cond_25

    .line 1759
    invoke-virtual {p0, v2}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 1760
    invoke-virtual {v3}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_25
    return v0
.end method

.method private synthetic lambda$inlineSuggestionsRequestCacheDecorator$7(Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 4

    .line 4084
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4085
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4086
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 4087
    monitor-exit p1

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private synthetic lambda$logFieldClassificationScore$2(III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    const-string v8, "AutofillSession"

    if-nez v6, :cond_21

    .line 2207
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "setFieldClassificationScore(): no results"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_1d
    invoke-virtual {v1, v7, v7, v0, v2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void

    :cond_21
    const-string/jumbo v9, "scores"

    .line 2211
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    if-nez v9, :cond_41

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No field classification score on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    move/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_45
    if-ge v11, v10, :cond_16f

    .line 2220
    :try_start_47
    aget-object v12, p4, v11
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_47 .. :try_end_49} :catch_151

    move-object v14, v7

    const/4 v13, 0x0

    .line 2225
    :goto_4b
    :try_start_4b
    array-length v15, v3

    if-ge v13, v15, :cond_ee

    .line 2226
    aget-object v15, p6, v13

    .line 2227
    iget-object v7, v9, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v7, v7, v11

    aget v7, v7, v13
    :try_end_56
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4b .. :try_end_56} :catch_14e

    const/16 v16, 0x0

    cmpl-float v16, v7, v16

    const-string v6, " and id "

    if-lez v16, :cond_c6

    if-nez v14, :cond_66

    .line 2230
    :try_start_60
    new-instance v14, Landroid/util/ArrayMap;

    array-length v10, v3

    invoke-direct {v14, v10}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2232
    :cond_66
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    if-eqz v10, :cond_98

    .line 2233
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-lez v16, :cond_98

    .line 2234
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_e5

    .line 2235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping score "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " because it\'s less than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 2240
    :cond_98
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_be

    .line 2241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding score "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_be
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 2245
    :cond_c6
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_e5

    .line 2246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skipping score 0 at index "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    :goto_e5
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p3

    move-object/from16 v3, p5

    const/4 v7, 0x0

    goto/16 :goto_4b

    :cond_ee
    if-nez v14, :cond_10b

    .line 2250
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_109

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no score for autofillId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    move v12, v13

    goto :goto_142

    .line 2255
    :cond_10b
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_114
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_60 .. :try_end_114} :catch_14e

    const/4 v6, 0x0

    .line 2256
    :goto_115
    :try_start_115
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_136

    .line 2257
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2258
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 2259
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v7, v10}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_115

    .line 2261
    :cond_136
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    new-instance v7, Landroid/service/autofill/FieldClassification;

    invoke-direct {v7, v3}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_141
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_115 .. :try_end_141} :catch_14b

    move v12, v6

    :goto_142
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, p3

    move-object/from16 v3, p5

    const/4 v7, 0x0

    goto/16 :goto_45

    :catch_14b
    move-exception v0

    move v12, v6

    goto :goto_152

    :catch_14e
    move-exception v0

    move v12, v13

    goto :goto_152

    :catch_151
    move-exception v0

    :goto_152
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 2265
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v3, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2269
    :cond_16f
    invoke-virtual {v1, v4, v5, v0, v2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method private synthetic lambda$requestNewFillResponseLocked$0(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V
    .registers 7

    .line 971
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 973
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/Session;->inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;

    move-result-object p0

    .line 972
    invoke-virtual {v1, p1, p0, p4}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 976
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$setClientLocked$1()V
    .registers 5

    .line 1125
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AutofillSession"

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling death of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when saving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1129
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_40

    .line 1131
    :cond_38
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1133
    :goto_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private synthetic lambda$triggerAugmentedAutofillLocked$3(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .registers 3

    .line 3808
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3809
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 3810
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private synthetic lambda$triggerAugmentedAutofillLocked$4()V
    .registers 3

    .line 3822
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3823
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 3826
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3827
    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    .line 3826
    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3828
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private synthetic lambda$triggerAugmentedAutofillLocked$5(ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 29

    move-object/from16 v0, p0

    .line 3814
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3815
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p7, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 3816
    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 3815
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 3817
    iget v9, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v11, v0, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v13, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 3819
    invoke-static/range {p3 .. p3}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v14

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session;)V

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3829
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v19

    iget v0, v0, Lcom/android/server/autofill/Session;->userId:I

    move-object/from16 v8, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    move-object/from16 v17, p6

    move-object/from16 v18, v1

    move/from16 v20, v0

    .line 3817
    invoke-virtual/range {v8 .. v20}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    .line 3830
    monitor-exit v7

    return-void

    :catchall_49
    move-exception v0

    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method private synthetic lambda$triggerAugmentedAutofillLocked$6(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 5

    .line 3852
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3853
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 3856
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static sessionStateAsString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 4688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_SESSION_STATE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "STATE_REMOVED"

    return-object p0

    :cond_20
    const-string p0, "STATE_FINISHED"

    return-object p0

    :cond_23
    const-string p0, "STATE_ACTIVE"

    return-object p0

    :cond_26
    const-string p0, "STATE_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public final addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4624
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/metrics/LogMaker;

    if-nez p0, :cond_29

    .line 4626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no log for id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4630
    :cond_29
    invoke-virtual {p0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-void
.end method

.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V
    .registers 13

    .line 1427
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    const-string v0, "AutofillSession"

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; intentSender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    const-string p1, "AutofillSession"

    .line 1434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit v0

    return-void

    .line 1438
    :cond_50
    invoke-virtual {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 1441
    monitor-exit v0

    return-void

    .line 1443
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_82

    .line 1445
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p4, v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 1447
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result p1

    .line 1448
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>()V

    .line 1450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p0

    move-object v4, p3

    .line 1448
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_82
    move-exception p0

    .line 1443
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public autoFill(IILandroid/service/autofill/Dataset;ZI)V
    .registers 9

    .line 4019
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    const-string v0, "AutofillSession"

    .line 4020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFill(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; dataset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4024
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    const-string p1, "AutofillSession"

    .line 4025
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    monitor-exit v0

    return-void

    .line 4030
    :cond_50
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_73

    if-eqz p4, :cond_65

    .line 4032
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, p2, p4, v1, p5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 4034
    :cond_65
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz p1, :cond_6e

    .line 4035
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p2, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 4037
    :cond_6e
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 4038
    monitor-exit v0

    return-void

    .line 4042
    :cond_73
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object p5

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p4, p5, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 p4, 0x0

    const/16 p5, 0x40

    const/4 v1, 0x0

    .line 4043
    invoke-virtual {p0, p4, p3, p5, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 4044
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p4

    if-nez p4, :cond_94

    .line 4046
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 4047
    monitor-exit v0

    return-void

    .line 4049
    :cond_94
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result p1

    .line 4051
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 4054
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_2d .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 16

    .line 4353
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4354
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    const-string p1, "AutofillSession"

    .line 4355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_11a

    return-void

    .line 4361
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_50

    .line 4366
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    move v6, v4

    goto :goto_51

    :cond_50
    move v6, v5

    :goto_51
    move v7, v5

    move v8, v7

    :goto_53
    if-ge v7, v1, :cond_b3

    .line 4368
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_60

    goto :goto_b0

    .line 4371
    :cond_60
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 4372
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4373
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4374
    iget-object v10, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/ViewState;

    if-eqz v10, :cond_b0

    .line 4376
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v11

    const/16 v12, 0x40

    and-int/2addr v11, v12

    if-eqz v11, :cond_b0

    .line 4377
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_ac

    const-string v8, "AutofillSession"

    .line 4378
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autofillApp(): view "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " waiting auth"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    :cond_ac
    invoke-virtual {v10, v12}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    move v8, v4

    :cond_b0
    :goto_b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 4384
    :cond_b3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_118

    if-eqz v8, :cond_c0

    .line 4386
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4388
    :cond_c0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_da

    const-string v1, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    :cond_da
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v4, v2, v3, v6}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 4391
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fb

    .line 4392
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v1, :cond_f2

    .line 4393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 4395
    :cond_f2
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 4397
    invoke-virtual {p0, v1, p1, v2, v5}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_100} :catch_101
    .catchall {:try_start_26 .. :try_end_100} :catchall_11a

    goto :goto_118

    :catch_101
    move-exception p0

    :try_start_102
    const-string p1, "AutofillSession"

    .line 4400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error autofilling activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    :cond_118
    :goto_118
    monitor-exit v0

    return-void

    :catchall_11a
    move-exception p0

    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_102 .. :try_end_11c} :catchall_11a

    throw p0
.end method

.method public callSaveLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2742
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_22

    .line 2743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2747
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v2, 0x1

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2748
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    .line 2749
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    .line 2748
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2753
    :cond_3d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSaveLocked("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_61
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_6b

    const-string p0, "callSaveLocked(): no contexts"

    .line 2756
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2760
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2763
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 2765
    invoke-virtual {p0, v2}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2767
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2769
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    return-void
.end method

.method public final cancelAugmentedAutofillLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3870
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3871
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    const-string v1, "AutofillSession"

    if-nez v0, :cond_10

    const-string p0, "cancelAugmentedAutofillLocked(): no service for user"

    .line 3873
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3876
    :cond_10
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAugmentedAutofillLocked() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 871
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    .line 872
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    .line 871
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 875
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_5f

    .line 878
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v2, :cond_5f

    .line 879
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2c
    if-ltz v2, :cond_5f

    .line 883
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v1

    if-ne v1, v0, :cond_5c

    .line 884
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCurrentRequest(): id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_56
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5f

    :cond_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_5f
    :goto_5f
    return-void
.end method

.method public cancelSave()V
    .registers 5

    .line 1486
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1489
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2c

    const-string v1, "AutofillSession"

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    monitor-exit v0

    return-void

    .line 1494
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3c

    .line 1495
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_3c
    move-exception p0

    .line 1494
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public cancelSession()V
    .registers 2

    .line 1567
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1569
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final clearPendingIntentLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "AutofillSession"

    const-string v1, "clearPendingIntentLocked"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_c

    return-void

    .line 690
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 692
    :try_start_10
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    const/4 v2, 0x0

    .line 693
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 695
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw p0
.end method

.method public final createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4061
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4063
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    if-nez v1, :cond_21

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4067
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v0, p2, p1

    const/4 p1, 0x0

    const-string v0, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    .line 4066
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 4070
    :cond_21
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    if-eqz v2, :cond_3a

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 4071
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3a

    .line 4072
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    const-string p1, "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4075
    :cond_3a
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p0

    const-string p1, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.view.autofill.extra.CLIENT_STATE"

    .line 4076
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4000
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    if-eqz v0, :cond_e

    .line 4002
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_41

    .line 4004
    :cond_e
    new-instance v0, Lcom/android/server/autofill/ViewState;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 4005
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_35

    .line 4006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding autofillable view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 4009
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_48

    .line 4012
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    :cond_48
    return-object v0
.end method

.method public final createPendingIntent(I)Landroid/app/PendingIntent;
    .registers 6

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPendingIntent for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 671
    :try_start_1a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    .line 672
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 673
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    const/high16 v3, 0x52000000

    invoke-static {v2, p0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_3b

    .line 679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    throw p0
.end method

.method public destroyAugmentedAutofillWindowsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4522
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 4523
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 4524
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    :cond_a
    return-void
.end method

.method public destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4425
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 4429
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->clearPendingIntentLocked()V

    .line 4430
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 4432
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 4433
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 4434
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4435
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_25

    .line 4436
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->destroyLocked(Landroid/view/autofill/AutofillId;)V

    .line 4438
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 4439
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 4441
    iget v1, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 4444
    :cond_34
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 4447
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "destroyLocked(): logging "

    const-string v3, "AutofillSession"

    const/4 v4, 0x0

    if-lez v0, :cond_71

    .line 4449
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_5e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    move v5, v4

    :goto_5f
    if-ge v5, v0, :cond_71

    .line 4451
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 4452
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 4456
    :cond_71
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_77

    move v5, v4

    goto :goto_7b

    .line 4457
    :cond_77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_7b
    if-lez v5, :cond_aa

    .line 4459
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_98

    .line 4460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " augmented requests"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    if-ge v4, v5, :cond_aa

    .line 4463
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/metrics/LogMaker;

    .line 4464
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    :cond_aa
    const/16 v1, 0x397

    .line 4468
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v3, 0x5af

    .line 4469
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-lez v5, :cond_c5

    const/16 v1, 0x65f

    .line 4472
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4471
    invoke-virtual {v0, v1, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4474
    :cond_c5
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_d6

    const/16 v1, 0x6b8

    .line 4475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4477
    :cond_d6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4479
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6

    .line 1529
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1530
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    const-string p0, "AutofillSession"

    .line 1531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    monitor-exit v0

    return-void

    .line 1535
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_64

    if-eqz v1, :cond_3d

    .line 1537
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_64

    goto :goto_62

    :catch_34
    move-exception p0

    :try_start_35
    const-string p1, "AutofillSession"

    const-string p2, "Error requesting to dispatch unhandled key"

    .line 1539
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :cond_3d
    const-string p2, "AutofillSession"

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not dispatch unhandled key on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it is not the current view ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") anymore"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_35 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 4

    .line 1644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_d

    .line 1645
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1646
    monitor-exit v0

    goto :goto_15

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception p0

    const-string p1, "AutofillSession"

    const-string p2, "Error launching auth intent"

    .line 1648
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    invoke-static {v1}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4212
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_9a

    .line 4213
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3

    .line 4215
    :cond_9a
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4216
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4218
    :goto_a3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_b7
    const/16 v5, 0x23

    if-ge v3, v1, :cond_e8

    .line 4221
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 4222
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    .line 4223
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": req="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ", log="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v7}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 4226
    :cond_e8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResponses: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4227
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v3, "null"

    if-nez v1, :cond_fc

    .line 4228
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_126

    .line 4230
    :cond_fc
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    move v1, v2

    .line 4231
    :goto_104
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_126

    .line 4232
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x20

    .line 4233
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    .line 4236
    :cond_126
    :goto_126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentViewId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDestroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mShowingSaveUi: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4239
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingSaveUi: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4240
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mViewStates size: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    move v5, v2

    :goto_17b
    if-ge v5, v1, :cond_196

    .line 4243
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4244
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17b

    .line 4247
    :cond_196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mContexts: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4248
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_1cb

    .line 4249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1a8
    if-ge v3, v1, :cond_1ce

    .line 4251
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillContext;

    .line 4253
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4254
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_1c8

    const-string v6, "AssistStructure dumped at logcat)"

    .line 4255
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v5}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    :cond_1c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a8

    .line 4262
    :cond_1cb
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    :cond_1ce
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4266
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_1f7

    .line 4267
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mClientState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " bytes"

    .line 4268
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4270
    :cond_1f7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCompatMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4271
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUrlBar: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4272
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v0, :cond_216

    .line 4273
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_241

    :cond_216
    const-string/jumbo v0, "id="

    .line 4275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " domain="

    .line 4276
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " text="

    .line 4277
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 4279
    :goto_241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectedDatasetIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4282
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 4283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "For Augmented Autofill Only"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4285
    :cond_26d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_27a

    .line 4286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4288
    :cond_27a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v0, :cond_290

    .line 4289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "number augmented requests: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4290
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4293
    :cond_290
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a2

    .line 4294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4295
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4297
    :cond_2a2
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz p0, :cond_2a9

    .line 4298
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2a9
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;I)V
    .registers 13

    .line 1456
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    const-string p1, "AutofillSession"

    .line 1458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#fill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    monitor-exit v0

    return-void

    .line 1462
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_46

    .line 1463
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;-><init>()V

    .line 1465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    .line 1463
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_46
    move-exception p0

    .line 1462
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p1

    .line 831
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_6b

    .line 833
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 835
    aget-object v3, p1, v1

    if-nez v3, :cond_3a

    .line 837
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_68

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 844
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 845
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 846
    new-instance v6, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v6}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    if-eqz v5, :cond_51

    .line 849
    invoke-virtual {v5, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 850
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 853
    :cond_51
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v5, :cond_65

    .line 855
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v2, :cond_65

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_65

    .line 858
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 861
    :cond_65
    invoke-virtual {v3, v6}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_6b
    return-void
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 6

    .line 739
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 742
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 743
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 746
    :cond_1a
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 749
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result p1

    .line 750
    aget-object p0, p0, p1

    if-eqz p0, :cond_32

    .line 751
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_32
    monitor-exit v0

    return-object v2

    :cond_34
    const-string p0, "AutofillSession"

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_4a
    monitor-exit v0

    return-object v2

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 3

    .line 763
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 765
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 5

    .line 803
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const-string v1, "AutofillSession"

    if-nez v0, :cond_26

    .line 805
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findValueLocked(): no view state for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x0

    return-object p0

    .line 808
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-nez v0, :cond_48

    .line 810
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): no current value for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_44
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :cond_48
    return-object v0
.end method

.method public final findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 777
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    .line 782
    :cond_13
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 784
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_41

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): looking on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previous sessions for autofillId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v1, 0x0

    .line 788
    :goto_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 789
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 791
    invoke-virtual {v2, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 793
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_64
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceRemoveFromServiceIfForAugmentedOnlyLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4493
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    .line 4494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRemoveFromServiceIfForAugmentedOnlyLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-nez v0, :cond_33

    return-void

    .line 4499
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    return-void
.end method

.method public forceRemoveFromServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4488
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    return-void
.end method

.method public forceRemoveFromServiceLocked(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4504
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveFromServiceLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    const/4 v2, 0x0

    .line 4507
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 4508
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 4509
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    if-nez v0, :cond_3c

    .line 4512
    :try_start_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception p1

    const-string v0, "Error notifying client to finish session"

    .line 4514
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4517
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    return-void
.end method

.method public final getActivityDisplayId(Landroid/os/IBinder;)I
    .registers 4

    .line 1080
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_13

    :catch_9
    move-exception p0

    const/4 p1, 0x0

    const-string v0, "AutofillSession"

    const-string v1, "Error in getActivityDisplayId"

    .line 1083
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, p1

    :goto_13
    return p0
.end method

.method public getActivityTokenLocked()Landroid/os/IBinder;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1096
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2665
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 2667
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 2668
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 2670
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 2671
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .registers 2

    .line 3528
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3529
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3530
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1402
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1f

    .line 1404
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 1406
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1c

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    return-object v1
.end method

.method public final getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 724
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1a

    .line 726
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v1
.end method

.method public final getLastResponseIndexLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4592
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v1, -0x1

    if-eqz v0, :cond_21

    .line 4593
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_c
    if-ge v3, v0, :cond_21

    .line 4595
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v2, :cond_1e

    .line 4597
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move v2, v1

    move v1, v3

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_21
    return v1
.end method

.method public final getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1855
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1856
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v1

    .line 1858
    :goto_19
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v2, "AutofillSession"

    if-nez v0, :cond_36

    if-eqz p1, :cond_35

    .line 1859
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no contexts"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-object v1

    .line 1862
    :cond_36
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_55

    .line 1865
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_54

    if-eqz p1, :cond_54

    .line 1866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no responses on session"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return-object v1

    .line 1871
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v0

    const-string v3, ", mViewStates="

    if-gez v0, :cond_81

    if-eqz p1, :cond_80

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": did not get last response. mResponses="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    return-object v1

    .line 1880
    :cond_81
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillResponse;

    .line 1881
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_ba

    if-eqz p1, :cond_ba

    .line 1882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mResponses="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContexts="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return-object v0
.end method

.method public final getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ")",
            "Landroid/view/autofill/AutofillValue;"
        }
    .end annotation

    if-eqz p1, :cond_54

    if-nez p3, :cond_5

    goto :goto_54

    .line 2607
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-nez p0, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    .line 2608
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_53

    .line 2610
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InternalSanitizer;

    if-nez p1, :cond_20

    return-object p3

    .line 2615
    :cond_20
    invoke-virtual {p1, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 2616
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4e

    .line 2617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") sanitized to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    if-eqz p0, :cond_53

    .line 2620
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    :cond_53
    return-object v0

    :cond_54
    :goto_54
    return-object p3
.end method

.method public getSaveInfoFlagsLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1897
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 1898
    :cond_8
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result p0

    :goto_c
    return p0
.end method

.method public final getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1891
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_c

    .line 1892
    :cond_8
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final getServiceIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3458
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3459
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 3460
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 3

    .line 4406
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4408
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 4409
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2640
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_61

    .line 2642
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 2643
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 2646
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2647
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_55

    .line 2648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValueFromContexts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-eqz v1, :cond_5e

    .line 2651
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    return-object v1

    :cond_5e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleLogContextCommitted(II)V
    .registers 7

    .line 1927
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "logContextCommited(%s)"

    .line 1928
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1929
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4d

    if-nez v1, :cond_16

    const-string p0, "AutofillSession"

    const-string/jumbo p1, "handleLogContextCommitted(): last response is null"

    .line 1932
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1938
    :cond_16
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1939
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    if-nez v0, :cond_27

    move-object v1, v2

    goto :goto_3b

    :cond_27
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 1944
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    move-object v1, v3

    goto :goto_3b

    :cond_32
    if-eqz v1, :cond_35

    goto :goto_3b

    .line 1948
    :cond_35
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    .line 1951
    :goto_3b
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v0

    if-eqz v1, :cond_49

    if-eqz v0, :cond_49

    .line 1955
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V

    goto :goto_4c

    .line 1958
    :cond_49
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :goto_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 1929
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3142
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 3144
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3145
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    :cond_f
    return-void
.end method

.method public final inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;I)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 4083
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/Session;Ljava/util/function/Consumer;I)V

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 3522
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3523
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3524
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isFillDialogUiEnabled()Z
    .registers 2

    .line 3411
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3412
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3413
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3155
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 3158
    :cond_9
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isRequestSupportFillDialog(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4573
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final isSaveUiPendingLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4581
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isSaveUiShowingLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2631
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p0

    return p0
.end method

.method public final isViewFocusedLocked(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x10

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aug:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " a="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 4639
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " f="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " s="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " w="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " i="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4644
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final logAuthenticationStatusLocked(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x5ad

    .line 4618
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    return-void
.end method

.method public logContextCommitted()V
    .registers 4

    .line 1906
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;-><init>()V

    const/4 v2, 0x0

    .line 1907
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1906
    invoke-static {v1, p0, v2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logContextCommitted(II)V
    .registers 5

    .line 1920
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;-><init>()V

    .line 1921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1920
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;II)V"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1969
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v1, "logContextCommited(%s)"

    .line 1977
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    .line 1980
    :cond_c
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1981
    invoke-static/range {p4 .. p4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getNoPresentationEventReason(I)I

    move-result v3

    .line 1980
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1982
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1984
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const-string v3, "AutofillSession"

    if-nez v2, :cond_3e

    .line 1986
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    .line 1996
    :cond_3e
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_47
    const-string v8, "adding ignored dataset "

    const-string/jumbo v9, "logContextCommitted() skipping idless dataset "

    const-string/jumbo v10, "logContextCommitted() no datasets at "

    if-ge v5, v1, :cond_db

    .line 1998
    iget-object v12, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/autofill/FillResponse;

    .line 1999
    invoke-virtual {v12}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_c1

    .line 2000
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_66

    goto :goto_c1

    :cond_66
    const/4 v10, 0x0

    .line 2003
    :goto_67
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_d7

    .line 2004
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/autofill/Dataset;

    .line 2005
    invoke-virtual {v13}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_90

    .line 2007
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_be

    .line 2008
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 2012
    :cond_90
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v7, :cond_9d

    .line 2013
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9b

    goto :goto_9d

    :cond_9b
    :goto_9b
    const/4 v7, 0x1

    goto :goto_be

    .line 2014
    :cond_9d
    :goto_9d
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_b3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    if-nez v6, :cond_ba

    .line 2016
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2018
    :cond_ba
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_be
    :goto_be
    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    .line 2001
    :cond_c1
    :goto_c1
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_d7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_47

    :cond_db
    move-object v12, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2025
    :goto_e0
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v5, v15, :cond_301

    .line 2026
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/autofill/ViewState;

    .line 2027
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    and-int/lit8 v16, v2, 0x8

    if-eqz v16, :cond_2ed

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_17f

    .line 2035
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_119

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted(): no dataset id on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ed

    .line 2044
    :cond_119
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 2045
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    if-eqz v4, :cond_149

    .line 2046
    invoke-virtual {v4, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 2047
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2ed

    .line 2048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted(): ignoring changed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it has same value that was autofilled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ed

    .line 2054
    :cond_149
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_162

    .line 2055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "logContextCommitted() found changed state: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    if-nez v13, :cond_16f

    .line 2058
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    .line 2061
    :cond_16f
    iget-object v4, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v1

    move/from16 v20, v7

    move-object/from16 v21, v9

    goto/16 :goto_2f7

    .line 2064
    :cond_17f
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    if-nez v2, :cond_1a5

    .line 2066
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2ed

    .line 2067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ed

    :cond_1a5
    if-eqz v7, :cond_2ed

    const/4 v4, 0x0

    :goto_1a8
    if-ge v4, v1, :cond_2e4

    .line 2076
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/FillResponse;

    .line 2077
    invoke-virtual {v11}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2b6

    .line 2078
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1c0

    goto/16 :goto_2b6

    :cond_1c0
    move/from16 v18, v1

    move-object/from16 v19, v6

    const/4 v1, 0x0

    .line 2083
    :goto_1c5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2ab

    .line 2084
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/Dataset;

    move/from16 v20, v7

    .line 2085
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1f9

    .line 2087
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1ef

    .line 2088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ef
    move-object/from16 v23, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v24, v14

    goto/16 :goto_29d

    .line 2093
    :cond_1f9
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v21, v9

    move-object/from16 v22, v11

    const/4 v9, 0x0

    .line 2094
    :goto_202
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_26f

    .line 2095
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 2096
    invoke-virtual {v2, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_264

    .line 2097
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_239

    .line 2098
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string v2, "field "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was manually filled with value set by dataset "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23b

    :cond_239
    move-object/from16 v23, v2

    :goto_23b
    if-nez v19, :cond_242

    .line 2103
    new-instance v19, Landroid/util/ArrayMap;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArrayMap;-><init>()V

    :cond_242
    move-object/from16 v2, v19

    .line 2105
    iget-object v11, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2106
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-nez v11, :cond_25c

    .line 2108
    new-instance v11, Landroid/util/ArraySet;

    move-object/from16 v24, v14

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 2109
    iget-object v14, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25e

    :cond_25c
    move-object/from16 v24, v14

    .line 2111
    :goto_25e
    invoke-virtual {v11, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v2

    goto :goto_268

    :cond_264
    move-object/from16 v23, v2

    move-object/from16 v24, v14

    :goto_268
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v23

    move-object/from16 v14, v24

    goto :goto_202

    :cond_26f
    move-object/from16 v23, v2

    move-object/from16 v24, v14

    .line 2114
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_27d

    .line 2115
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29d

    .line 2116
    :cond_27d
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_293

    .line 2117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_293
    if-nez v12, :cond_29a

    .line 2120
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2122
    :cond_29a
    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_29d
    :goto_29d
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v2, v23

    move-object/from16 v14, v24

    goto/16 :goto_1c5

    :cond_2ab
    move-object/from16 v23, v2

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v14

    move-object/from16 v6, v19

    goto :goto_2d6

    :cond_2b6
    :goto_2b6
    move/from16 v18, v1

    move-object/from16 v23, v2

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v14

    .line 2079
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2d6

    .line 2080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d6
    :goto_2d6
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    move/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v2, v23

    move-object/from16 v14, v24

    goto/16 :goto_1a8

    :cond_2e4
    move/from16 v18, v1

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v14

    goto :goto_2f7

    :cond_2ed
    :goto_2ed
    move/from16 v18, v1

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    :goto_2f7
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    move/from16 v7, v20

    move-object/from16 v9, v21

    goto/16 :goto_e0

    :cond_301
    move-object/from16 v24, v14

    if-eqz v6, :cond_334

    .line 2138
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_314
    if-ge v4, v1, :cond_330

    .line 2142
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 2143
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 2144
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_314

    :cond_330
    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_337

    :cond_334
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2149
    :goto_337
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v9, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v14, v24

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, p3

    invoke-virtual/range {v8 .. v21}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method public final logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V
    .registers 24

    move-object/from16 v0, p0

    .line 2164
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v11

    .line 2165
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v12

    .line 2167
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 2168
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v14

    .line 2170
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v15

    .line 2171
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v16

    if-eqz v11, :cond_94

    if-eqz v12, :cond_94

    .line 2174
    array-length v1, v11

    array-length v2, v12

    if-eq v1, v2, :cond_24

    goto/16 :goto_94

    .line 2182
    :cond_24
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v1

    .line 2184
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2185
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2189
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2190
    :try_start_35
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 2191
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_91

    .line 2193
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    .line 2196
    new-array v6, v5, [Landroid/view/autofill/AutofillId;

    .line 2197
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2199
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 2200
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    .line 2201
    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v6, v1

    move v1, v4

    goto :goto_4c

    .line 2205
    :cond_67
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    move-object v1, v4

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object v0, v4

    move/from16 v4, p4

    move-object/from16 v17, v15

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v18, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v15, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v18

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    .line 2273
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void

    :catchall_91
    move-exception v0

    .line 2191
    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    :cond_94
    :goto_94
    const/4 v0, -0x1

    if-nez v11, :cond_99

    move v1, v0

    goto :goto_9a

    .line 2175
    :cond_99
    array-length v1, v11

    :goto_9a
    if-nez v12, :cond_9d

    goto :goto_9e

    .line 2176
    :cond_9d
    array-length v0, v12

    :goto_9e
    const-string v2, "AutofillSession"

    .line 2177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids.length = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 3163
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_71

    .line 3164
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 3165
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p2

    if-eqz p2, :cond_71

    .line 3166
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 3167
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 3168
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 3169
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p3, :cond_5c

    .line 3170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateLocked("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): resetting value that was "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chars long"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AutofillSession"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const/16 p1, 0x464

    .line 3173
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p3, 0x465

    .line 3174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 3175
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_71
    return-void
.end method

.method public final logSaveShown()V
    .registers 3

    .line 2597
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    return-void
.end method

.method public logSaveUiShown()V
    .registers 3

    .line 2284
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    .line 2792
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 2795
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_3b

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2796
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2800
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d8

    .line 2801
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2802
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v6, :cond_70

    .line 2804
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): Not merging null contexts from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_70
    if-eqz p1, :cond_75

    .line 2809
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2811
    :cond_75
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_a3

    .line 2812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_a3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2816
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v6, :cond_d4

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v6, :cond_d4

    .line 2817
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_d0

    .line 2818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): setting client state from previous session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_d0
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :cond_d4
    :goto_d4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_41

    .line 2824
    :cond_d8
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e5

    .line 2830
    :cond_de
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_e5
    return-object v1
.end method

.method public final newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3

    .line 4605
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5

    .line 4609
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, p0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final notifyClientFillDialogTriggerIds(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AutofillSession"

    .line 3399
    :try_start_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1b

    .line 3400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFillDialogTriggerIds(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillDialogTriggerIds(Ljava/util/List;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p0

    const-string p1, "Cannot set trigger ids for fill dialog"

    .line 3404
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public final notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V
    .registers 6

    .line 3550
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3551
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2a

    return-void

    .line 3553
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_2a

    goto :goto_28

    :catch_f
    move-exception p1

    :try_start_10
    const-string p2, "AutofillSession"

    .line 3555
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error notifying client disable autofill: id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3557
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 1623
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1625
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_17

    :catch_d
    move-exception p0

    :try_start_e
    const-string p1, "AutofillSession"

    const-string v1, "Error sending fill UI hidden notification"

    .line 1627
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1629
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw p0
.end method

.method public final notifyFillUiShown(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 1633
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1635
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_17

    :catch_d
    move-exception p0

    :try_start_e
    const-string p1, "AutofillSession"

    const-string v1, "Error sending fill UI shown notification"

    .line 1637
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw p0
.end method

.method public final notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3535
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    return-void

    .line 3538
    :cond_9
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v2, :cond_15

    .line 3539
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p2, v2, v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_36

    :cond_15
    if-eqz p1, :cond_36

    .line 3541
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1d
    .catchall {:try_start_9 .. :try_end_1c} :catchall_38

    goto :goto_36

    :catch_1d
    move-exception p1

    :try_start_1e
    const-string p2, "AutofillSession"

    .line 3544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client no fill UI: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3546
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    .registers 19

    move-object v0, p0

    move-object v13, p1

    move-object/from16 v2, p2

    .line 3275
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3276
    :try_start_7
    iget-boolean v3, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_2a

    const-string v2, "AutofillSession"

    .line 3277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    monitor-exit v1

    return-void

    .line 3281
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_1a3

    const/4 v1, 0x0

    if-eqz p3, :cond_3e

    .line 3284
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 3285
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_3f

    :cond_3e
    move-object v4, v1

    .line 3296
    :goto_3f
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3297
    :try_start_42
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v7

    .line 3298
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3299
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_1a0

    if-eqz v7, :cond_196

    if-nez v8, :cond_55

    goto/16 :goto_196

    .line 3305
    :cond_55
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 3306
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    move/from16 v1, p4

    .line 3307
    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 3308
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3309
    :try_start_6c
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    const/high16 v3, 0x20000

    .line 3310
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3311
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3313
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3314
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3313
    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3315
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3316
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_9a

    .line 3320
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    return-void

    :catchall_9a
    move-exception v0

    .line 3316
    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 3323
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 3328
    :cond_a0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 3329
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3330
    :try_start_a9
    invoke-virtual {p0, p1, v4}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 3331
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    const/16 v3, 0x2000

    .line 3332
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3335
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3339
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3340
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3339
    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3341
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3342
    monitor-exit v1

    return-void

    .line 3344
    :cond_da
    monitor-exit v1

    goto :goto_df

    :catchall_dc
    move-exception v0

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_a9 .. :try_end_de} :catchall_dc

    throw v0

    .line 3347
    :cond_df
    :goto_df
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3348
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v10, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget v12, v0, Lcom/android/server/autofill/Session;->mDisplayId:I

    move-object/from16 v2, p2

    move-object v3, p1

    move-object v9, p0

    .line 3347
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZI)V

    .line 3354
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3355
    :try_start_fb
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3357
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3358
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3357
    invoke-virtual {v1, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3359
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3360
    monitor-exit v2
    :try_end_116
    .catchall {:try_start_fb .. :try_end_116} :catchall_193

    .line 3362
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3363
    :try_start_119
    iget-wide v2, v0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18e

    .line 3365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 3366
    iget-wide v4, v0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v2, v4

    .line 3367
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_14b

    .line 3368
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1st UI for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 3369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " shown in "

    .line 3370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    invoke-static {v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "AutofillSession"

    .line 3372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_14b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " app="

    .line 3375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " svc="

    .line 3376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " latency="

    .line 3377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3378
    invoke-static {v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3379
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 3382
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3381
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3384
    :cond_18e
    monitor-exit v1

    return-void

    :catchall_190
    move-exception v0

    monitor-exit v1
    :try_end_192
    .catchall {:try_start_119 .. :try_end_192} :catchall_190

    throw v0

    :catchall_193
    move-exception v0

    .line 3360
    :try_start_194
    monitor-exit v2
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw v0

    :cond_196
    :goto_196
    const-string/jumbo v2, "onFillReady(): no service label or icon"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3301
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_1a0
    move-exception v0

    .line 3299
    :try_start_1a1
    monitor-exit v3
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a0

    throw v0

    :catchall_1a3
    move-exception v0

    .line 3281
    :try_start_1a4
    monitor-exit v1
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_1a3

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public final onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V
    .registers 9

    .line 1283
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1284
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 1286
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_37

    const-string p2, "AutofillSession"

    .line 1287
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") rejected - session: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    monitor-exit v1

    return-void

    .line 1291
    :cond_37
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_59

    const-string v2, "AutofillSession"

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishing session due to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4d

    const-string/jumbo v4, "timeout"

    goto :goto_4f

    :cond_4d
    const-string v4, "failure"

    .line 1293
    :goto_4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_59
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 1296
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    if-nez v2, :cond_80

    const-string p2, "AutofillSession"

    .line 1298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_80
    if-eqz p2, :cond_84

    const/4 p1, 0x2

    goto :goto_86

    :cond_84
    const/16 p1, 0xb

    .line 1300
    :goto_86
    invoke-virtual {v2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    :goto_89
    if-eqz v0, :cond_c5

    .line 1303
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result p1

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_b6

    const/4 p2, 0x0

    const-string v0, "AutofillSession"

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' because service\'s targetting API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    :cond_b6
    if-eqz p3, :cond_c5

    const/16 p1, 0x624

    .line 1311
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1310
    invoke-virtual {v2, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1316
    :cond_c5
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1318
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1319
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_9 .. :try_end_d1} :catchall_e3

    const/4 p1, 0x6

    const/4 p2, 0x0

    .line 1320
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    if-eqz v0, :cond_df

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1325
    :cond_df
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :catchall_e3
    move-exception p0

    .line 1319
    :try_start_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p0
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1162
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1163
    :try_start_b
    iget-boolean v5, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v5, :cond_2e

    const-string v1, "AutofillSession"

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    monitor-exit v4

    return-void

    .line 1169
    :cond_2e
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/metrics/LogMaker;

    if-eqz v5, :cond_3e

    const/16 v6, 0xa

    .line 1171
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_55

    :cond_3e
    const-string v6, "AutofillSession"

    .line 1173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    const/16 v6, 0x38d

    if-nez v2, :cond_68

    if-eqz v5, :cond_63

    const/4 v2, -0x1

    .line 1177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1179
    :cond_63
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1180
    monitor-exit v4

    return-void

    .line 1183
    :cond_68
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    if-eqz v7, :cond_96

    .line 1184
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_96

    const-string v5, "AutofillSession"

    .line 1185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because field detection is disabled"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1187
    monitor-exit v4

    return-void

    .line 1190
    :cond_96
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v1

    const/4 v8, 0x4

    and-int/2addr v1, v8

    if-eqz v1, :cond_a8

    const-string v1, "AutofillSession"

    const-string v9, "Service requested to wait for delayed fill response."

    .line 1192
    invoke-static {v1, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->registerDelayedFillBroadcastLocked()V

    .line 1195
    :cond_a8
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_b .. :try_end_a9} :catchall_1d3

    .line 1197
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    const-wide/16 v9, 0x0

    cmp-long v1, v14, v9

    const/4 v4, 0x1

    const/16 v16, 0x0

    if-lez v1, :cond_bf

    move v1, v4

    goto :goto_c1

    :cond_bf
    move/from16 v1, v16

    :goto_c1
    const/4 v13, 0x0

    if-eqz v1, :cond_16a

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v11

    and-int/lit8 v9, v11, 0x2

    if-eqz v9, :cond_ce

    move v9, v4

    goto :goto_d0

    :cond_ce
    move/from16 v9, v16

    :goto_d0
    if-eqz v9, :cond_d5

    .line 1206
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    goto :goto_d6

    :cond_d5
    move-object v10, v13

    .line 1205
    :goto_d6
    invoke-virtual {v0, v14, v15, v10}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V

    if-eqz v9, :cond_f0

    .line 1209
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v8, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move v6, v11

    move/from16 v17, v12

    move-wide v11, v14

    move/from16 v13, v17

    move-wide/from16 v18, v14

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_104

    :cond_f0
    move v6, v11

    move-wide/from16 v18, v14

    .line 1212
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget v13, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v14, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide/from16 v11, v18

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 1216
    :goto_104
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1217
    :try_start_107
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v9, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAutofillDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1221
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v9

    if-eqz v9, :cond_13a

    .line 1222
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1223
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_138

    const-string v1, "AutofillSession"

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disabled autofill for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but session is kept for augmented autofill only"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_138
    monitor-exit v8

    return-void

    .line 1229
    :cond_13a
    monitor-exit v8
    :try_end_13b
    .catchall {:try_start_107 .. :try_end_13b} :catchall_167

    .line 1231
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_16a

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Service disabled autofill for "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1233
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": flags="

    .line 1234
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", duration="

    .line 1235
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v18

    .line 1236
    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v6, "AutofillSession"

    .line 1237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    :catchall_167
    move-exception v0

    .line 1229
    :try_start_168
    monitor-exit v8
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw v0

    .line 1241
    :cond_16a
    :goto_16a
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_17a

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_180

    .line 1242
    :cond_17a
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v4

    if-eqz v4, :cond_185

    :cond_180
    if-eqz v1, :cond_183

    goto :goto_185

    :cond_183
    const/4 v1, 0x0

    goto :goto_19f

    :cond_185
    :goto_185
    if-eqz v1, :cond_18a

    const/4 v1, 0x0

    const/4 v8, 0x4

    goto :goto_18d

    :cond_18a
    move/from16 v8, v16

    const/4 v1, 0x0

    .line 1245
    :goto_18d
    invoke-virtual {v0, v8, v1}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 1248
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1249
    :try_start_193
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1250
    invoke-static {v8}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v8

    .line 1249
    invoke-virtual {v4, v8}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 1251
    monitor-exit v6
    :try_end_19f
    .catchall {:try_start_193 .. :try_end_19f} :catchall_1d0

    :goto_19f
    if-eqz v5, :cond_1c5

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1a8

    goto :goto_1b0

    :cond_1a8
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    :goto_1b0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x38d

    .line 1255
    invoke-virtual {v5, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v7, :cond_1c5

    const/16 v4, 0x4f7

    .line 1258
    array-length v6, v7

    .line 1260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1258
    invoke-virtual {v5, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1264
    :cond_1c5
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1265
    :try_start_1c8
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 1266
    monitor-exit v4

    return-void

    :catchall_1cd
    move-exception v0

    monitor-exit v4
    :try_end_1cf
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_1cd

    throw v0

    :catchall_1d0
    move-exception v0

    .line 1251
    :try_start_1d1
    monitor-exit v6
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_1d0

    throw v0

    :catchall_1d3
    move-exception v0

    .line 1195
    :try_start_1d4
    monitor-exit v4
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1278
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 3

    .line 4563
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9

    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1358
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1359
    :try_start_9
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1361
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_32

    const-string p1, "AutofillSession"

    .line 1362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    monitor-exit v1

    return-void

    :cond_32
    if-eqz v0, :cond_5e

    .line 1367
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v2

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_5e

    const-string v0, "AutofillSession"

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' because service\'s targetting API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1374
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_8c

    const/16 v1, 0x396

    .line 1376
    invoke-virtual {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0xb

    .line 1377
    invoke-virtual {p2, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    if-eqz p1, :cond_7a

    const/16 v1, 0x624

    .line 1379
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1381
    :cond_7a
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz v0, :cond_88

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1386
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :catchall_8c
    move-exception p0

    .line 1374
    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 6

    .line 1332
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1335
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2c

    const-string p1, "AutofillSession"

    .line 1336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    monitor-exit v0

    return-void

    .line 1340
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_56

    const/16 v0, 0x396

    .line 1341
    invoke-virtual {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    if-nez p2, :cond_38

    const/16 v0, 0xa

    goto :goto_39

    :cond_38
    const/4 v0, 0x1

    .line 1342
    :goto_39
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1343
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz p2, :cond_52

    .line 1345
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4f

    const-string p1, "AutofillSession"

    const-string v0, "Starting intent sender on save()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_4f
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    .line 1350
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :catchall_56
    move-exception p0

    .line 1340
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 3

    const-string p1, "AutofillSession"

    const-string/jumbo v0, "removing session because service died"

    .line 1417
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1419
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 1420
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 163
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method public onSwitchInputMethodLocked()V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 421
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldResetSessionStateOnInputMethodSwitch()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 424
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 429
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 430
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    :cond_22
    return-void
.end method

.method public final processNullResponseLocked(II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3672
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 3674
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x1040206

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3677
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_23

    .line 3681
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    const/4 v0, 0x1

    .line 3682
    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_39

    .line 3684
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNullResponseLocked(): no context for req "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3688
    :goto_39
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 3692
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v0, :cond_74

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_74

    .line 3694
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_6c

    .line 3695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canceling session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    const/4 p2, 0x2

    .line 3699
    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 3700
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    goto :goto_d3

    :cond_74
    and-int/lit8 p2, p2, 0x4

    const-string/jumbo v0, "keeping session "

    if-eqz p2, :cond_a3

    .line 3703
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_9b

    .line 3704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    :cond_9b
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    goto :goto_c3

    .line 3710
    :cond_a3
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_c3

    .line 3711
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_c3
    :goto_c3
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 3717
    :try_start_c5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 p1, 0x20

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_cc} :catch_cd

    goto :goto_d3

    :catch_cd
    move-exception p0

    const-string p1, "Error setting client to autofill-only"

    .line 3719
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    return-void
.end method

.method public final processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3885
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3887
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AutofillSession"

    if-nez v0, :cond_17

    const-string v0, "Service did not request to wait for delayed fill response."

    .line 3888
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 3892
    :cond_17
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 3893
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_56

    .line 3894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newClientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    :cond_56
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_62

    .line 3903
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 3905
    :cond_62
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_6a

    goto :goto_6e

    .line 3906
    :cond_6a
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    :goto_6e
    iput-object p2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 3908
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3909
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3908
    invoke-virtual {p2, v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    const/4 p2, 0x0

    .line 3911
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3912
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateFillDialogTriggerIdsLocked()V

    .line 3913
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 3915
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez p1, :cond_8a

    return-void

    .line 3920
    :cond_8a
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 3921
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void
.end method

.method public final registerDelayedFillBroadcastLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 701
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-nez v0, :cond_1d

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "registerDelayedFillBroadcastLocked()"

    .line 702
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_1d
    return-void
.end method

.method public final removeFromService()V
    .registers 2

    .line 4532
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4533
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 4534
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public removeFromServiceLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4543
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromServiceLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_47

    .line 4545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeFromServiceLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4549
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "removeFromServiceLocked() ignored, waiting for pending save ui"

    .line 4550
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4554
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 4555
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    if-eqz v0, :cond_64

    .line 4557
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    :cond_64
    const/4 v0, 0x3

    .line 4559
    iput v0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    return-void
.end method

.method public final replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3661
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3663
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 3665
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 3667
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final requestAssistStructureLocked(II)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 996
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    .line 997
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_3d

    .line 1000
    :try_start_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {p1, v3, v0, v4, p2}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_34

    const-string p1, "AutofillSession"

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to request autofill data for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_38

    .line 1005
    :cond_34
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3d

    :catchall_38
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1006
    throw p0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :goto_3d
    return-void
.end method

.method public requestFallbackFromFillDialog()V
    .registers 4

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 1613
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1614
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_c

    .line 1615
    monitor-exit v0

    return-void

    .line 1617
    :cond_c
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1618
    iget p0, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 1619
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 1551
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_1c

    :catch_d
    move-exception v1

    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    .line 1557
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    :goto_15
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 1561
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_b

    throw p0
.end method

.method public final requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 905
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 907
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 912
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 913
    iput v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 914
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const-string v3, ", flags="

    const-string v4, "AutofillSession"

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_24

    goto/16 :goto_ca

    .line 925
    :cond_24
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 930
    :cond_27
    sget-object p2, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_27

    .line 934
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v5, 0x38b

    .line 935
    invoke-virtual {p0, v5}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x5ae

    .line 936
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    if-eqz p3, :cond_53

    const/16 v6, 0x5ac

    .line 938
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 940
    :cond_53
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 942
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_7e

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting structure for request #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,requestId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_7e
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 953
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 958
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 959
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    .line 960
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    if-eqz v3, :cond_c1

    if-eqz v0, :cond_c1

    .line 962
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 963
    :cond_a2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 964
    invoke-virtual {v2, p1, v1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 967
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 969
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;I)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    const/high16 v0, 0x10000

    .line 979
    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_c6

    .line 982
    :cond_c1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    .line 986
    :cond_c6
    :goto_c6
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/Session;->requestAssistStructureLocked(II)V

    return-void

    .line 915
    :cond_ca
    :goto_ca
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_f4

    .line 916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_f4
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 921
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    return-void
.end method

.method public final requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_33

    .line 2854
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2855
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-starting session on view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/16 p1, 0x100

    .line 2856
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    return v3

    .line 2861
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    const-string v4, ": "

    if-eqz v0, :cond_68

    .line 2862
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5d

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2863
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_5d
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    const/16 p1, 0x20

    .line 2870
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    return v3

    .line 2874
    :cond_68
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_8a

    .line 2875
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not starting new partition for view "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2875
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    return v2
.end method

.method public final requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z
    .registers 15

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isFillDialogUiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    and-int/lit16 v0, p4, 0x80

    if-eqz v0, :cond_d

    return v1

    .line 3446
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3449
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v9, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v7, p0

    .line 3448
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillDialog(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14

    .line 1503
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    const-string p0, "AutofillSession"

    .line 1505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    monitor-exit v0

    return-void

    .line 1509
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_78

    if-eqz v1, :cond_4d

    .line 1511
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1512
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_44
    .catchall {:try_start_2c .. :try_end_43} :catchall_78

    goto :goto_76

    :catch_44
    move-exception p0

    :try_start_45
    const-string p1, "AutofillSession"

    const-string p2, "Error requesting to show fill UI"

    .line 1515
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 1518
    :cond_4d
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_76

    const-string p2, "AutofillSession"

    .line 1519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Do not show full UI on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it is not the current view ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") anymore"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_76
    :goto_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_45 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public final requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .registers 12

    .line 3468
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    const-string v1, "AutofillSession"

    if-nez v7, :cond_e

    const-string/jumbo p0, "requestShowInlineSuggestionsLocked(): no view currently focused"

    .line 3469
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3474
    :cond_e
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3475
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v2

    .line 3476
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_20

    const-string p0, "InlineSuggestionsRequest unavailable"

    .line 3477
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3481
    :cond_20
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3482
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v4

    if-nez v4, :cond_2e

    const-string p0, "RemoteInlineSuggestionRenderService not found"

    .line 3484
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3488
    :cond_2e
    new-instance v8, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    .line 3489
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v5, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    move-object v0, v8

    move-object v2, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    .line 3491
    new-instance p2, Lcom/android/server/autofill/Session$3;

    invoke-direct {p2, p0, p1, v7}, Lcom/android/server/autofill/Session$3;-><init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    invoke-static {v8, p1, p2}, Lcom/android/server/autofill/ui/InlineFillUi;->forAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p1

    .line 3518
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    return p0
.end method

.method public requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 3

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1602
    :try_start_6
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "AutofillSession"

    const-string v0, "Error sending input show up notification"

    .line 1604
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public save()V
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    const-string v1, "AutofillSession"

    .line 1473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    monitor-exit v0

    return-void

    .line 1477
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    .line 1478
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;-><init>()V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_38
    move-exception p0

    .line 1477
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_d

    :cond_5
    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    .line 1771
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1772
    :goto_d
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v3, "AutofillSession"

    if-eqz v2, :cond_39

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auth result for augmented autofill: sessionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", authId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataset="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    .line 1776
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_52

    .line 1777
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    goto :goto_53

    :cond_52
    move-object v4, v0

    :goto_53
    if-eqz v1, :cond_6a

    .line 1778
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_6a

    .line 1779
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillValue;

    goto :goto_6b

    :cond_6a
    move-object p2, v0

    :goto_6b
    if-eqz v1, :cond_71

    .line 1780
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v0

    :cond_71
    if-eqz v4, :cond_123

    if-nez p2, :cond_79

    if-nez v0, :cond_79

    goto/16 :goto_123

    .line 1794
    :cond_79
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1795
    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceIfCreatedLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v5

    if-nez v5, :cond_8f

    const-string p1, "Can\'t fill after auth: RemoteAugmentedAutofillService is null"

    .line 1797
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    return-void

    .line 1808
    :cond_8f
    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v6}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 1809
    iput-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const-string v6, "android.view.autofill.extra.CLIENT_STATE"

    .line 1812
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1813
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    if-eqz v0, :cond_b6

    .line 1818
    invoke-virtual {v5}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object p1

    .line 1819
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {p1, v5, v6, v7, v0}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 1823
    :cond_b6
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v5, ", content="

    const-string v6, ", value="

    if-eqz p1, :cond_de

    .line 1824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filling after auth: fieldId="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    if-eqz v0, :cond_e8

    .line 1829
    :try_start_e0
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p1, v1, v4, v0}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_119

    .line 1831
    :cond_e8
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v7, v8, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_f7} :catch_f8

    goto :goto_119

    :catch_f8
    move-exception p1

    .line 1834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error filling after auth: fieldId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    :goto_119
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-static {v4}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    return-void

    .line 1782
    :cond_123
    :goto_123
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_12c

    const-string p1, "Rejecting empty/invalid auth result"

    .line 1783
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_12c
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    return-void
.end method

.method public setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1654
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_22

    .line 1655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1659
    :cond_22
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2d

    .line 1661
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V

    return-void

    .line 1664
    :cond_2d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_4f

    .line 1667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAuthenticationResultLocked("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no responses"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 1671
    :cond_4f
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_154

    if-nez p1, :cond_5b

    goto/16 :goto_154

    .line 1678
    :cond_5b
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v4

    const v2, 0xffff

    if-eq v4, v2, :cond_8e

    .line 1682
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    if-nez v5, :cond_8e

    .line 1684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "no dataset with index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on fill response"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 1691
    :cond_8e
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    .line 1693
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    const-string v7, "android.view.autofill.extra.CLIENT_STATE"

    .line 1694
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1695
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_c9

    .line 1696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAuthenticationResultLocked(): result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", clientState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", authenticationId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_c9
    instance-of v8, v5, Landroid/service/autofill/FillResponse;

    if-eqz v8, :cond_d9

    const/16 p1, 0x390

    .line 1700
    invoke-virtual {p0, v3, p1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1701
    check-cast v5, Landroid/service/autofill/FillResponse;

    invoke-virtual {p0, v0, v5, v7}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto/16 :goto_153

    .line 1702
    :cond_d9
    instance-of v8, v5, Landroid/service/autofill/Dataset;

    if-eqz v8, :cond_134

    if-eq v4, v2, :cond_111

    const/16 p2, 0x466

    .line 1704
    invoke-virtual {p0, v3, p2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    if-eqz v7, :cond_f1

    .line 1707
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_ef

    const-string p2, "Updating client state from auth dataset"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_ef
    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1710
    :cond_f1
    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1711
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/autofill/Dataset;

    .line 1712
    invoke-static {p2, p1}, Lcom/android/server/autofill/Session;->isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_10a

    .line 1713
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1715
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    goto :goto_153

    .line 1717
    :cond_111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "invalid index ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for authentication id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x467

    .line 1719
    invoke-virtual {p0, v3, p1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_153

    :cond_134
    if-eqz v5, :cond_14b

    .line 1724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service returned invalid auth type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    const/16 p1, 0x468

    .line 1726
    invoke-virtual {p0, v3, p1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1728
    invoke-virtual {p0, v3, v6}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    :goto_153
    return-void

    :cond_154
    :goto_154
    const-string/jumbo p1, "no authenticated response"

    .line 1673
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public setAutofillFailureLocked(Ljava/util/List;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3641
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 3642
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 3643
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    const-string v3, "AutofillSession"

    if-nez v2, :cond_2f

    .line 3645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutofillFailure(): no view for id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_2f
    const/4 v4, 0x4

    .line 3648
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3649
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    .line 3650
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3651
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_60

    .line 3652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_63
    return-void
.end method

.method public final setClientLocked(Landroid/os/IBinder;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 1123
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1124
    new-instance p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 1136
    :try_start_10
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_37

    :catch_1d
    move-exception p1

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not set binder death listener on autofill client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutofillSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1139
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    :goto_37
    return-void
.end method

.method public final setFillDialogDisabled()V
    .registers 4

    .line 3417
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 3419
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    const/4 v0, 0x0

    .line 3420
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void

    :catchall_f
    move-exception p0

    .line 3419
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final setFillDialogDisabledAndStartInput()V
    .registers 3

    .line 3424
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->isFillDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3425
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 3427
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3428
    :try_start_10
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3429
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 3430
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    goto :goto_1a

    :catchall_17
    move-exception p0

    .line 3429
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setHasCallbackLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1844
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 1845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1849
    :cond_22
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3929
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    move v3, v2

    .line 3931
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 3932
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    if-nez v4, :cond_2e

    .line 3934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring null dataset on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutofillSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 3937
    :cond_2e
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3939
    :cond_34
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 3940
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_40
    if-ge v4, v3, :cond_54

    aget-object v5, v0, v4

    .line 3941
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    if-nez p3, :cond_4e

    .line 3943
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_51

    .line 3945
    :cond_4e
    invoke-virtual {v5, v1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 3949
    :cond_54
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p3

    if-eqz p3, :cond_7e

    .line 3951
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 3953
    array-length v3, v0

    move v4, v2

    :goto_62
    if-ge v4, v3, :cond_6c

    aget-object v5, v0, v4

    .line 3954
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 3957
    :cond_6c
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object p3

    if-eqz p3, :cond_7e

    .line 3959
    array-length v0, p3

    move v3, v2

    :goto_74
    if-ge v3, v0, :cond_7e

    aget-object v4, p3, v3

    .line 3960
    invoke-virtual {p0, v4, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 3965
    :cond_7e
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 3967
    array-length p3, p1

    :goto_85
    if-ge v2, p3, :cond_8f

    aget-object v0, p1, v2

    .line 3968
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_8f
    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3979
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 3980
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 3981
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 3982
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 3983
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 3984
    invoke-virtual {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v3

    .line 3985
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 3987
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    :cond_28
    if-eqz p4, :cond_2f

    const/4 v4, 0x0

    .line 3990
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_34

    :cond_2f
    if-eqz p1, :cond_34

    .line 3992
    invoke-virtual {v3, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_37
    return-void
.end method

.method public final shouldResetSessionStateOnInputMethodSwitch()Z
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 447
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 451
    :cond_14
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-eqz p0, :cond_29

    .line 453
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v1
.end method

.method public final shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2890
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2891
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    if-eqz v0, :cond_1a

    .line 2892
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p0

    const/high16 p1, 0x10000

    and-int/2addr p0, p1

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    return v2

    .line 2896
    :cond_1c
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_30

    .line 2897
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_2f

    const-string p0, "Starting a new partition because the response has expired."

    .line 2898
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return v2

    .line 2903
    :cond_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2904
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v4

    if-lt v0, v4, :cond_67

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting a new partition on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because session "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reached maximum of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2906
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2905
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_67
    move v1, v3

    :goto_68
    if-ge v1, v0, :cond_c9

    .line 2911
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 2913
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    return v3

    .line 2917
    :cond_7d
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 2919
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    .line 2920
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    :cond_97
    return v3

    .line 2925
    :cond_98
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_bb

    .line 2927
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_a3
    if-ge v7, v6, :cond_bb

    .line 2930
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_b8

    .line 2932
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    return v3

    :cond_b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 2938
    :cond_bb
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    return v3

    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_c9
    return v2
.end method

.method public showSaveLocked()Lcom/android/server/autofill/Session$SaveResult;
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v13, p0

    .line 2295
    iget-boolean v0, v13, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_2a

    const-string v0, "AutofillSession"

    .line 2296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v14, v14, v14}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :cond_2a
    const/4 v0, 0x2

    .line 2301
    iput v0, v13, Lcom/android/server/autofill/Session;->mSessionState:I

    const-string/jumbo v1, "showSaveLocked(%s)"

    .line 2302
    invoke-virtual {v13, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-nez v1, :cond_38

    const/4 v5, 0x0

    goto :goto_3d

    .line 2303
    :cond_38
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    move-object v5, v3

    :goto_3d
    const/4 v15, 0x1

    if-nez v5, :cond_68

    .line 2316
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_62

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no saveInfo from service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_62
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v14, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2321
    :cond_68
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_98

    .line 2323
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_92

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSaveLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): service asked to delay save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_92
    new-instance v1, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v1, v14, v14, v0}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v1

    .line 2328
    :cond_98
    invoke-static {v5}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2331
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2333
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2335
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    if-eqz v7, :cond_1ef

    move v8, v14

    move v9, v8

    move v10, v9

    .line 2342
    :goto_af
    array-length v11, v7

    if-ge v8, v11, :cond_1f1

    .line 2343
    aget-object v11, v7, v8

    if-nez v11, :cond_d3

    const-string v11, "AutofillSession"

    .line 2345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null autofill id on "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cc

    .line 2348
    :cond_d3
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2349
    iget-object v4, v13, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    if-nez v4, :cond_f9

    const-string v4, "AutofillSession"

    .line 2351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f2

    .line 2356
    :cond_f9
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v12

    if-eqz v12, :cond_105

    .line 2357
    invoke-virtual {v12}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_132

    .line 2358
    :cond_105
    invoke-virtual {v13, v11}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    if-eqz v12, :cond_1d3

    .line 2360
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_132

    const-string v2, "AutofillSession"

    .line 2361
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value of required field "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " didn\'t change; using initial value ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") instead"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_132
    invoke-virtual {v13, v0, v11, v12}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    if-nez v2, :cond_15a

    .line 2376
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1ed

    const-string v2, "AutofillSession"

    .line 2377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value of required field "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " failed sanitization"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    .line 2382
    :cond_15a
    invoke-virtual {v4, v2}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 2383
    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 2386
    invoke-virtual {v2, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1cc

    if-nez v4, :cond_19d

    .line 2390
    invoke-virtual {v13, v11}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    if-eqz v12, :cond_19e

    .line 2391
    invoke-virtual {v12, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19e

    .line 2392
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v12, :cond_19b

    const-string v12, "AutofillSession"

    .line 2393
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19b
    const/4 v12, 0x0

    goto :goto_19f

    :cond_19d
    const/4 v10, 0x1

    :cond_19e
    const/4 v12, 0x1

    :goto_19f
    if-eqz v12, :cond_1cc

    .line 2402
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_1cb

    const-string v9, "AutofillSession"

    .line 2403
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found a change on required "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cb
    const/4 v9, 0x1

    :cond_1cc
    :goto_1cc
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_af

    .line 2366
    :cond_1d3
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1ed

    const-string v2, "AutofillSession"

    .line 2367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty value for required "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ed
    :goto_1ed
    const/4 v14, 0x0

    goto :goto_1f2

    :cond_1ef
    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_1f1
    const/4 v14, 0x1

    .line 2412
    :goto_1f2
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 2413
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_21d

    const-string v4, "AutofillSession"

    .line 2414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allRequiredAreNotEmpty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasOptional: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_212

    const/4 v8, 0x1

    goto :goto_213

    :cond_212
    const/4 v8, 0x0

    :goto_213
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21d
    if-nez v14, :cond_222

    const/4 v4, 0x3

    goto/16 :goto_2f6

    :cond_222
    if-eqz v2, :cond_2f3

    if-eqz v9, :cond_228

    if-nez v10, :cond_2f3

    :cond_228
    const/4 v4, 0x0

    .line 2428
    :goto_229
    array-length v7, v2

    if-ge v4, v7, :cond_2f3

    .line 2429
    aget-object v7, v2, v4

    .line 2430
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2431
    iget-object v8, v13, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    if-nez v8, :cond_254

    const-string v8, "AutofillSession"

    .line 2433
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no ViewState for optional "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ef

    .line 2436
    :cond_254
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_2c3

    .line 2437
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 2438
    invoke-virtual {v13, v0, v7, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v11

    if-nez v11, :cond_287

    .line 2440
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_2ef

    const-string v8, "AutofillSession"

    .line 2441
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "value of opt. field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " failed sanitization"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ef

    .line 2446
    :cond_287
    invoke-virtual {v3, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v8

    .line 2448
    invoke-virtual {v11, v8}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2ef

    .line 2449
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_2be

    const-string v9, "AutofillSession"

    .line 2450
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found a change on optional "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " => "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2be
    if-eqz v8, :cond_2c1

    const/4 v10, 0x1

    :cond_2c1
    const/4 v9, 0x1

    goto :goto_2ef

    .line 2460
    :cond_2c3
    invoke-virtual {v13, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v8

    .line 2461
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_2ea

    const-string v11, "AutofillSession"

    .line 2462
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no current value for "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; initial value is "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ea
    if-eqz v8, :cond_2ef

    .line 2466
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ef
    :goto_2ef
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_229

    :cond_2f3
    if-nez v9, :cond_32b

    const/4 v4, 0x4

    .line 2587
    :goto_2f6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_323

    const-string v0, "AutofillSession"

    .line 2588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", atLeastOneChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_323
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2474
    :cond_32b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_336

    const-string v0, "AutofillSession"

    const-string v2, "at least one field changed, validate fields for save UI"

    .line 2475
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_336
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v0

    if-eqz v0, :cond_39e

    const/16 v2, 0x46d

    .line 2479
    invoke-virtual {v13, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v4, 0x5

    .line 2482
    :try_start_343
    invoke-virtual {v0, v13}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v7

    .line 2483
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_364

    const-string v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_364
    if-eqz v7, :cond_369

    const/16 v0, 0xa

    goto :goto_36a

    :cond_369
    move v0, v4

    .line 2484
    :goto_36a
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_36d
    .catch Ljava/lang/Exception; {:try_start_343 .. :try_end_36d} :catch_384

    .line 2495
    iget-object v0, v13, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-nez v7, :cond_39e

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "not showing save UI because fields failed validation"

    .line 2497
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :catch_384
    move-exception v0

    const-string v1, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    .line 2488
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xb

    .line 2489
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2490
    iget-object v0, v13, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2491
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2505
    :cond_39e
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_494

    const/4 v1, 0x0

    .line 2507
    :goto_3a5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_494

    .line 2508
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 2510
    invoke-static {v2}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 2511
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_3df

    const-string v7, "AutofillSession"

    .line 2512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; savableIds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3df
    const/4 v7, 0x0

    .line 2515
    :goto_3e0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_468

    .line 2516
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 2517
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    if-nez v9, :cond_40f

    .line 2519
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_464

    const-string v9, "AutofillSession"

    .line 2520
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataset has value for field that is null: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_464

    .line 2524
    :cond_40f
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 2525
    invoke-virtual {v9, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_449

    .line 2526
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_445

    const-string v2, "AutofillSession"

    .line 2527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found a dataset change on id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_445
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3a5

    .line 2532
    :cond_449
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_464

    const-string v9, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no dataset changes for id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_464
    :goto_464
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3e0

    .line 2534
    :cond_468
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_48b

    const-string v0, "AutofillSession"

    .line 2535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :cond_48b
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2543
    :cond_494
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_4b5

    const-string v0, "AutofillSession"

    .line 2544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_4b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 2549
    new-instance v1, Lcom/android/server/autofill/ui/PendingUi;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget v3, v13, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 2558
    iget-object v1, v13, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2559
    :try_start_4ca
    iget-object v2, v13, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2560
    iget-object v3, v13, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2561
    monitor-exit v1
    :try_end_4d7
    .catchall {:try_start_4ca .. :try_end_4d7} :catchall_533

    if-eqz v2, :cond_522

    if-nez v3, :cond_4dc

    goto :goto_522

    .line 2568
    :cond_4dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v4, v13, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2569
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v13, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v9, v13, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v11, v13, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget v12, v13, Lcom/android/server/autofill/Session;->mDisplayId:I

    move-object/from16 v6, p0

    move-object/from16 v8, p0

    .line 2568
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZI)V

    if-eqz v0, :cond_515

    .line 2576
    :try_start_4f7
    iget v1, v13, Lcom/android/server/autofill/Session;->id:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_4fd
    .catch Landroid/os/RemoteException; {:try_start_4f7 .. :try_end_4fd} :catch_4fe

    goto :goto_515

    :catch_4fe
    move-exception v0

    const-string v1, "AutofillSession"

    .line 2578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_515
    :goto_515
    iget-object v0, v13, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2582
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :cond_522
    :goto_522
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "showSaveLocked(): no service label or icon"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2563
    invoke-virtual {v13, v4, v0, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2564
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :catchall_533
    move-exception v0

    .line 2561
    :try_start_534
    monitor-exit v1
    :try_end_535
    .catchall {:try_start_534 .. :try_end_535} :catchall_533

    throw v0
.end method

.method public final startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 12

    .line 4094
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_13

    .line 4095
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 4097
    monitor-exit v0

    goto :goto_1b

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    const-string p1, "AutofillSession"

    const-string p2, "Error launching auth intent"

    .line 4099
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    .line 1581
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    const-string p1, "AutofillSession"

    .line 1583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    monitor-exit v0

    return-void

    :cond_26
    if-nez p2, :cond_2b

    .line 1588
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1590
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3b

    .line 1591
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_3b
    move-exception p0

    .line 1590
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V
    .registers 3

    const/4 v0, 0x0

    .line 1575
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 1106
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    const-string p1, "AutofillSession"

    .line 1108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v0

    return-void

    .line 1112
    :cond_26
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1113
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 1117
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 4197
    invoke-static {p0}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 3742
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3743
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v0

    const-string v2, "AutofillSession"

    if-nez v0, :cond_1b

    .line 3745
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object v1

    .line 3751
    :cond_1b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3752
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 3754
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2d

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-object v1

    :cond_2e
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_15d

    .line 3767
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_3d

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no view currently focused"

    .line 3768
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3772
    :cond_3d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3773
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_78

    .line 3776
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_6b

    .line 3777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3778
    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not whitelisted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3777
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_6b
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v10, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    return-object v1

    .line 3785
    :cond_78
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b9

    .line 3786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling Augmented Autofill Service ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") on view "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using suggestion mode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 3789
    invoke-static {v4}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when server returned null for session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3786
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :cond_b9
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const/16 v4, 0x1000

    .line 3794
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3795
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 3797
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_d7

    .line 3798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    :cond_d7
    const/16 v0, 0x65e

    .line 3801
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3800
    invoke-virtual {p0, v0, v4}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3802
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3804
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3806
    new-instance v11, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;

    invoke-direct {v11, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/Session;)V

    .line 3812
    new-instance v12, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda12;

    const/4 v6, 0x1

    move-object v4, v12

    move-object v5, p0

    move-object v7, v3

    move-object v8, v0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/autofill/Session;ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;)V

    .line 3841
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3842
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v4

    if-eqz v4, :cond_121

    .line 3843
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    if-nez v5, :cond_11b

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    if-eqz v5, :cond_11b

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 3847
    :cond_11b
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result p1

    if-nez p1, :cond_127

    .line 3848
    :cond_121
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isFillDialogUiEnabled()Z

    move-result p1

    if-eqz p1, :cond_140

    .line 3849
    :cond_127
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_130

    const-string p1, "Create inline request for augmented autofill"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    :cond_130
    new-instance p1, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0, v12}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v4, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    goto :goto_14f

    .line 3859
    :cond_140
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3860
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 3859
    invoke-interface {v12, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3862
    :goto_14f
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez p1, :cond_15a

    .line 3863
    new-instance p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda14;

    invoke-direct {p1, v3}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3865
    :cond_15a
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object p0

    .line 3763
    :cond_15d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported Smart Suggestion mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final unlinkClientVultureLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_31

    .line 1146
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlinking vulture from death failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    .line 1150
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    :cond_31
    return-void
.end method

.method public final unregisterDelayedFillBroadcastLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 711
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_16

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "unregisterDelayedFillBroadcastLocked()"

    .line 712
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_16
    return-void
.end method

.method public final updateFillDialogTriggerIdsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3389
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    .line 3393
    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_13

    .line 3394
    :cond_f
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void
.end method

.method public final updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string p0, ""

    if-nez p1, :cond_5

    move-object p1, p0

    .line 3254
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3256
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1a

    .line 3259
    :cond_12
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3262
    :cond_1a
    :goto_1a
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_2d

    .line 3263
    invoke-static {p1, p0}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 3264
    invoke-virtual {p2, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_39

    .line 3266
    :cond_2d
    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    const p0, 0x8000

    .line 3268
    invoke-virtual {p2, p0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    :cond_39
    :goto_39
    return-void
.end method

.method public updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2949
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_20

    .line 2950
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const/4 v0, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne p4, v2, :cond_43

    .line 2955
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2956
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_33

    const-string p1, "Set the response has expired."

    .line 2957
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_33
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 2961
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 2963
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->resetInlineFillUiLocked()V

    return-void

    .line 2968
    :cond_43
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v4}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 2969
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v5, "updateLocked("

    if-eqz v4, :cond_7f

    .line 2970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", flags="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2970
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_7f
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 2974
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_bf

    .line 2975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): mCurrentViewId="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mExpiredResponse="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", viewState="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v4, :cond_11d

    if-eq p4, v3, :cond_d4

    if-eq p4, v5, :cond_d4

    if-ne p4, v6, :cond_ca

    goto :goto_d4

    .line 2997
    :cond_ca
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_d3

    const-string p0, "Ignoring specific action when viewState=null"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    return-void

    .line 2983
    :cond_d4
    :goto_d4
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating viewState for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v4

    .line 2985
    new-instance v7, Lcom/android/server/autofill/ViewState;

    if-eqz v4, :cond_f7

    const/16 v8, 0x80

    goto :goto_f8

    :cond_f7
    move v8, v3

    .line 2986
    :goto_f8
    invoke-direct {v7, p1, p0, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 2987
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_11c

    .line 2993
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_11b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateLocked(): ignoring view "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11b
    return-void

    :cond_11c
    move-object v4, v7

    :cond_11d
    if-eq p4, v3, :cond_2d9

    if-eq p4, v6, :cond_200

    const/4 p2, 0x0

    if-eq p4, v0, :cond_1be

    if-eq p4, v5, :cond_13d

    .line 3136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateLocked(): unknown action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f5

    .line 3014
    :cond_13d
    iget-boolean p4, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz p4, :cond_1ac

    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p4

    and-int/lit16 p4, p4, 0x200

    if-eqz p4, :cond_1ac

    .line 3016
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez p1, :cond_14f

    move-object p1, p2

    goto :goto_15b

    .line 3017
    :cond_14f
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_15b
    const/4 p4, 0x0

    if-nez p1, :cond_166

    new-array p1, p4, [Ljava/lang/Object;

    const-string p3, "URL bar value changed, but current value is null"

    .line 3020
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_166
    if-eqz p3, :cond_1a2

    .line 3023
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p5

    if-nez p5, :cond_16f

    goto :goto_1a2

    .line 3028
    :cond_16f
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3029
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_187

    .line 3030
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_186

    const-string p0, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_186
    return-void

    .line 3033
    :cond_187
    iget-boolean p1, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz p1, :cond_195

    .line 3037
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_194

    const-string p0, "Ignoring change on URL because session will finish when views are gone"

    .line 3038
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    return-void

    .line 3043
    :cond_195
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_19e

    const-string p1, "Finishing session because URL bar changed"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_19e
    invoke-virtual {p0, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    return-void

    :cond_1a2
    :goto_1a2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object p3, p1, p4

    const-string p3, "URL bar value changed to null or non-text: %s"

    .line 3025
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3047
    :cond_1ac
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f5

    .line 3048
    invoke-virtual {p0, p1, p3, v4}, Lcom/android/server/autofill/Session;->logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V

    .line 3049
    invoke-virtual {p0, p1, p3, v4, p5}, Lcom/android/server/autofill/Session;->updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V

    goto/16 :goto_2f5

    .line 3120
    :cond_1be
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p4, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {p3, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f5

    .line 3121
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p3, :cond_1e0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exiting view "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_1e0
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3123
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialog(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3124
    invoke-virtual {p0, v4}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 3127
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->resetInlineFillUiLocked()V

    .line 3128
    iput-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3130
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 3132
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    goto/16 :goto_2f5

    .line 3053
    :cond_200
    sget-boolean p4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p4, :cond_222

    if-eqz p2, :cond_222

    .line 3054
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entered on virtual child "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_222
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v0, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    .line 3059
    iget-object v0, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz p3, :cond_233

    .line 3061
    invoke-virtual {v4, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3064
    :cond_233
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v0, :cond_25d

    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_25d

    .line 3065
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_25c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25c
    return-void

    .line 3069
    :cond_25d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 3071
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_2a5

    .line 3075
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_290

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_290

    if-nez p4, :cond_285

    .line 3080
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_281

    const-string/jumbo p1, "trigger augmented autofill."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_281
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    goto :goto_28f

    .line 3083
    :cond_285
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_28f

    const-string/jumbo p0, "skip augmented autofill for same view: same view entered"

    .line 3084
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28f
    :goto_28f
    return-void

    .line 3089
    :cond_290
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    if-eqz p4, :cond_2a5

    .line 3091
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_2a4

    const-string/jumbo p0, "skip augmented autofill for same view: standard autofill disabled."

    .line 3092
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a4
    return-void

    .line 3099
    :cond_2a5
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    .line 3100
    invoke-virtual {p0, p1, v4, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z

    move-result p1

    if-eqz p1, :cond_2b1

    return-void

    .line 3104
    :cond_2b1
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object p1

    if-eqz p1, :cond_2cf

    .line 3105
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object p1

    .line 3106
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 3107
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3108
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3107
    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    :cond_2cf
    if-eqz p4, :cond_2d5

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabledAndStartInput()V

    return-void

    .line 3117
    :cond_2d5
    invoke-virtual {v4, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    goto :goto_2f5

    .line 3005
    :cond_2d9
    iget-object p1, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3006
    invoke-virtual {v4, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 3007
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result p1

    if-nez p1, :cond_2eb

    .line 3008
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 3010
    :cond_2eb
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    const/16 p1, 0x10

    .line 3011
    invoke-virtual {p0, v4, p1, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    :cond_2f5
    :goto_2f5
    return-void
.end method

.method public final updateTrackedIdsLocked()V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    .line 3564
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    if-nez v3, :cond_c

    return-void

    :cond_c
    const/4 v4, 0x0

    .line 3568
    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3570
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_57

    .line 3574
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    if-eqz v7, :cond_21

    const/16 v8, 0x4cc

    .line 3576
    invoke-virtual {v0, v8}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 3578
    :cond_21
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_2b

    move v9, v6

    goto :goto_2c

    :cond_2b
    move v9, v4

    .line 3579
    :goto_2c
    iput-boolean v9, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v9, :cond_50

    .line 3584
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 3586
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_42

    .line 3587
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3590
    :cond_42
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_51

    .line 3591
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_51

    :cond_50
    move-object v9, v2

    :cond_51
    :goto_51
    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_5a

    move v15, v4

    goto :goto_5b

    :cond_57
    move-object v7, v2

    move-object v9, v7

    move v8, v4

    :cond_5a
    move v15, v6

    .line 3606
    :goto_5b
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_94

    move v10, v4

    .line 3609
    :goto_62
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_94

    .line 3610
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/Dataset;

    .line 3611
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_75

    goto :goto_91

    :cond_75
    move v12, v4

    .line 3614
    :goto_76
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_91

    .line 3615
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillId;

    if-eqz v9, :cond_8a

    .line 3616
    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8e

    .line 3617
    :cond_8a
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    :cond_8e
    add-int/lit8 v12, v12, 0x1

    goto :goto_76

    :cond_91
    :goto_91
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    .line 3624
    :cond_94
    :try_start_94
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_d8

    .line 3625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTrackedIdsLocked(): "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " => "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " triggerId: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " saveOnFinish:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " flags: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " hasSaveInfo: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_ce

    move v4, v6

    :cond_ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    :cond_d8
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v9}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v13

    iget-boolean v14, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3630
    invoke-static {v2}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v16

    move-object/from16 v17, v7

    .line 3629
    invoke-interface/range {v11 .. v17}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_eb} :catch_ec

    goto :goto_f2

    :catch_ec
    move-exception v0

    const-string v2, "Cannot set tracked ids"

    .line 3632
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f2
    return-void
.end method

.method public final updateValuesForSaveLocked()V
    .registers 16

    .line 2683
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2685
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_109

    .line 2687
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    .line 2690
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    .line 2692
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v7, "updateValuesForSaveLocked(): updating "

    const-string v8, "AutofillSession"

    if-eqz v6, :cond_3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v6, v2

    .line 2694
    :goto_3e
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_d9

    .line 2695
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 2697
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2698
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    if-nez v11, :cond_70

    .line 2700
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_d5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 2703
    :cond_70
    aget-object v12, v5, v6

    if-nez v12, :cond_89

    .line 2705
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSaveLocked(): did not find node with id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 2708
    :cond_89
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_a7

    .line 2709
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_a7
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    if-nez v9, :cond_b1

    .line 2716
    invoke-virtual {p0, v0, v10, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v9

    :cond_b1
    if-eqz v9, :cond_b7

    .line 2719
    invoke-virtual {v12, v9}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_d5

    .line 2720
    :cond_b7
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_d5

    .line 2721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because it failed sanitization"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    :goto_d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3e

    .line 2727
    :cond_d9
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2729
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_105

    .line 2730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " before calling service.save()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    :cond_109
    return-void
.end method

.method public final updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 3183
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_15

    .line 3186
    :cond_a
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_15

    .line 3189
    :cond_11
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3191
    :cond_15
    :goto_15
    invoke-virtual {p0, v0, p3}, Lcom/android/server/autofill/Session;->updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V

    .line 3193
    invoke-virtual {p3, p2}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3197
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_89

    .line 3199
    invoke-virtual {v1, p2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "AutofillSession"

    if-eqz p2, :cond_4f

    .line 3202
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_44

    .line 3203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "ignoring autofilled change on id "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    :cond_44
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3208
    invoke-virtual {p3, v2}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    return-void

    .line 3210
    :cond_4f
    iget-object p2, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 3211
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p2

    const/4 v3, 0x4

    and-int/2addr p2, v3

    if-eqz p2, :cond_89

    .line 3213
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_79

    .line 3214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field changed after autofill on id "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_79
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3217
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    .line 3218
    invoke-virtual {p1, p4}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 3222
    :cond_89
    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 3223
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_b4

    .line 3224
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_ac

    .line 3225
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillInlineSessionController;->disableFilterMatching(Landroid/view/autofill/AutofillId;)V

    .line 3227
    :cond_ac
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z

    goto :goto_d3

    .line 3228
    :cond_b4
    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 3229
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_d3

    .line 3230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 3233
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3237
    :cond_d3
    :goto_d3
    invoke-virtual {p3, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public final writeLog(I)V
    .registers 3

    .line 4613
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 4648
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4649
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4650
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4651
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    if-eqz p1, :cond_15

    const-string p0, "AutofillSession"

    .line 4654
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_15
    const-string p0, "AutofillSession"

    .line 4656
    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void

    :catchall_1b
    move-exception p0

    .line 4651
    :try_start_1c
    monitor-exit p3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method
