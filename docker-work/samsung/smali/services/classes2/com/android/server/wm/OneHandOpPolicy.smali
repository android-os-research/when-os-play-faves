.class public Lcom/android/server/wm/OneHandOpPolicy;
.super Ljava/lang/Object;
.source "OneHandOpPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final EASY_ONE_HAND_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE"

.field public static final EASY_ONE_HAND_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.easyonehand.EasyOneHandService"

.field public static final EASY_ONE_HAND_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.easyonehand"

.field public static final EASY_ONE_HAND_SERVICE_SCREEN_OFF_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

.field public static final SERVICE_RESTART_TIMEOUT:J = 0xea60L

.field public static final START_REASON_HOME_KEY_DOUBLE:I = 0x2

.field public static final START_REASON_NONE:I = -0x1

.field public static final START_REASON_RESTART_SERVICE:I = 0x3

.field public static final START_REASON_SETTINGS:I = 0x1

.field public static final START_REASON_SYSTEM_BOOTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "OneHandOpController"

.field public static final TYPE_GESTURE:I = 0x0

.field public static final TYPE_HOME_BUTTON:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mHandler:Landroid/os/Handler;

.field public mHasOneHandOpSpec:Z

.field public mIsInputFilterRegistered:Z

.field public mIsOneHandOpEnabled:Z

.field public mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field public mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field public mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

.field public mReasonToStart:I

.field public mRestartRunnable:Ljava/lang/Runnable;

.field public mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$EytgQP5YGWtPz9YyGTOBBg5mL2g(Lcom/android/server/wm/OneHandOpPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$systemBooted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$HBPJB122qpcIyXmyiIVyJ8XVqfw(Lcom/android/server/wm/OneHandOpPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$screenTurnedOff$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bD2KOY2fyxWPUIXmBiNmTxhBoOg(Lcom/android/server/wm/OneHandOpPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$stopService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$tVJtIGmKl8hWpOi1pHCEMdDhKho(Lcom/android/server/wm/OneHandOpPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$xL91HkOv-xangu-kjn_ceS8QILA(Lcom/android/server/wm/OneHandOpPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$startService$2(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestartRunnable(Lcom/android/server/wm/OneHandOpPolicy;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/OneHandOpPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 46
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .registers 6

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    .line 82
    new-instance v0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 335
    new-instance v0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    iput-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$screenTurnedOff$1()V
    .registers 5

    .line 125
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method private synthetic lambda$startService$2(I)V
    .registers 6

    .line 144
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    const-string v1, "StartByHomeKey"

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_28
    return-void
.end method

.method private synthetic lambda$stopService$3()V
    .registers 5

    .line 163
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ForceHide"

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-void
.end method

.method private synthetic lambda$systemBooted$0()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    return-void
.end method

.method public static startReasonToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1f

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "RESTART_ONE_HAND_OP_SERVICE"

    return-object p0

    :cond_16
    const-string p0, "HOME_KEY_DOUBLE"

    return-object p0

    :cond_19
    const-string p0, "SETTING_OBSERVER"

    return-object p0

    :cond_1c
    const-string p0, "SYSTEM_BOOTED"

    return-object p0

    :cond_1f
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public addWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 175
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa28

    if-eq p2, v0, :cond_e

    const/16 v0, 0xa29

    if-eq p2, v0, :cond_b

    goto :goto_10

    .line 180
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_10

    .line 177
    :cond_e
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_10
    return-void
.end method

.method public changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V
    .registers 12

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "OneHandOpController"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDisplayScale, mHasOneHandOpSpec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", registerInput="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_62

    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, display is null"

    .line 206
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_62
    const/4 v2, 0x0

    .line 210
    :try_start_63
    iget v3, p1, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_ca

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_ca

    .line 211
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_b3

    .line 213
    iget-boolean v3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz v3, :cond_a7

    .line 215
    iget v3, v2, Landroid/view/MagnificationSpec;->scale:F

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_85

    move v3, v5

    goto :goto_86

    :cond_85
    move v3, v4

    .line 216
    :goto_86
    iget v6, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, p1, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_96

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v6, p1, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_97

    :cond_96
    move v4, v5

    :cond_97
    if-nez v3, :cond_b3

    if-nez v4, :cond_b3

    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, the requested scale & offset are same"

    .line 219
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_63 .. :try_end_a3} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_a7
    :try_start_a7
    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, other requested spec exists"

    .line 224
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 228
    :cond_b3
    :try_start_b3
    iput-boolean v5, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    if-eqz p2, :cond_e5

    .line 233
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 234
    iput-boolean v5, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    goto :goto_e5

    .line 237
    :cond_ca
    iget-boolean p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz p3, :cond_e6

    .line 238
    iget-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 240
    iput-boolean v4, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz p2, :cond_e5

    .line 242
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 243
    iput-boolean v4, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    :cond_e5
    :goto_e5
    move v4, v5

    :cond_e6
    if-eqz v4, :cond_f4

    .line 248
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 249
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 251
    :cond_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_b3 .. :try_end_f5} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_f9
    move-exception p0

    :try_start_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsOneHandOpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasOneHandOpSpec="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 362
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsInputFilterRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 364
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mReasonToStart="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOneHandOpController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mOneHandOpHandler="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public hasOneHandOpSpec()Z
    .registers 1

    .line 255
    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    return p0
.end method

.method public isOneHandOpEnabled()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    return p0
.end method

.method public registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 260
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    :cond_7
    return-void
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 187
    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_e

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_e

    .line 189
    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_e
    :goto_e
    return-void
.end method

.method public screenTurnedOff()V
    .registers 5

    .line 114
    sget-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    if-eqz v0, :cond_48

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenTurnedOff(), mIsOneHandOpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v3

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemBooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_56

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_56
    return-void
.end method

.method public setOneHandOpEnabled(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    return-void
.end method

.method public startService(I)V
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startService() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 138
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopService()V
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService(), caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemBooted()V
    .registers 3

    .line 100
    sget-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "OneHandOpController"

    const-string/jumbo v1, "systemBooted()"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 108
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    if-eqz v0, :cond_25

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void
.end method

.method public unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 266
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    :cond_7
    return-void
.end method
