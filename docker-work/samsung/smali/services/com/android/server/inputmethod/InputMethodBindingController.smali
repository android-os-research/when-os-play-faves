.class public final Lcom/android/server/inputmethod/InputMethodBindingController;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field public static final IME_VISIBLE_BIND_FLAGS:I = 0x2c081001

.field public static final TAG:Ljava/lang/String; = "InputMethodBindingController"

.field public static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurIntent:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurMethodUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mHasConnection:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mLastBindTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mMainConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRes:Landroid/content/res/Resources;

.field public mSelectedMethodId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field public mSupportsStylusHw:Z

.field public mVisibleBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mVisibleConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMethodMap(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVisibleBound(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 248
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$1;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 272
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$2;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    .line 107
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 108
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    .line 110
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 111
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 112
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 113
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 114
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final addFreshWindowToken()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdToShowImeLocked()I

    move-result v0

    .line 459
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 461
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurTokenDisplayIdLocked(I)V

    .line 468
    :try_start_12
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_3e

    :catch_1d
    move-exception v1

    .line 471
    sget-object v2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not add window token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for display "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return-void
.end method

.method public advanceSequenceNumber()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    if-gtz v0, :cond_a

    .line 208
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    :cond_a
    return-void
.end method

.method public final bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_37

    if-nez p1, :cond_7

    goto :goto_37

    .line 503
    :cond_7
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCurrentInputMethodService: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 506
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p0

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 505
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 499
    :cond_37
    :goto_37
    sget-object p2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", conn = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final bindCurrentInputMethodServiceMainConnection()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    const v1, 0x40800005    # 4.0000024f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    .line 524
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCurrentInputMethodServiceMainConnection mHasConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMainConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    return p0
.end method

.method public final bindCurrentInputMethodServiceVisibleConnection()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v1, 0x2c081001

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 514
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCurrentInputMethodServiceVisibleConnection mVisibleBound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVisibleConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method public bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 414
    sget-object p0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "mSelectedMethodId is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 418
    :cond_f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_7f

    .line 423
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 426
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 429
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCurrentMethod: mLastBindTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->addFreshWindowToken()V

    .line 433
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v0

    .line 438
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure connecting to input method service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 441
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 420
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearCurMethodAndSessions()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionsLocked()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const/4 v0, -0x1

    .line 385
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public final createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 5

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.client_label"

    const v1, 0x1040613

    .line 448
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getCurId()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurIntent()Landroid/content/Intent;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public getCurMethodUid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 227
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public getCurToken()Landroid/os/IBinder;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getLastBindTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 123
    iget-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-wide v0
.end method

.method public getSelectedMethodId()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public getSequenceNumber()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 197
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    return p0
.end method

.method public hasConnection()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 132
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    return p0
.end method

.method public isVisibleBound()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 235
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method public final removeCurrentToken()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    move-result v0

    .line 398
    sget-object v1, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method public setCurrentMethodNotVisible()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentMethodNotVisible: mVisibleBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 585
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz v0, :cond_38

    .line 589
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    :cond_38
    return-void
.end method

.method public setCurrentMethodVisible()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_10

    .line 540
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-nez v0, :cond_f

    .line 541
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceVisibleConnection()Z

    :cond_f
    return-void

    .line 547
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-nez v0, :cond_18

    .line 551
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    return-void

    .line 555
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    sub-long/2addr v0, v2

    .line 557
    sget-object v2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentMethodVisible: bindingDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mLastBindTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0xbb8

    cmp-long v3, v0, v3

    if-ltz v3, :cond_6e

    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 564
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string v0, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    .line 566
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 568
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    :cond_6e
    return-void
.end method

.method public setSelectedMethodId(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-void
.end method

.method public supportsStylusHandwriting()Z
    .registers 1

    .line 242
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public unbindCurrentMethod()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindCurrentMethod: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz v0, :cond_24

    .line 362
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 365
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    if-eqz v0, :cond_2b

    .line 366
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 369
    :cond_2b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 370
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->removeCurrentToken()V

    .line 371
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSystemUiLocked()V

    .line 373
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 377
    :cond_3a
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public final unbindMainConnection()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindMainConnection mMainConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasConnection:Z

    .line 482
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unbindVisibleConnection()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindVisibleConnection mVisibleConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 492
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
