.class public Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "AccessibilityUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilityUserState"


# instance fields
.field public final mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field public final mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBindInstantServiceAllowed:Z

.field public final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBoundServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public final mCrashedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusColor:I

.field public final mFocusColorDefaultValue:I

.field public mFocusStrokeWidth:I

.field public final mFocusStrokeWidthDefaultValue:I

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstalledShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mInteractiveUiTimeout:I

.field public mIsAMEnabled:Z

.field public mIsAudioDescriptionByDefaultRequested:Z

.field public mIsAutoActionEnabled:Z

.field public mIsAutoclickEnabled:Z

.field public mIsBounceKeysEnabled:Z

.field public mIsCornerActionEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsGestureNaviBar:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsSlowKeysEnabled:Z

.field public mIsStickyKeysEnabled:Z

.field public mIsTapDurationEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchBlockingEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public mMagnificationCapabilities:I

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationModes:Landroid/util/SparseIntArray;

.field public mNonInteractiveUiTimeout:I

.field public mRequestMultiFingerGestures:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public mServiceHandlesDoubleTap:Z

.field public final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

.field public mSoftKeyboardShowMode:I

.field public final mSupportWindowMagnification:Z

.field public mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public mUserInteractiveUiTimeout:I

.field public mUserNonInteractiveUiTimeout:I


# direct methods
.method public static synthetic $r8$lambda$_XkBoubKqkCs1YeUhOg_UPjXotM(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->lambda$removeShortcutTargetLocked$0(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V
    .registers 6

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 111
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 146
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    const/4 v1, -0x1

    .line 147
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 152
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 154
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 156
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 176
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 194
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 195
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 196
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 197
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105000b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    .line 199
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1060080

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    .line 201
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 202
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 204
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-nez p1, :cond_6

    goto :goto_36

    .line 1118
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 1121
    :cond_e
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_15

    return v0

    .line 1125
    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1127
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    :cond_36
    :goto_36
    return v0
.end method

.method public static synthetic lambda$removeShortcutTargetLocked$0(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 952
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_e

    .line 955
    :cond_9
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 296
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onAdded()V

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_1e
    return-void
.end method

.method public disableShortcutMagnificationLocked()V
    .registers 3

    .line 878
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string v0, "User state["

    .line 584
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "     attributes:{id="

    .line 586
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsTapDurationEnabled="

    .line 588
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsTouchBlockingEnabled="

    .line 591
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsStickyKeysEnabled="

    .line 594
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsBounceKeysEnabled="

    .line 595
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsSlowKeysEnabled="

    .line 596
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsAutoActionEnabled="

    .line 599
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsCornerActionEnabled="

    .line 600
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsAMEnabled="

    .line 603
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", autoActionEnabled="

    .line 606
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", cornerActionEnabled="

    .line 607
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", AmEnabled="

    .line 610
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", touchExplorationEnabled="

    .line 612
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", serviceHandlesDoubleTap="

    .line 613
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 614
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", requestMultiFingerGestures="

    .line 615
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 616
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", requestTwoFingerPassthrough="

    .line 617
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 618
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", sendMotionEventsEnabled"

    .line 619
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", displayMagnificationEnabled="

    .line 620
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", autoclickEnabled="

    .line 622
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", nonInteractiveUiTimeout="

    .line 623
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", interactiveUiTimeout="

    .line 624
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", installedServiceCount="

    .line 625
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", magnificationMode="

    .line 626
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", magnificationCapabilities="

    .line 627
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 628
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", audioDescriptionByDefaultEnabled="

    .line 629
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 630
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", magnificationFollowTypingEnabled="

    .line 631
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 632
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "}"

    .line 633
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 634
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "     shortcut key:{"

    .line 635
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 645
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 646
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     button:{"

    .line 647
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 656
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 658
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     direct access:{"

    .line 660
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 661
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 662
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     button target:{"

    .line 664
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 665
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "     installed services: {"

    .line 669
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 670
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 671
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1ef
    if-ge v3, v1, :cond_21f

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 674
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ef

    :cond_21f
    const-string v1, "     }"

    .line 676
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 677
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "     Bound services:{"

    .line 679
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 680
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_233
    const-string v4, ", "

    if-ge v3, v1, :cond_252

    if-lez v3, :cond_244

    .line 683
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 684
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v4, "                     "

    .line 685
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 687
    :cond_244
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 688
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_233

    .line 690
    :cond_252
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Enabled services:{"

    .line 691
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 692
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 693
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_28a

    .line 694
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 695
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 696
    :goto_273
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_28a

    .line 697
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 698
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 699
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_273

    .line 702
    :cond_28a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Binding services:{"

    .line 703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 704
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 705
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2c2

    .line 706
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 707
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 708
    :goto_2ab
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2c2

    .line 709
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 710
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 711
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2ab

    .line 714
    :cond_2c2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Crashed services:{"

    .line 715
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 716
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 717
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2fa

    .line 718
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 719
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 720
    :goto_2e3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2fa

    .line 721
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 722
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 723
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2e3

    .line 726
    :cond_2fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Client list info:{"

    .line 727
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    const-string p3, "          Client list "

    invoke-virtual {p1, p2, p3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "          Registered clients:{"

    .line 729
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    :goto_30e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-ge v2, p1, :cond_32a

    .line 731
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 732
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 733
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_30e

    :cond_32a
    const-string/jumbo p0, "}]"

    .line 735
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBindInstantServiceAllowedLocked()Z
    .registers 1

    .line 431
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return p0
.end method

.method public getBindingServicesLocked()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    return-object p0
.end method

.method public getBoundServicesLocked()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getClientStateLocked(ZI)I
    .registers 4

    if-nez p1, :cond_b

    .line 484
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    if-eqz p1, :cond_12

    .line 490
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_18

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isA11yHelperIsBound()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_18
    or-int/lit8 p1, p1, 0x2

    or-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x10

    .line 502
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    if-eqz v0, :cond_24

    or-int/lit8 p1, p1, 0x4

    .line 505
    :cond_24
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    if-eqz p0, :cond_2a

    or-int/lit16 p1, p1, 0x1000

    :cond_2a
    or-int p0, p1, p2

    return p0
.end method

.method public getCrashedServicesLocked()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    return-object p0
.end method

.method public getEnabledServicesLocked()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    return-object p0
.end method

.method public getFocusColorLocked()I
    .registers 1

    .line 1147
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    return p0
.end method

.method public getFocusStrokeWidthLocked()I
    .registers 1

    .line 1139
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    return p0
.end method

.method public getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    const/4 v0, 0x0

    .line 963
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 964
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 965
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInteractiveUiTimeoutLocked()I
    .registers 1

    .line 791
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return p0
.end method

.method public getLastSentClientStateLocked()I
    .registers 1

    .line 799
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return p0
.end method

.method public getMagnificationCapabilitiesLocked()I
    .registers 1

    .line 842
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    return p0
.end method

.method public getMagnificationModeLocked(I)I
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 826
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    :cond_d
    return v0
.end method

.method public getNonInteractiveUiTimeoutLocked()I
    .registers 1

    .line 980
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return p0
.end method

.method public final getOriginalHardKeyboardValue()Z
    .registers 4

    .line 556
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public final getSecureIntForUser(Ljava/lang/String;II)I
    .registers 4

    .line 571
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getServiceChangingSoftKeyboardModeLocked()Landroid/content/ComponentName;
    .registers 1

    .line 1003
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .registers 2

    .line 976
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-object p0
.end method

.method public getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 895
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    return-object p0

    :cond_6
    if-nez p1, :cond_b

    .line 897
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 901
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoftKeyboardShowModeLocked()I
    .registers 1

    .line 402
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    return p0
.end method

.method public final getSoftKeyboardValueFromSettings()I
    .registers 4

    .line 550
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getTargetAssignedToAccessibilityButton()Ljava/lang/String;
    .registers 1

    .line 1089
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-object p0
.end method

.method public getUserInteractiveUiTimeoutLocked()I
    .registers 1

    .line 1067
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return p0
.end method

.method public getUserNonInteractiveUiTimeoutLocked()I
    .registers 1

    .line 1075
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return p0
.end method

.method public final hasUserOverriddenHardKeyboardSetting()Z
    .registers 4

    .line 524
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public final isA11yHelperIsBound()Z
    .registers 6

    .line 214
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 216
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 217
    iget-object v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.a11yhelper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method public isAMEnabledLocked()Z
    .registers 1

    .line 766
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    return p0
.end method

.method public isAccessibilityFocusOnlyInActiveWindow()Z
    .registers 1

    .line 996
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return p0
.end method

.method public isAudioDescriptionByDefaultEnabledLocked()Z
    .registers 1

    .line 1020
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    return p0
.end method

.method public isAutoActionEnabledLocked()Z
    .registers 1

    .line 748
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    return p0
.end method

.method public isAutoclickEnabledLocked()Z
    .registers 1

    .line 739
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return p0
.end method

.method public isCornerActionEnabledLocked()Z
    .registers 1

    .line 756
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    return p0
.end method

.method public isDisplayMagnificationEnabledLocked()Z
    .registers 1

    .line 775
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    return p0
.end method

.method public isFilterKeyEventsEnabledLocked()Z
    .registers 1

    .line 783
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return p0
.end method

.method public isHandlingAccessibilityEventsLocked()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isMagnificationFollowTypingEnabled()Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    return p0
.end method

.method public isMultiFingerGesturesEnabledLocked()Z
    .registers 1

    .line 1044
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return p0
.end method

.method public isPerformGesturesEnabledLocked()Z
    .registers 1

    .line 988
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 1

    .line 1059
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    return p0
.end method

.method public isServiceHandlesDoubleTapEnabledLocked()Z
    .registers 1

    .line 1036
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return p0
.end method

.method public isShortcutMagnificationEnabledLocked()Z
    .registers 3

    .line 810
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 811
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 812
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public isShortcutTargetInstalledLocked(Ljava/lang/String;)Z
    .registers 6

    .line 914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 917
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 921
    :cond_12
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_19

    return v1

    .line 925
    :cond_19
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 926
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    .line 929
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    move v0, v1

    .line 932
    :goto_2c
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 933
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    return v2

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    return v1
.end method

.method public isTextHighContrastEnabledLocked()Z
    .registers 1

    .line 1012
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return p0
.end method

.method public isTouchExplorationEnabledLocked()Z
    .registers 1

    .line 1028
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return p0
.end method

.method public isTwoFingerPassthroughEnabledLocked()Z
    .registers 1

    .line 1051
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    return p0
.end method

.method public isValidMagnificationModeLocked(I)Z
    .registers 4

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p1

    .line 181
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    return v1

    .line 185
    :cond_d
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public onSwitchToAnotherUserLocked()V
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->unbindAllServicesLocked()V

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 244
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 247
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 249
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    .line 250
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v1, 0x0

    .line 251
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 252
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 253
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 254
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 256
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 257
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 259
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 260
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 261
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 262
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 263
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    const/4 v1, 0x1

    .line 264
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 268
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 274
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 282
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 283
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 284
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    .line 290
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final putSecureIntForUser(Ljava/lang/String;II)V
    .registers 6

    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 577
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 579
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    throw p0
.end method

.method public reconcileSoftKeyboardModeWithSettingsLocked()V
    .registers 6

    .line 410
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 412
    :goto_f
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1d

    if-nez v0, :cond_1d

    .line 416
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 417
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserOverridesHardKeyboardSetting()V

    .line 422
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-eq v0, v1, :cond_36

    .line 423
    sget-object v0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 425
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    :cond_36
    return-void
.end method

.method public removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 315
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 320
    :cond_1f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 321
    :goto_24
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_40

    .line 322
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 325
    :cond_40
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z
    .registers 3

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object p0

    new-instance p1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final saveSoftKeyboardValueToSettings(I)V
    .registers 5

    .line 541
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    and-int/lit8 v0, v0, -0x4

    or-int/2addr p1, v0

    .line 545
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 339
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object p0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashed service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAMEnabledLocked(Z)V
    .registers 2

    .line 770
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    return-void
.end method

.method public setAccessibilityFocusOnlyInActiveWindow(Z)V
    .registers 2

    .line 1000
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return-void
.end method

.method public setAudioDescriptionByDefaultEnabledLocked(Z)V
    .registers 2

    .line 1024
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    return-void
.end method

.method public setAutoActionEnabledLocked(Z)V
    .registers 2

    .line 752
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    return-void
.end method

.method public setAutoclickEnabledLocked(Z)V
    .registers 2

    .line 743
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return-void
.end method

.method public setBindInstantServiceAllowedLocked(Z)V
    .registers 2

    .line 436
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return-void
.end method

.method public setCornerActionEnabledLocked(Z)V
    .registers 2

    .line 760
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    return-void
.end method

.method public setDisplayMagnificationEnabledLocked(Z)V
    .registers 2

    .line 779
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    return-void
.end method

.method public setFilterKeyEventsEnabledLocked(Z)V
    .registers 2

    .line 787
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return-void
.end method

.method public setFocusAppearanceLocked(II)V
    .registers 3

    .line 1157
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 1158
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    return-void
.end method

.method public setInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 795
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return-void
.end method

.method public setLastSentClientStateLocked(I)V
    .registers 2

    .line 803
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return-void
.end method

.method public setMagnificationCapabilitiesLocked(I)V
    .registers 2

    .line 853
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 857
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setMagnificationModeLocked(II)V
    .registers 3

    .line 871
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public setMultiFingerGesturesLocked(Z)V
    .registers 2

    .line 1048
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return-void
.end method

.method public setNonInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 984
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return-void
.end method

.method public final setOriginalHardKeyboardValue(Z)V
    .registers 6

    .line 531
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const v3, -0x20000001

    and-int/2addr v0, v3

    if-eqz p1, :cond_11

    const/high16 v2, 0x20000000

    :cond_11
    or-int p1, v0, v2

    .line 536
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public setPerformGesturesEnabledLocked(Z)V
    .registers 2

    .line 992
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .registers 2

    .line 1063
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    return-void
.end method

.method public setServiceChangingSoftKeyboardModeLocked(Landroid/content/ComponentName;)V
    .registers 2

    .line 1008
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    return-void
.end method

.method public setServiceHandlesDoubleTapLocked(Z)V
    .registers 2

    .line 1040
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return-void
.end method

.method public setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_11

    .line 365
    sget-object p0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid soft keyboard mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 368
    :cond_11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_16

    return v2

    :cond_16
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_3a

    .line 373
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->hasUserOverriddenHardKeyboardSetting()Z

    move-result v3

    if-eqz v3, :cond_22

    return v0

    .line 380
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_34

    .line 381
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_31

    move v0, v2

    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setOriginalHardKeyboardValue(Z)V

    .line 384
    :cond_34
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    goto :goto_45

    :cond_3a
    if-ne v3, v1, :cond_45

    .line 387
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getOriginalHardKeyboardValue()Z

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 386
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 390
    :cond_45
    :goto_45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->saveSoftKeyboardValueToSettings(I)V

    .line 391
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 392
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 393
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_53
    if-ltz p1, :cond_65

    .line 394
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 395
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    invoke-virtual {p2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_53

    :cond_65
    return v2
.end method

.method public setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V
    .registers 2

    .line 1099
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-void
.end method

.method public setTextHighContrastEnabledLocked(Z)V
    .registers 2

    .line 1016
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return-void
.end method

.method public setTouchExplorationEnabledLocked(Z)V
    .registers 2

    .line 1032
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return-void
.end method

.method public setTwoFingerPassthroughLocked(Z)V
    .registers 2

    .line 1055
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    return-void
.end method

.method public setUserInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 1071
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return-void
.end method

.method public setUserNonInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 1079
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return-void
.end method

.method public final setUserOverridesHardKeyboardSetting()V
    .registers 4

    .line 516
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    .line 518
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public final unbindAllServicesLocked()V
    .registers 3

    .line 562
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 563
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-lez v0, :cond_15

    const/4 v1, 0x0

    .line 566
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public updateCrashedServicesIfNeededLocked()V
    .registers 5

    .line 464
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    .line 465
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 467
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 469
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 470
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 472
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_31
    return-void
.end method
