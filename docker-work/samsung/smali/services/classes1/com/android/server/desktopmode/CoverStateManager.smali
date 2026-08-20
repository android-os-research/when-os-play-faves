.class public Lcom/android/server/desktopmode/CoverStateManager;
.super Ljava/lang/Object;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/CoverStateManager$Authenticator;
    }
.end annotation


# static fields
.field public static final ACTION_AUTH_STOPPED:Ljava/lang/String; = "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

.field public static final COVER_SUPPORT_STATE_FULL:I = 0x1

.field public static final COVER_SUPPORT_STATE_NONE:I = 0x3

.field public static final COVER_SUPPORT_STATE_PARTIAL:I = 0x2

.field public static final FEATURE_COVER_ACCESSARY_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication_cover"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAuthComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBlockState:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public final mContext:Landroid/content/Context;

.field public final mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverManagerDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCoverState:Lcom/samsung/android/cover/CoverState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mCoverSupportState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDesktopDockConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final mIsNfcAuthSystemFeatureEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mScreenMirroringDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverManagerDisabled(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNfcAuthSystemFeatureEnabled(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/android/server/desktopmode/CoverStateManager;Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->initializeCoverState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/os/PowerManager;Lcom/android/server/input/InputManagerService;)V
    .registers 7

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlockState:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 59
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 71
    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 87
    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$2;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 115
    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$3;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 212
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 214
    new-instance p2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 215
    iput-object p3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 216
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance p2, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/CoverStateManager$Authenticator-IA;)V

    invoke-virtual {p2}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->initialize()V

    .line 218
    iput-object p4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 219
    iput-object p5, p0, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    return-void
.end method

.method public static coverSupportStateToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, "COVER_SUPPORT_STATE_NONE"

    return-object p0

    :cond_1e
    const-string p0, "COVER_SUPPORT_STATE_PARTIAL"

    return-object p0

    :cond_21
    const-string p0, "COVER_SUPPORT_STATE_FULL"

    return-object p0
.end method

.method public static isCoverUiTypeCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3

    .line 355
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_15

    const/4 v1, 0x6

    if-eq p0, v1, :cond_15

    const/16 v1, 0x8

    if-eq p0, v1, :cond_15

    const/16 v1, 0xf

    if-ne p0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method public static isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    .line 343
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_23

    if-eqz v0, :cond_23

    const/16 v2, 0xb

    if-eq v0, v2, :cond_23

    const/16 v2, 0x8

    if-eq v0, v2, :cond_23

    const/16 v2, 0xf

    if-eq v0, v2, :cond_23

    if-eq v0, v1, :cond_23

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v2, 0x6

    if-eq v0, v2, :cond_23

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    return v1
.end method


# virtual methods
.method public disableCoverManager(Z)V
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    if-eq v1, p1, :cond_3c

    .line 315
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCoverManager()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 318
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    if-nez p1, :cond_3c

    .line 320
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 323
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManagerDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverSupportState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDesktopDockConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenMirroringDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 396
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_25 .. :try_end_cb} :catchall_cf

    .line 397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_cf
    move-exception p0

    .line 396
    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p0
.end method

.method public final getSettingMirroringSwitchDisabled()Z
    .registers 3

    .line 308
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mirroring_switch_disabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final goToSleep()V
    .registers 3

    .line 327
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public goToSleepIfFlipTypeCoverClosed()Z
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 332
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goToSleepIfFlipTypeCoverClosed(), coverState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_36

    .line 334
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->isCoverUiTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_36

    .line 336
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->goToSleep()V

    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public initialize()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->getSettingMirroringSwitchDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 230
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final initializeCoverState()Z
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 241
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 243
    :cond_d
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v2, p0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 252
    monitor-exit v0

    return v1

    :catchall_31
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public isFlipTypeCoverClosed()Z
    .registers 4

    .line 363
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 367
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 368
    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    if-nez p0, :cond_1e

    move v0, v2

    :cond_1e
    return v0
.end method

.method public final setMirroringSwitchDisabled(Z)V
    .registers 3

    .line 302
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 303
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mirroring_switch_disabled"

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateCoverSupportStateLocked()Z
    .registers 7

    .line 259
    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_2c

    .line 262
    :cond_9
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 263
    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 265
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v3

    .line 275
    :goto_2c
    iget v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    const/4 v5, 0x0

    if-eq v4, v0, :cond_4f

    .line 276
    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    if-ne v0, v2, :cond_3d

    .line 278
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    goto :goto_44

    .line 280
    :cond_3d
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 283
    :goto_44
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    invoke-interface {v0, v2, v4}, Lcom/android/server/desktopmode/IStateManager;->setCoverState(Lcom/samsung/android/cover/CoverState;I)V

    move v0, v3

    goto :goto_50

    :cond_4f
    move v0, v5

    .line 286
    :goto_50
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    if-ne v2, v1, :cond_5c

    .line 287
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/CoverStateManager;->setMirroringSwitchDisabled(Z)V

    goto :goto_63

    .line 288
    :cond_5c
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    if-eqz v1, :cond_63

    .line 289
    invoke-virtual {p0, v5}, Lcom/android/server/desktopmode/CoverStateManager;->setMirroringSwitchDisabled(Z)V

    .line 292
    :cond_63
    :goto_63
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_a2

    sget-object v1, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSupportState(), mCoverSupportState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 293
    invoke-static {v3}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCoverState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mAuthComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDesktopDockConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return v0
.end method
