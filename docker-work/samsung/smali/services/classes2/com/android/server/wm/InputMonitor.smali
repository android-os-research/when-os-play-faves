.class public final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
    }
.end annotation


# instance fields
.field public mActiveRecentsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDisableWallpaperTouchEvents:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayRemoved:Z

.field public mDisplayWidth:I

.field public mFreezeExceptionPkg:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mInputFocus:Landroid/os/IBinder;

.field public final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpRegion2:Landroid/graphics/Region;

.field public final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field public final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field public mUpdateInputWindowsImmediately:Z

.field public mUpdateInputWindowsNeeded:Z

.field public mUpdateInputWindowsPending:Z


# direct methods
.method public static synthetic $r8$lambda$6-4EGrtubVA8TazJMa7XwJ2uXwA(Lcom/android/server/wm/InputMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->lambda$onDisplayRemoved$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveRecentsActivity(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveRecentsLayerRef(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayRemoved(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateInputForAllWindowsConsumer(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateInputWindowsImmediately(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisableWallpaperTouchEvents(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateInputWindowsNeeded(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateInputWindowsPending(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInputFocusRequest(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 105
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 107
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion2:Landroid/graphics/Region;

    .line 124
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 135
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 136
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 164
    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputWindows-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 167
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 168
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 169
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 170
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 171
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance p1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-void
.end method

.method public static getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 477
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static isTrustedOverlay(I)Z
    .registers 2

    const/16 v0, 0x7f7

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f2

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f0

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7ef

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f9

    if-ne p0, v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    :goto_3c
    return p0
.end method

.method private synthetic lambda$onDisplayRemoved$0()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    return-void
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    .line 784
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 788
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    const/4 v1, 0x2

    .line 790
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 792
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v1

    .line 796
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v2

    .line 791
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 797
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->clearTouchableRegion()V

    .line 800
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->clearPointerTouchableRegion()V

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 776
    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 777
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    return-void
.end method

.method public static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 766
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1a

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update InputWindowHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_1a
    invoke-virtual {p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 770
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_23
    return-void
.end method

.method public static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .registers 7

    .line 814
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 816
    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    const/16 p2, 0x7df

    .line 817
    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    const/4 p2, 0x1

    .line 818
    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Z)V

    .line 819
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 820
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    return-void
.end method


# virtual methods
.method public final addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 190
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 16

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", display: "

    if-nez v0, :cond_7f

    .line 261
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    .line 263
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_9e

    goto :goto_48

    :sswitch_25
    const-string/jumbo p3, "wallpaper_input_consumer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2f

    goto :goto_48

    :cond_2f
    const/4 p1, 0x2

    goto :goto_48

    :sswitch_31
    const-string/jumbo p3, "pip_input_consumer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3b

    goto :goto_48

    :cond_3b
    const/4 p1, 0x1

    goto :goto_48

    :sswitch_3d
    const-string/jumbo p3, "recents_animation_input_consumer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_47

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    :goto_48
    packed-switch p1, :pswitch_data_ac

    .line 274
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal input consumer : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :pswitch_6a
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p3, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_7b

    .line 271
    :pswitch_73
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p3, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p3, p3, -0x5

    iput p3, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 277
    :goto_7b
    :pswitch_7b
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    return-void

    .line 257
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Existing input consumer found with name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_9e
    .sparse-switch
        -0x5af18033 -> :sswitch_3d
        0x3d13fc73 -> :sswitch_31
        0x5463dca8 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_73
        :pswitch_7b
        :pswitch_6a
    .end packed-switch
.end method

.method public destroyInputConsumer(Ljava/lang/String;)Z
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return p1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_3c
    return-void
.end method

.method public getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/InputConsumerImpl;

    return-object p0
.end method

.method public getRequestFocusPkg()Ljava/lang/String;
    .registers 1

    .line 840
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mFreezeExceptionPkg:Ljava/lang/String;

    return-object p0
.end method

.method public layoutInputConsumers(II)V
    .registers 4

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(IIZ)V

    return-void
.end method

.method public layoutInputConsumers(IIZ)V
    .registers 9

    .line 221
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    if-ne v0, p2, :cond_b

    if-nez p3, :cond_b

    return-void

    .line 227
    :cond_b
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 228
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    const-wide/16 v0, 0x20

    :try_start_11
    const-string v2, "layoutInputConsumer"

    .line 230
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_40

    if-eqz p3, :cond_30

    .line 234
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->forceLayout(Landroid/view/SurfaceControl$Transaction;II)V

    goto :goto_3d

    .line 238
    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_44

    :goto_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 241
    :cond_40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_44
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 242
    throw p0
.end method

.method public onDisplayRemoved()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InputMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4

    .line 584
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_24

    .line 585
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 590
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_24
    return-void
.end method

.method public populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 284
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 285
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, v1

    .line 284
    :goto_c
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V

    .line 286
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 287
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    .line 288
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    .line 289
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPaused(Z)V

    .line 290
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setWindowToken(Landroid/view/IWindow;)V

    .line 292
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 299
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_49

    or-int/lit8 v4, v4, 0x20

    .line 303
    :cond_49
    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsFlags(I)V

    .line 305
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsSamsungFlags(I)V

    .line 307
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 308
    invoke-static {v5, v4, v0}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v0

    .line 310
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v4

    .line 307
    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 312
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 320
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayId()I

    move-result v4

    if-ne v0, v4, :cond_8a

    :cond_88
    move v0, v3

    goto :goto_8b

    :cond_8a
    move v0, v2

    .line 322
    :goto_8b
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 325
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    if-nez v0, :cond_a8

    move v0, v3

    goto :goto_a9

    :cond_a8
    move v0, v2

    .line 327
    :goto_a9
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setHasWallpaper(Z)V

    .line 332
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setSurfaceInset(I)V

    .line 336
    iget v0, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_c0

    div-float v0, v4, v0

    goto :goto_c1

    :cond_c0
    move v0, v4

    :goto_c1
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 341
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v5

    if-eqz v5, :cond_e7

    if-eqz v0, :cond_e7

    .line 342
    iget v5, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v6, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v4, v0

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    goto :goto_eb

    :cond_e7
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p1, v0, v0, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    .line 350
    :cond_eb
    :goto_eb
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_f8

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_f8

    .line 351
    iget v0, p2, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    .line 357
    :cond_f8
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 361
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_12b

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_12b

    .line 362
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_12b

    .line 364
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-nez v4, :cond_12b

    .line 372
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 373
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_129

    .line 374
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    move-object v1, v0

    :cond_129
    move v2, v3

    goto :goto_13f

    .line 376
    :cond_12b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_13f

    .line 377
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 380
    :cond_13f
    :goto_13f
    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    .line 381
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    if-nez v2, :cond_178

    .line 385
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 386
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion2:Landroid/graphics/Region;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_173

    .line 389
    :cond_15f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion2:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion2:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 393
    :cond_16c
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V

    .line 395
    :goto_173
    iget-object p2, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegion(Landroid/graphics/Region;)V

    .line 399
    :cond_178
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion2:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPointerTouchableRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public final requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne p1, v0, :cond_5

    return-void

    .line 554
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    const p1, 0xf231

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "reason=UpdateInputWindows"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 558
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_46

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x94479f7

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :cond_46
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 566
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x20

    .line 568
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_67

    add-int/2addr p2, v3

    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_60

    goto :goto_67

    .line 572
    :cond_60
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFreezeExceptionPkg:Ljava/lang/String;

    nop

    :cond_67
    :goto_67
    return-void
.end method

.method public resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4

    .line 595
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_25

    .line 596
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 600
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 p1, 0x1

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_25
    return-void
.end method

.method public final scheduleUpdateInputWindows()V
    .registers 2

    .line 417
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_5

    return-void

    .line 421
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v2, v1

    goto :goto_f

    .line 472
    :cond_a
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_f
    iput-object v2, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    goto :goto_19

    .line 473
    :cond_14
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_19
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    .line 580
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 579
    :goto_f
    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 12

    .line 444
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x55b8d160

    const/4 v7, 0x4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v0

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    if-eqz p1, :cond_26

    .line 446
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 447
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v1, v0, :cond_2b

    return-void

    :cond_2b
    if-eqz p1, :cond_37

    .line 451
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 455
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 458
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_3f

    .line 461
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_3f
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public final updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 8

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_37

    if-eqz v0, :cond_37

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 489
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 491
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 492
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 494
    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_28
    move v3, v1

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    if-eqz v3, :cond_37

    .line 496
    iget-object v0, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :cond_37
    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    .line 502
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_3e

    :cond_3d
    move-object v4, v3

    :goto_3e
    if-nez v4, :cond_89

    if-eqz p1, :cond_4d

    .line 504
    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v0, p1, :cond_4d

    return-void

    .line 520
    :cond_4d
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-eqz p1, :cond_86

    .line 527
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x774c1078

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0, v4, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6d
    const p1, 0xf231

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Requesting to set focus to null window"

    aput-object v4, v0, v2

    const-string/jumbo v2, "reason=UpdateInputWindows"

    aput-object v2, v0, v1

    .line 531
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 533
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;

    .line 535
    :cond_86
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void

    .line 539
    :cond_89
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_9a

    goto :goto_a2

    .line 546
    :cond_9a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    .line 540
    :cond_a2
    :goto_a2
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_b6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x2d58587f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    :cond_b6
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void
.end method

.method public updateInputWindowsImmediately(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 2

    if-nez p1, :cond_7

    .line 410
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez p1, :cond_7

    return-void

    .line 413
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    return-void
.end method
