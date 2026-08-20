.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field public static final APP_STATE_IDLE:I = 0x0

.field public static final APP_STATE_READY:I = 0x1

.field public static final APP_STATE_RUNNING:I = 0x2

.field public static final APP_STATE_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field public static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field public static final MAX_APP_TRANSITION_DURATION:I = 0xbb8

.field public static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field public static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field public static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field public static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field public static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field public static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field public static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field public static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field public static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field public static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final sFlagToString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field public mAppTransitionState:I

.field public final mContext:Landroid/content/Context;

.field public final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field public mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field public final mDefaultWindowAnimationStyleResId:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mGridLayoutRecentsEnabled:Z

.field public final mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyguardExitAnimationStartListener:Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;

.field public mLastChangingApp:Ljava/lang/String;

.field public mLastClosingApp:Ljava/lang/String;

.field public mLastOpeningApp:Ljava/lang/String;

.field public mLastUsedAppTransition:I

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field public mNextAppTransitionAnimationsSpecsPending:Z

.field public mNextAppTransitionBackgroundColor:I

.field public mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field public mNextAppTransitionEnter:I

.field public mNextAppTransitionExit:I

.field public mNextAppTransitionFlags:I

.field public mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field public mNextAppTransitionInPlace:I

.field public mNextAppTransitionIsSync:Z

.field public mNextAppTransitionOverrideRequested:Z

.field public mNextAppTransitionPackage:Ljava/lang/String;

.field public final mNextAppTransitionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNextAppTransitionResumedAffordanceRequested:Z

.field public mNextAppTransitionScaleUp:Z

.field public mNextAppTransitionType:I

.field public mOverrideTaskTransition:Z

.field public mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public static synthetic $r8$lambda$76wmvmDxBxaJJcSCryCbh4drZaE(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AppTransition;->lambda$handleAppTransitionTimeout$2(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtmvAz126jZqF-O1-KeCkHITn9Y(Lcom/android/server/wm/AppTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$NtxOrTq-_6B5RHmaXqlkWVSTDGQ(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->lambda$fetchAppTransitionSpecsFromFuture$1(Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovWj1GU-Dyl-6GvlYAUAdjIFGUA(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdoAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 1368
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x16

    .line 1377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_WITH_IN_WINDOW_ANIMATIONS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1376
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_APP_CRASHED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_OPEN_BEHIND"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 185
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 208
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 224
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 230
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 236
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 240
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 250
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 255
    new-instance v1, Landroid/os/Handler;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 257
    new-instance p2, Lcom/android/internal/policy/TransitionAnimation;

    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 258
    invoke-static {p3}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result p3

    const-string v1, "WindowManager"

    invoke-direct {p2, p1, p3, v1}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const-string/jumbo p2, "ro.recents.grid"

    .line 260
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    .line 264
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 266
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static appTransitionFlagsToString(I)Ljava/lang/String;
    .registers 6

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    sget-object v1, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1395
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_d

    .line 1396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    goto :goto_d

    .line 1401
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static appTransitionOldToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_62

    .line 1275
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_CHANGE"

    return-object p0

    :pswitch_1d
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_CLOSE"

    return-object p0

    :pswitch_20
    const-string p0, "TRANSIT_OLD_TASK_FRAGMENT_OPEN"

    return-object p0

    :pswitch_23
    const-string p0, "TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE"

    return-object p0

    :pswitch_26
    const-string p0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object p0

    :pswitch_29
    const-string p0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN"

    return-object p0

    :pswitch_2c
    const-string p0, "TRANSIT_OLD_KEYGUARD_UNOCCLUDE"

    return-object p0

    :pswitch_2f
    const-string p0, "TRANSIT_OLD_KEYGUARD_OCCLUDE"

    return-object p0

    :pswitch_32
    const-string p0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object p0

    :pswitch_35
    const-string p0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY"

    return-object p0

    :pswitch_38
    const-string p0, "TRANSIT_OLD_ACTIVITY_RELAUNCH"

    return-object p0

    :pswitch_3b
    const-string p0, "TRANSIT_OLD_TASK_OPEN_BEHIND"

    return-object p0

    :pswitch_3e
    const-string p0, "TRANSIT_OLD_WALLPAPER_INTRA_CLOSE"

    return-object p0

    :pswitch_41
    const-string p0, "TRANSIT_OLD_WALLPAPER_INTRA_OPEN"

    return-object p0

    :pswitch_44
    const-string p0, "TRANSIT_OLD_WALLPAPER_OPEN"

    return-object p0

    :pswitch_47
    const-string p0, "TRANSIT_OLD_WALLPAPER_CLOSE"

    return-object p0

    :pswitch_4a
    const-string p0, "TRANSIT_OLD_TASK_TO_BACK"

    return-object p0

    :pswitch_4d
    const-string p0, "TRANSIT_OLD_TASK_TO_FRONT"

    return-object p0

    :pswitch_50
    const-string p0, "TRANSIT_OLD_TASK_CLOSE"

    return-object p0

    :pswitch_53
    const-string p0, "TRANSIT_OLD_TASK_OPEN"

    return-object p0

    :pswitch_56
    const-string p0, "TRANSIT_OLD_ACTIVITY_CLOSE"

    return-object p0

    :pswitch_59
    const-string p0, "TRANSIT_OLD_ACTIVITY_OPEN"

    return-object p0

    :pswitch_5c
    const-string p0, "TRANSIT_OLD_NONE"

    return-object p0

    :pswitch_5f
    const-string p0, "TRANSIT_OLD_UNSET"

    return-object p0

    :pswitch_data_62
    .packed-switch -0x1
        :pswitch_5f
        :pswitch_5c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_3
        :pswitch_38
        :pswitch_3
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_3
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object p0

    :pswitch_1d
    const-string p0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object p0

    :pswitch_20
    const-string p0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object p0

    :pswitch_23
    const-string p0, "TRANSIT_CHANGE"

    return-object p0

    :pswitch_26
    const-string p0, "TRANSIT_RELAUNCH"

    return-object p0

    :pswitch_29
    const-string p0, "TRANSIT_TO_BACK"

    return-object p0

    :pswitch_2c
    const-string p0, "TRANSIT_TO_FRONT"

    return-object p0

    :pswitch_2f
    const-string p0, "TRANSIT_CLOSE"

    return-object p0

    :pswitch_32
    const-string p0, "TRANSIT_OPEN"

    return-object p0

    :pswitch_35
    const-string p0, "TRANSIT_NONE"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 1673
    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public static isActivityTransitOld(I)Z
    .registers 2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static isChangeTransitOld(I)Z
    .registers 2

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_b

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isClosingTransitOld(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static isKeyguardGoingAwayTransitOld(I)Z
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isKeyguardOccludeTransitOld(I)Z
    .registers 2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_b

    const/16 v0, 0x17

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isKeyguardTransit(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public static isKeyguardTransitOld(I)Z
    .registers 2

    .line 1515
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isNormalTransit(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public static isTaskCloseTransitOld(I)Z
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_b

    const/16 v0, 0xb

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isTaskOpenTransitOld(I)Z
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isTaskTransitOld(I)Z
    .registers 2

    .line 1519
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransitOld(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1520
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskCloseTransitOld(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private synthetic lambda$fetchAppTransitionSpecsFromFuture$1(Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 6

    const/4 v0, 0x0

    .line 1158
    :try_start_1
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1159
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_25

    :catch_d
    move-exception p1

    const-string v1, "WindowManager"

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch app transition specs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 1163
    :goto_25
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x0

    .line 1164
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1165
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1168
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1169
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1170
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$handleAppTransitionTimeout$2(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1649
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1650
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 1651
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v2, "\t* "

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1652
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v0, :cond_9

    const-string v1, "aborted"

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 304
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    return-void
.end method

.method public final appStateToString()Ljava/lang/String;
    .registers 3

    .line 1325
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "APP_STATE_TIMEOUT"

    return-object p0

    :cond_25
    const-string p0, "APP_STATE_RUNNING"

    return-object p0

    :cond_28
    const-string p0, "APP_STATE_READY"

    return-object p0

    :cond_2b
    const-string p0, "APP_STATE_IDLE"

    return-object p0
.end method

.method public final canOverridePendingAppTransition()Z
    .registers 2

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public canSkipFirstFrame()Z
    .registers 5

    .line 650
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    if-nez v2, :cond_1d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1d

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 654
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 439
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 440
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    const/4 v1, 0x0

    .line 441
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 443
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 444
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 445
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 446
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 447
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 448
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 451
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionResumedAffordanceRequested:Z

    return-void
.end method

.method public containsTransitRequest(I)Z
    .registers 2

    .line 1611
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    if-eqz p4, :cond_1f

    div-float v7, v3, v5

    goto :goto_21

    :cond_1f
    div-float v7, v5, v3

    :goto_21
    move v10, v7

    if-eqz p4, :cond_27

    div-float v7, v4, v6

    goto :goto_29

    :cond_27
    div-float v7, v6, v4

    :goto_29
    move v12, v7

    .line 618
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v8, 0x0

    if-nez v2, :cond_35

    move v9, v8

    goto :goto_3a

    .line 620
    :cond_35
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v11

    :goto_3a
    if-nez v2, :cond_3d

    goto :goto_42

    .line 622
    :cond_3d
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    :goto_42
    if-eqz p4, :cond_45

    move v3, v5

    :cond_45
    int-to-float v2, v9

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v3, v2

    if-eqz p4, :cond_4e

    move v4, v6

    :cond_4e
    int-to-float v3, v8

    add-float/2addr v4, v3

    div-float v14, v4, v2

    if-eqz p4, :cond_63

    .line 628
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v8, v2

    move v9, v10

    move v10, v3

    move v11, v12

    move v12, v4

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6d

    .line 629
    :cond_63
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 630
    :goto_6d
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 631
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 632
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 633
    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    if-eqz p4, :cond_95

    sub-int/2addr v3, v0

    goto :goto_97

    :cond_95
    sub-int v3, v0, v3

    :goto_97
    if-eqz p4, :cond_9b

    sub-int/2addr v4, v5

    goto :goto_9d

    :cond_9b
    sub-int v4, v5, v4

    :goto_9d
    const/4 v0, 0x0

    if-eqz p4, :cond_a8

    .line 636
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v1, v3, v0, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_af

    .line 637
    :cond_a8
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v1, v0, v3, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 638
    :goto_af
    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 639
    invoke-virtual {v7, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, p0

    .line 640
    invoke-virtual {p0, v7}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    return-object v7
.end method

.method public createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 588
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 2

    .line 592
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/WindowContainer;I)Landroid/view/animation/Animation;
    .registers 14

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 602
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p4

    .line 601
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/AppTransitionAnimationSpec;

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    if-eqz p4, :cond_15

    .line 604
    iget-object p4, p4, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v5, p4

    goto :goto_16

    :cond_15
    move-object v5, v1

    .line 605
    :goto_16
    iget-object p4, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz p4, :cond_1e

    .line 606
    iget-object p4, p4, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v6, p4

    goto :goto_1f

    :cond_1e
    move-object v6, v1

    :goto_1f
    iget-boolean v7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    .line 603
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_28

    .line 1416
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    const-string v1, "mNextAppTransitionPackage="

    if-nez v0, :cond_33

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6b

    .line 1421
    :cond_33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mNextAppTransitionExit=0x"

    .line 1425
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mNextAppTransitionBackgroundColor=0x"

    .line 1427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    :cond_6b
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_144

    goto/16 :goto_f6

    .line 1432
    :pswitch_72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f6

    .line 1453
    :pswitch_8f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_f6

    .line 1438
    :pswitch_b7
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1439
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    .line 1441
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartHeight="

    .line 1445
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1462
    :goto_f6
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_107

    .line 1463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1466
    :cond_107
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_143

    .line 1467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastChangingApp="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_143
    return-void

    :pswitch_data_144
    .packed-switch 0x2
        :pswitch_b7
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_72
    .end packed-switch
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1405
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1406
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1407
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v0, 0x10e00000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1408
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 1151
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    const/4 v1, 0x0

    .line 1154
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1155
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public freeze()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x7

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_14

    const-string v2, "freeze"

    .line 465
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 467
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(Z)V

    return-void
.end method

.method public getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 552
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method public getAppRootTaskClipMode()I
    .registers 3

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x5

    .line 960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x7

    .line 961
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 328
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/AppTransitionAnimationSpec;

    if-nez p1, :cond_10

    .line 331
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    :cond_10
    if-eqz p1, :cond_15

    .line 333
    iget-object p0, p1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public final getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 567
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz p0, :cond_d

    iget-object p0, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez p0, :cond_9

    goto :goto_d

    .line 572
    :cond_9
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    .line 569
    :cond_d
    :goto_d
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "WindowManager"

    const-string v1, "Starting rect for app requested, but none available"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1c
    return-void
.end method

.method public getDefaultWindowAnimationStyleResId()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 546
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return p0
.end method

.method public getFirstAppTransition()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1601
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1602
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1603
    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return v0
.end method

.method public getKeyguardTransition()I
    .registers 9

    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    return v1

    .line 1571
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1572
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    if-ne v0, v2, :cond_2d

    if-ne v3, v2, :cond_2d

    return v5

    .line 1580
    :cond_2d
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 1581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1580
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1582
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 1583
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1582
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    if-ne v0, v6, :cond_50

    if-eq v3, p0, :cond_46

    goto :goto_50

    :cond_46
    if-eq v0, v2, :cond_4b

    if-ge v0, v3, :cond_4b

    return v5

    :cond_4b
    if-eq v0, v2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v4

    :goto_4f
    return v1

    :cond_50
    :goto_50
    if-le v6, p0, :cond_53

    goto :goto_54

    :cond_53
    move v1, v4

    :goto_54
    return v1
.end method

.method public getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .registers 1

    .line 658
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object p0
.end method

.method public getTransitFlags()I
    .registers 1

    .line 969
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return p0
.end method

.method public goodToGo(ILcom/android/server/wm/ActivityRecord;)I
    .registers 14

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    .line 404
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_1c

    .line 405
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    .line 408
    :goto_1d
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v3

    .line 409
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result v4

    if-eqz v1, :cond_2c

    .line 410
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v5

    goto :goto_2e

    :cond_2c
    const-wide/16 v5, 0x0

    :goto_2e
    if-eqz v1, :cond_35

    .line 412
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v7

    goto :goto_39

    .line 413
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    :goto_39
    const-wide/16 v9, 0x78

    move-object v2, p0

    .line 407
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ZZJJJ)I

    move-result v2

    .line 419
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v3, :cond_48

    .line 420
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo(I)V

    goto :goto_7a

    .line 421
    :cond_48
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransitOld(I)Z

    move-result v3

    if-nez v3, :cond_52

    const/16 v3, 0xc

    if-ne p1, v3, :cond_7a

    :cond_52
    if-eqz v1, :cond_7a

    .line 423
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    if-nez p1, :cond_7a

    .line 425
    new-instance p1, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 431
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v3

    .line 432
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 431
    invoke-virtual {p1, v3, v4, v0, p0}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeOutAndInSequentially(JLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    :cond_7a
    :goto_7a
    return v2
.end method

.method public final handleAppTransitionTimeout()V
    .registers 18

    move-object/from16 v0, p0

    .line 1623
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1624
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_13

    .line 1626
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_141

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1628
    :cond_13
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionTimeoutLocked()V

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1630
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13c

    .line 1631
    :cond_34
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8a

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    int-to-long v5, v3

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    iget-object v7, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    int-to-long v11, v11

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v15, 0x15d

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v16

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v14, v4

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v3

    const/4 v3, 0x3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v3

    const/4 v3, 0x4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v3

    const v3, 0x148d2a13

    const/4 v5, 0x0

    invoke-static {v13, v3, v15, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8a
    const-string v3, "WindowManager"

    .line 1640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** APP TRANSITION TIMEOUT. displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_cc

    const-string v3, "WindowManager"

    .line 1642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* transit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_cc
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10e

    .line 1645
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_da
    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1646
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v6, :cond_da

    const-string v6, "WindowManager"

    .line 1647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "* "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", allDrawn=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    new-instance v6, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_da

    .line 1658
    :cond_10e
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-nez v3, :cond_132

    const-string v3, "WindowManager"

    .line 1659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "* Unknown apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 1660
    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 1666
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1668
    :cond_13c
    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_13 .. :try_end_13d} :catchall_141

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_141
    move-exception v0

    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isFetchingAppTransitionsSpecs()Z
    .registers 1

    .line 383
    iget-boolean p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return p0
.end method

.method public isIdle()Z
    .registers 1

    .line 316
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isNextAppTransitionCustomType()Z
    .registers 2

    .line 369
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNextAppTransitionNone()Z
    .registers 1

    .line 363
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isNextAppTransitionOpenCrossProfileApps()Z
    .registers 2

    .line 358
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isNextAppTransitionPackage(Ljava/lang/String;)Z
    .registers 3

    .line 373
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p0, :cond_10

    .line 374
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isNextAppTransitionResumedAffordanceRequested()Z
    .registers 1

    .line 1705
    iget-boolean p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionResumedAffordanceRequested:Z

    return p0
.end method

.method public isNextAppTransitionThumbnailDown()Z
    .registers 2

    .line 353
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isNextAppTransitionThumbnailUp()Z
    .registers 2

    .line 348
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isNextThumbnailTransitionAspectScaled()Z
    .registers 2

    .line 338
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_b

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isNextThumbnailTransitionScaleUp()Z
    .registers 1

    .line 344
    iget-boolean p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return p0
.end method

.method public isReady()Z
    .registers 3

    .line 291
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 308
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isSplitEmbeddedAppAnimating()Z
    .registers 5

    .line 1723
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1725
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_2c

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1727
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v3

    if-eqz v3, :cond_19

    return v2

    .line 1732
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 1733
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1734
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v3

    if-eqz v3, :cond_3e

    return v2

    .line 1739
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1740
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_63
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1741
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result v0

    if-eqz v0, :cond_63

    return v2

    :cond_76
    return v1
.end method

.method public isTimeout()Z
    .registers 2

    .line 320
    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isTransitionSet()Z
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUnoccluding()Z
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v12, p13

    .line 694
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 695
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_20

    return-object v11

    .line 702
    :cond_20
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v2, :cond_3d

    .line 703
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->flags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3d

    const-string v0, "SPEG"

    const-string/jumbo v1, "skip animation-leash of app_transition"

    .line 705
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 712
    :cond_3d
    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_4e

    .line 713
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v2

    if-nez v2, :cond_4c

    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    if-eqz v2, :cond_4e

    .line 714
    :cond_4c
    iput v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 718
    :cond_4e
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v2

    const/16 v3, 0x15

    const/4 v9, 0x0

    if-eqz v2, :cond_66

    if-eqz v14, :cond_66

    .line 719
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    if-ne v13, v3, :cond_60

    goto :goto_61

    :cond_60
    move v10, v9

    :goto_61
    invoke-virtual {v1, v2, v10}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_6a

    :cond_66
    const/16 v2, 0x16

    if-ne v13, v2, :cond_6d

    :goto_6a
    move-object v8, v12

    goto/16 :goto_4d3

    :cond_6d
    const/16 v4, 0x17

    if-ne v13, v4, :cond_7a

    if-nez v14, :cond_7a

    .line 724
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_6a

    :cond_7a
    const/16 v5, 0x1a

    if-ne v13, v5, :cond_7f

    goto :goto_6a

    :cond_7f
    const/16 v6, 0xa

    const/16 v8, 0x8

    const/4 v2, 0x6

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v11, 0x3

    if-eqz p11, :cond_c8

    if-eq v13, v2, :cond_8f

    if-eq v13, v8, :cond_8f

    if-ne v13, v6, :cond_c8

    .line 730
    :cond_8f
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v14}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 731
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v4, v5, v11

    const v2, 0x1e5501eb

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c6
    :goto_c6
    move-object v11, v1

    goto :goto_6a

    :cond_c8
    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v6, 0x7

    if-eqz p11, :cond_10d

    if-eq v13, v6, :cond_d5

    if-eq v13, v4, :cond_d5

    if-ne v13, v3, :cond_10d

    .line 737
    :cond_d5
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v14}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 738
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v4, v5, v11

    const v2, 0x1e5501eb

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c6

    :cond_10d
    const/16 v3, 0x12

    if-ne v13, v3, :cond_14e

    .line 742
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 743
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_11c

    .line 744
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object/from16 v3, p8

    goto :goto_11f

    :cond_11c
    move-object/from16 v3, p8

    const/4 v2, 0x0

    .line 742
    :goto_11f
    invoke-virtual {v1, v15, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 745
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x6b578ac9

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v3, v8, v10

    aput-object v4, v8, v7

    const/4 v2, 0x0

    invoke-static {v5, v6, v9, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    .line 748
    :cond_14e
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v3, v10, :cond_19b

    .line 749
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_15b

    .line 750
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_15d

    :cond_15b
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 749
    :goto_15d
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 751
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    if-eqz v2, :cond_168

    .line 752
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 754
    :cond_168
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1ef703be

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v4, v5, v11

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v6, v8, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_19b
    if-ne v3, v6, :cond_1d2

    .line 759
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 761
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x56e72bcc

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v3, v8, v10

    aput-object v4, v8, v7

    const/4 v2, 0x0

    invoke-static {v5, v6, v9, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_1d2
    if-ne v3, v8, :cond_216

    .line 766
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 768
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_1de

    .line 769
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v6, v2

    goto :goto_1df

    :cond_1de
    const/4 v6, 0x0

    :goto_1df
    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 766
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 770
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x1060b74d

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v3, v8, v10

    aput-object v4, v8, v7

    const/4 v2, 0x0

    invoke-static {v5, v6, v9, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_216
    if-ne v3, v7, :cond_258

    .line 775
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 776
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_221

    .line 777
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    goto :goto_222

    :cond_221
    const/4 v2, 0x0

    .line 775
    :goto_222
    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 778
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x78e35030

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    aput-object v4, v5, v7

    const/4 v2, 0x3

    aput-object v6, v5, v2

    const/4 v2, 0x0

    invoke-static {v8, v11, v9, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_258
    const/4 v8, 0x5

    if-eq v3, v11, :cond_467

    if-ne v3, v5, :cond_269

    move/from16 v19, v5

    move/from16 v20, v7

    move v13, v8

    move/from16 v21, v9

    move/from16 v22, v10

    const/4 v9, 0x3

    goto/16 :goto_471

    :cond_269
    if-eq v3, v8, :cond_3d5

    if-ne v3, v2, :cond_26f

    goto/16 :goto_3d5

    :cond_26f
    if-ne v3, v4, :cond_2a5

    if-eqz v14, :cond_2a5

    .line 816
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 817
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x5ebf881d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v9

    aput-object v3, v4, v10

    aput-object v5, v4, v7

    const/4 v2, 0x0

    invoke-static {v6, v8, v9, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    .line 821
    :cond_2a5
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v3

    if-eqz v3, :cond_305

    .line 824
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2c7

    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2c7

    if-nez v14, :cond_2c7

    .line 825
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 826
    sget-object v2, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2cc

    .line 830
    :cond_2c7
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_2cc
    const-wide/16 v2, 0x190

    .line 832
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 833
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_c6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x6efffb83

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v6, v5, v4

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v8, v11, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_305
    const/16 v3, 0x18

    if-eq v13, v3, :cond_373

    const/16 v11, 0x19

    if-eq v13, v11, :cond_36e

    const/16 v3, 0x1c

    if-eq v13, v3, :cond_368

    const/16 v3, 0x1d

    if-eq v13, v3, :cond_365

    packed-switch v13, :pswitch_data_522

    move v3, v9

    goto/16 :goto_376

    :pswitch_31b
    if-eqz v14, :cond_320

    move v3, v11

    goto/16 :goto_376

    :cond_320
    const/16 v3, 0x18

    goto/16 :goto_376

    :pswitch_324
    if-eqz v14, :cond_329

    const/16 v20, 0x16

    goto :goto_32b

    :cond_329
    const/16 v20, 0x17

    :goto_32b
    move/from16 v3, v20

    goto/16 :goto_376

    :pswitch_32f
    if-eqz v14, :cond_334

    const/16 v3, 0x14

    goto :goto_376

    :cond_334
    const/16 v3, 0x15

    goto :goto_376

    :pswitch_337
    if-eqz v14, :cond_33c

    const/16 v3, 0x10

    goto :goto_376

    :cond_33c
    const/16 v3, 0x11

    goto :goto_376

    :pswitch_33f
    if-eqz v14, :cond_344

    const/16 v3, 0x12

    goto :goto_376

    :cond_344
    const/16 v3, 0x13

    goto :goto_376

    :pswitch_347
    if-eqz v14, :cond_34c

    const/16 v3, 0xe

    goto :goto_376

    :cond_34c
    const/16 v3, 0xf

    goto :goto_376

    :pswitch_34f
    if-eqz v14, :cond_354

    const/16 v3, 0xc

    goto :goto_376

    :cond_354
    const/16 v3, 0xd

    goto :goto_376

    :pswitch_357
    if-eqz v14, :cond_35c

    const/16 v3, 0xa

    goto :goto_376

    :cond_35c
    const/16 v3, 0xb

    goto :goto_376

    :pswitch_35f
    if-eqz v14, :cond_363

    const/16 v4, 0x8

    :cond_363
    move v3, v4

    goto :goto_376

    :cond_365
    if-eqz v14, :cond_371

    goto :goto_370

    :cond_368
    if-eqz v14, :cond_36c

    :goto_36a
    move v3, v5

    goto :goto_376

    :cond_36c
    move v3, v8

    goto :goto_376

    :cond_36e
    :pswitch_36e
    if-eqz v14, :cond_371

    :goto_370
    move v6, v2

    :cond_371
    move v3, v6

    goto :goto_376

    :cond_373
    :pswitch_373
    if-eqz v14, :cond_36c

    goto :goto_36a

    :goto_376
    if-eqz v3, :cond_37d

    .line 911
    invoke-virtual {v0, v1, v3, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_37e

    :cond_37d
    const/4 v4, 0x0

    .line 914
    :goto_37e
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    if-eqz v6, :cond_396

    if-eqz v4, :cond_396

    if-eq v13, v2, :cond_390

    const/16 v2, 0x8

    if-eq v13, v2, :cond_390

    const/16 v2, 0xa

    if-eq v13, v2, :cond_390

    move v2, v9

    goto :goto_391

    :cond_390
    move v2, v10

    .line 925
    :goto_391
    iget-object v6, v12, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v6, v2, v14, v1}, Lcom/android/server/wm/DimAnimator;->createDimAnimationLayerIfNeeded(IZLandroid/view/WindowManager$LayoutParams;)V

    .line 929
    :cond_396
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_3d2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v3

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v11, 0xc4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v10

    aput-object v6, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v17, 0x3

    aput-object v1, v8, v17

    const/4 v6, 0x4

    aput-object v16, v8, v6

    const v1, 0x7f664f33

    const/4 v2, 0x0

    invoke-static {v5, v1, v11, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3d2
    move-object v11, v4

    goto/16 :goto_6a

    :cond_3d5
    :goto_3d5
    move v6, v5

    const/4 v2, 0x0

    const/16 v17, 0x3

    if-ne v3, v8, :cond_3dd

    move v1, v10

    goto :goto_3de

    :cond_3dd
    move v1, v9

    .line 799
    :goto_3de
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 801
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 802
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 801
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/AppTransitionAnimationSpec;

    .line 803
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-boolean v4, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_3f6

    .line 805
    iget-object v1, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v11, v1

    goto :goto_3f7

    :cond_3f6
    move-object v11, v2

    .line 806
    :goto_3f7
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_400

    .line 807
    iget-object v1, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object/from16 v16, v1

    goto :goto_402

    :cond_400
    move-object/from16 v16, v2

    :goto_402
    move-object v1, v3

    move-object/from16 v18, v2

    move/from16 v2, p3

    move v3, v4

    move/from16 v4, p5

    move/from16 v19, v6

    move/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v20, v7

    move-object/from16 v7, p8

    move v13, v8

    move-object/from16 v8, p9

    move/from16 v21, v9

    move-object/from16 v9, p10

    move/from16 v22, v10

    move/from16 v10, p12

    move-object/from16 v12, v16

    .line 803
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v11

    .line 808
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_463

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_434

    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_436

    :cond_434
    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    :goto_436
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x6f98dbad

    const/16 v7, 0xc0

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v1, v8, v21

    aput-object v2, v8, v22

    aput-object v3, v8, v20

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move/from16 v9, v17

    aput-object v1, v8, v9

    aput-object v4, v8, v19

    const/4 v10, 0x0

    invoke-static {v5, v6, v7, v10, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_463
    move-object/from16 v8, p13

    goto/16 :goto_4d3

    :cond_467
    move/from16 v19, v5

    move/from16 v20, v7

    move v13, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move v9, v11

    :goto_471
    const/4 v10, 0x0

    if-ne v3, v9, :cond_477

    move/from16 v1, v22

    goto :goto_479

    :cond_477
    move/from16 v1, v21

    .line 784
    :goto_479
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object/from16 v8, p13

    .line 786
    invoke-virtual {v0, v8}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/hardware/HardwareBuffer;

    move-result-object v6

    .line 787
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 789
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_48d

    .line 790
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v7, v2

    goto :goto_48e

    :cond_48d
    move-object v7, v10

    :goto_48e
    move/from16 v2, p3

    move-object/from16 v4, p6

    move/from16 v5, p2

    .line 787
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v11

    .line 791
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_4d3

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_4a7

    const-string v2, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_4a9

    :cond_4a7
    const-string v2, "ANIM_THUMBNAIL_SCALE_DOWN"

    :goto_4a9
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x6f98dbad

    const/16 v7, 0xc0

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v1, v12, v21

    aput-object v2, v12, v22

    aput-object v3, v12, v20

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v9

    aput-object v4, v12, v19

    invoke-static {v5, v6, v7, v10, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 935
    :cond_4d3
    :goto_4d3
    invoke-virtual {v0, v11}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    .line 939
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_505

    .line 940
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v1}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_505

    .line 941
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/PopOverController;->isPopOverActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_520

    .line 943
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v1}, Lcom/android/server/wm/PopOverState;->hasCustomAnimation()Z

    move-result v1

    if-eqz v1, :cond_4fe

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-nez v0, :cond_520

    :cond_4fe
    move/from16 v1, p2

    .line 945
    invoke-static {v1, v14, v15}, Lcom/android/server/wm/PopOverController;->createPopOverAnimation(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_520

    :cond_505
    move/from16 v1, p2

    .line 948
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    move-object v0, v2

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p13

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTransitionController;->loadAnimation(IZLcom/android/server/wm/WindowContainer;Lcom/android/internal/policy/TransitionAnimation;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eq v11, v0, :cond_520

    move-object v11, v0

    :cond_520
    :goto_520
    return-object v11

    nop

    :pswitch_data_522
    .packed-switch 0x6
        :pswitch_373
        :pswitch_36e
        :pswitch_35f
        :pswitch_357
        :pswitch_34f
        :pswitch_347
        :pswitch_33f
        :pswitch_337
        :pswitch_32f
        :pswitch_324
        :pswitch_31b
    .end packed-switch
.end method

.method public loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 4

    .line 563
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "WindowManager"

    .line 558
    invoke-static {p1, p2, p0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public final needsBoosting()Z
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 489
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq p0, v2, :cond_1e

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1e

    if-eqz v0, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1
.end method

.method public final notifyAppTransitionCancelledLocked(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 521
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 522
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x0

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final notifyAppTransitionPendingLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 515
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final notifyAppTransitionStartingLocked(ZZJJJ)I
    .registers 22

    move-object v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 536
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 537
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ZZJJJ)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    return v2
.end method

.method public final notifyAppTransitionTimeoutLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 527
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 528
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionTimeoutLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x7

    .line 1124
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1125
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1126
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    :cond_10
    return-void
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 9

    .line 983
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x1

    .line 985
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 986
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 987
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 988
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 989
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 990
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 991
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 992
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 993
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    :cond_1d
    return-void
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/hardware/HardwareBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p7, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :cond_d
    const/4 v0, 0x6

    .line 1036
    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1037
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    .line 1038
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1041
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_20
    return-void
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .registers 12

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0x8

    .line 1011
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1012
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_19
    return-void
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 13

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p4, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :cond_d
    const/4 v0, 0x6

    .line 1051
    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1052
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_5f

    const/4 p4, 0x0

    .line 1054
    :goto_15
    array-length v0, p1

    if-ge p4, v0, :cond_5f

    .line 1055
    aget-object v0, p1, p4

    if-eqz v0, :cond_5c

    .line 1057
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 1058
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    iget v3, v0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1057
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1060
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez v2, :cond_3d

    goto :goto_5c

    .line 1064
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p4, :cond_5c

    .line 1068
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1069
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 1070
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    move-object v2, p0

    .line 1069
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    :cond_5c
    :goto_5c
    add-int/lit8 p4, p4, 0x1

    goto :goto_15

    .line 1075
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1076
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1077
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    :cond_66
    return-void
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p3, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :cond_d
    const/4 v0, 0x6

    .line 1087
    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1088
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1089
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1090
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    :cond_1f
    return-void
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 3

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V

    return-void
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V
    .registers 11

    .line 1103
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x565929b6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    if-nez v0, :cond_55

    .line 1108
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v0, :cond_3f

    const-string v0, "WindowManager"

    const-string v1, "mRemoteAnimationController is not cleared, so needs cancel"

    .line 1109
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    const-string v1, "force cancel"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 1113
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0xa

    .line 1114
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1115
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1117
    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    :cond_55
    return-void
.end method

.method public overridePendingAppTransitionResumedAffordance()V
    .registers 3

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x1

    .line 1711
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 1712
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionResumedAffordanceRequested:Z

    const-string v1, "android"

    .line 1713
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    const v1, 0x10a00d6

    .line 1714
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1715
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1716
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    :cond_1c
    return-void
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .registers 12

    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x2

    .line 1001
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1002
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_18
    return-void
.end method

.method public overridePendingAppTransitionStartCrossProfileApps()V
    .registers 2

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0x9

    .line 1136
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_10
    return-void
.end method

.method public overridePendingAppTransitionThumb(Landroid/hardware/HardwareBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p5, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :cond_d
    const/4 v0, 0x4

    .line 1022
    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1023
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    .line 1024
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1026
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_20
    return-void
.end method

.method public postAnimationCallback()V
    .registers 4

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 974
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 976
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_17
    return-void
.end method

.method public final prepare()Z
    .registers 3

    .line 387
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public prepareAppTransition(II)Z
    .registers 10

    .line 1479
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 1482
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    iget p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 1486
    iget-object p1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1491
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_5b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    int-to-long v2, p2

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x6ceb288

    const/4 v5, 0x4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    const/4 p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, p1

    const/4 p1, 0x2

    aput-object p2, v6, p1

    const-string p1, "Prepare app transition: %s, displayId: %d Callers=%s"

    invoke-static {v0, v4, v5, p1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1497
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result p0

    return p0
.end method

.method public final putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V
    .registers 8

    .line 578
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, -0x1

    invoke-direct {v0, p1, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    return-void
.end method

.method public registerKeygaurdExitAnimationStartListener(Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mKeyguardExitAnimationStartListener:Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;

    return-void
.end method

.method public registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 496
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAppTransitionTimeoutCallbacks()V
    .registers 2

    .line 1698
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V
    .registers 4

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 1681
    new-instance v1, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_e
    return-void
.end method

.method public final setAppTransitionState(I)V
    .registers 2

    .line 474
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    return-void
.end method

.method public setIdle()V
    .registers 2

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    return-void
.end method

.method public setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 284
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    return-void
.end method

.method public setReady()V
    .registers 2

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    return-void
.end method

.method public setTimeout()V
    .registers 2

    const/4 v0, 0x3

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    return-void
.end method

.method public final shouldScaleDownThumbnailTransition(II)Z
    .registers 3

    .line 1618
    iget-boolean p0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 p1, 0x1

    if-nez p0, :cond_9

    if-ne p2, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    :goto_9
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransitionRequests=["

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_24

    const-string v2, ", "

    .line 1183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_11

    :cond_31
    const-string v1, "]"

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mNextAppTransitionFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 1190
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->appTransitionFlagsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transferFrom(Lcom/android/server/wm/AppTransition;)Z
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result p0

    return p0
.end method

.method public final transitTypeToString()Ljava/lang/String;
    .registers 3

    .line 1340
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_36

    .line 1360
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object p0

    :pswitch_1d
    const-string p0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object p0

    :pswitch_20
    const-string p0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object p0

    :pswitch_23
    const-string p0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object p0

    :pswitch_26
    const-string p0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object p0

    :pswitch_29
    const-string p0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object p0

    :pswitch_2c
    const-string p0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object p0

    :pswitch_2f
    const-string p0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object p0

    :pswitch_32
    const-string p0, "NEXT_TRANSIT_TYPE_NONE"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_5
        :pswitch_1a
    .end packed-switch
.end method

.method public unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateBooster()V
    .registers 2

    .line 484
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    return-void
.end method
