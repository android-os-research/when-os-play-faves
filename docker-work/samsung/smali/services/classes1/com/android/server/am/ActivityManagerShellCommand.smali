.class public final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;,
        Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    }
.end annotation


# static fields
.field public static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final USER_OPERATION_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field public mActivityType:I

.field public mAgent:Ljava/lang/String;

.field public mAsync:Z

.field public mAttachAgentDuringBind:Z

.field public mAutoStop:Z

.field public mBroadcastOptions:Landroid/app/BroadcastOptions;

.field public mDismissKeyguardIfInsecure:Z

.field public mDisplayId:I

.field public final mDumping:Z

.field public mForceWindowingMode:I

.field public final mInterface:Landroid/app/IActivityManager;

.field public final mInternal:Lcom/android/server/am/ActivityManagerService;

.field public mIsLockTask:Z

.field public mIsTaskOverlay:Z

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mProfileFile:Ljava/lang/String;

.field public mReceiverPermission:Ljava/lang/String;

.field public mRepeat:I

.field public mSamplingInterval:I

.field public mShowSplashScreen:Z

.field public mStartFlags:I

.field public mStopOption:Z

.field public mStreaming:Z

.field public mTaskId:I

.field public final mTaskInterface:Landroid/app/IActivityTaskManager;

.field public mUserId:I

.field public mWaitOption:Z

.field public mWindowingMode:I


# direct methods
.method public static synthetic $r8$lambda$sPJPg0OHorU6Ky3-fv2T-wgWJI0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActivityType(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAsync(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDismissKeyguardIfInsecure(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLockTask(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsTaskOverlay(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReceiverPermission(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSamplingInterval(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowSplashScreen(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStopOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStreaming(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTaskId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 161
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    .line 162
    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 204
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 175
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 178
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 205
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 206
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    .line 207
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 208
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 209
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    return-void
.end method

.method public static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2351
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2352
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p4

    .line 2354
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p4, v0, :cond_b

    return-void

    .line 2359
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    .line 2360
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, p3, :cond_17

    .line 2361
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void

    .line 2366
    :cond_17
    invoke-interface {p0, p1, p2, p2, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/16 p3, 0x1f03

    .line 2369
    invoke-static {p3}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    .line 2370
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, " "

    .line 2373
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_38

    aget-object v2, p3, v1

    .line 2374
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2379
    :cond_38
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p3, p3, p5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2380
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2381
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    if-eqz p1, :cond_ce

    const-string p1, "Activity manager dump options:"

    .line 3488
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    .line 3489
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  WHAT may be one of:"

    .line 3490
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    a[ctivities]: activity stack state"

    .line 3491
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    r[recents]: recent activities state"

    .line 3492
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    .line 3493
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    .line 3494
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    .line 3495
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    p[rocesses] [PACKAGE_NAME]: process state"

    .line 3496
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    o[om]: out of memory management"

    .line 3497
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    perm[issions]: URI permission grant state"

    .line 3498
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    prov[iders] [COMP_SPEC ...]: content provider state"

    .line 3499
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    provider [COMP_SPEC]: provider client-side state"

    .line 3500
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    s[ervices] [COMP_SPEC ...]: service state"

    .line 3501
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    allowed-associations: current package association restrictions"

    .line 3502
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    as[sociations]: tracked app associations"

    .line 3503
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    exit-info [PACKAGE_NAME]: historical process exit information"

    .line 3504
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    lmk: stats on low memory killer"

    .line 3505
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    lru: raw LRU process list"

    .line 3506
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    binder-proxies: stats on binder objects and IPCs"

    .line 3507
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    settings: currently applied config settings"

    .line 3508
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    service [COMP_SPEC]: service client-side state"

    .line 3509
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    package [PACKAGE_NAME]: all state related to given package"

    .line 3510
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    all: dump all activities"

    .line 3511
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    top: dump the top activity"

    .line 3512
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  WHAT may also be a COMP_SPEC to dump activities."

    .line 3513
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    .line 3514
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    a partial substring in a component name, a"

    .line 3515
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    hex object identifier."

    .line 3516
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  -a: include all available server state."

    .line 3517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  -c: include client state."

    .line 3518
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  -p: limit output to given package."

    .line 3519
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  --checkin: output checkin format, resetting data."

    .line 3520
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  --C: output checkin format, not resetting data."

    .line 3521
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  --proto: output dump in protocol buffer format."

    .line 3522
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "--dump-dumpable"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    const-string v2, "--list-dumpables"

    aput-object v2, p1, v0

    const-string v3, "  %s: dump just the DUMPABLE-related state of an activity. Use the %s option to list the supported DUMPABLEs\n"

    .line 3523
    invoke-virtual {p0, v3, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v1

    const-string v0, "  %s: show the available dumpables in an activity\n"

    .line 3526
    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_655

    :cond_ce
    const-string p1, "Activity manager (activity) commands:"

    .line 3529
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  help"

    .line 3530
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Print this help text."

    .line 3531
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    .line 3532
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    .line 3533
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    .line 3534
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Start an Activity.  Options are:"

    .line 3535
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -D: enable debugging"

    .line 3536
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -N: enable native debugging"

    .line 3537
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -W: wait for launch to complete"

    .line 3538
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    .line 3539
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    .line 3540
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          between samples (use with --start-profiler)"

    .line 3541
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --streaming: stream the profiling output to the specified file"

    .line 3542
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          (use with --start-profiler)"

    .line 3543
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -P <FILE>: like above, but profiling stops when app goes idle"

    .line 3544
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --attach-agent <agent>: attach the given agent before binding"

    .line 3545
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    .line 3546
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    .line 3547
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          the top activity will be finished."

    .line 3548
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -S: force stop the target app before starting the activity"

    .line 3549
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --track-allocation: enable tracking of object allocations"

    .line 3550
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    .line 3551
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          specified then run as the current user."

    .line 3552
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    .line 3553
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    .line 3554
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --display <DISPLAY_ID>: The display to launch the activity into."

    .line 3555
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --splashscreen-icon: Show the splash screen icon on launch."

    .line 3556
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  start-service [--user <USER_ID> | current] <INTENT>"

    .line 3557
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Start a Service.  Options are:"

    .line 3558
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    .line 3561
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Start a foreground Service.  Options are:"

    .line 3562
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  stop-service [--user <USER_ID> | current] <INTENT>"

    .line 3565
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Stop a Service.  Options are:"

    .line 3566
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  broadcast [--user <USER_ID> | all | current]"

    .line 3569
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--receiver-permission <PERMISSION>]"

    .line 3570
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--allow-background-activity-starts]"

    .line 3571
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--async] <INTENT>"

    .line 3572
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Send a broadcast Intent.  Options are:"

    .line 3573
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    .line 3574
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          specified then send to all users."

    .line 3575
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    .line 3576
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --allow-background-activity-starts: The receiver may start activities"

    .line 3577
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          even if in the background."

    .line 3578
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --async: Send without waiting for the completion of the receiver."

    .line 3579
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  compact <process_name> <Package UID> [some|full]"

    .line 3580
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Force process compaction."

    .line 3581
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      some: execute file compaction."

    .line 3582
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      full: execute anon + file compaction."

    .line 3583
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    .line 3584
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--user <USER_ID> | current]"

    .line 3585
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--no-hidden-api-checks [--no-test-api-access]]"

    .line 3586
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--no-isolated-storage]"

    .line 3587
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    .line 3588
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    .line 3589
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    .line 3590
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      is only one instrumentation.  Options are:"

    .line 3591
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    .line 3592
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [-e perf true] to generate raw output for performance measurements."

    .line 3593
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    .line 3594
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    .line 3595
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -p <FILE>: write profiling data to <FILE>"

    .line 3596
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -m: Write output as protobuf to stdout (machine readable)"

    .line 3597
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    .line 3598
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          readable). If path is not specified, default directory and file name will"

    .line 3599
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    .line 3600
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -w: wait for instrumentation to finish before returning.  Required for"

    .line 3601
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          test runners."

    .line 3602
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    .line 3603
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          current user if not specified."

    .line 3604
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    .line 3605
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    .line 3606
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          API checks are enabled."

    .line 3607
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    .line 3608
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          mount full external storage"

    .line 3609
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --no-window-animation: turn off window animations while running."

    .line 3610
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    .line 3611
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          This assumes that the process supports the selected ABI."

    .line 3612
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    .line 3613
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Trace IPC transactions."

    .line 3614
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      start: start tracing IPC transactions."

    .line 3615
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      stop: stop tracing IPC transactions and dump the results to file."

    .line 3616
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    .line 3617
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  profile start [--user <USER_ID> current]"

    .line 3618
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    .line 3619
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Start profiler on a process.  The given <PROCESS> argument"

    .line 3620
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        may be either a process name or pid.  Options are:"

    .line 3621
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      --user <USER_ID> | current: When supplying a process name,"

    .line 3622
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          specify user of process to profile; uses current user if not"

    .line 3623
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "          specified."

    .line 3624
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          between samples."

    .line 3626
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --streaming: stream the profiling output to the specified file."

    .line 3627
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  profile stop [--user <USER_ID> current] <PROCESS>"

    .line 3628
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Stop profiler on a process.  The given <PROCESS> argument"

    .line 3629
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    .line 3634
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Dump the heap of a process.  The given <PROCESS> argument may"

    .line 3635
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "        be either a process name or pid.  Options are:"

    .line 3636
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -n: dump native heap instead of managed heap"

    .line 3637
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -g: force GC before dumping the heap"

    .line 3638
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          specify user of process to dump; uses current user if not specified."

    .line 3640
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    .line 3641
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Set application <PACKAGE> to debug.  Options are:"

    .line 3642
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -w: wait for debugger when application starts"

    .line 3643
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --persistent: retain this value"

    .line 3644
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  clear-debug-app"

    .line 3645
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Clear the previously set-debug-app."

    .line 3646
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    .line 3647
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Start monitoring pss size of <PROCESS>, if it is at or"

    .line 3648
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    .line 3649
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  clear-watch-heap"

    .line 3650
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Clear the previously set-watch-heap."

    .line 3651
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  clear-exit-info [--user <USER_ID> | all | current] [package]"

    .line 3652
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Clear the process exit-info for given package"

    .line 3653
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  bug-report [--progress | --telephony]"

    .line 3654
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Request bug report generation; will launch a notification"

    .line 3655
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "        when done to select where it should be delivered. Options are:"

    .line 3656
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     --progress: will launch a notification right away to show its progress."

    .line 3657
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     --telephony: will dump only telephony sections."

    .line 3658
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  fgs-notification-rate-limit {enable | disable}"

    .line 3659
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Enable/disable rate limit on FGS notification deferral policy."

    .line 3660
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    .line 3661
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Completely stop the given application package."

    .line 3662
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  stop-app [--user <USER_ID> | all | current] <PACKAGE>"

    .line 3663
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Stop an app and all of its services.  Unlike `force-stop` this does"

    .line 3664
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      not cancel the app\'s scheduled alarms and jobs."

    .line 3665
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    .line 3666
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Induce a VM crash in the specified package or process"

    .line 3667
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    .line 3668
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Kill all background processes associated with the given application."

    .line 3669
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  kill-all"

    .line 3670
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Kill all processes that are safe to kill (cached, etc)."

    .line 3671
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    .line 3672
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      If the given application\'s uid is in the background and waiting to"

    .line 3673
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      become idle (not allowing background services), do that now."

    .line 3674
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  monitor [--gdb <port>]"

    .line 3675
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Start monitoring for crashes or ANRs."

    .line 3676
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --gdb: start gdbserv on the given port at crash/ANR"

    .line 3677
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  watch-uids [--oom <uid>]"

    .line 3678
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Start watching for and reporting uid state changes."

    .line 3679
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --oom: specify a uid for which to report detailed change messages."

    .line 3680
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  hang [--allow-restart]"

    .line 3681
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Hang the system."

    .line 3682
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --allow-restart: allow watchdog to perform normal system restart"

    .line 3683
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  restart"

    .line 3684
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Restart the user-space system."

    .line 3685
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  idle-maintenance"

    .line 3686
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Perform idle maintenance now."

    .line 3687
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  screen-compat [on|off] <PACKAGE>"

    .line 3688
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Control screen compatibility mode of <PACKAGE>."

    .line 3689
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  package-importance <PACKAGE>"

    .line 3690
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Print current importance of <PACKAGE>."

    .line 3691
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  to-uri [INTENT]"

    .line 3692
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Print the given Intent specification as a URI."

    .line 3693
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  to-intent-uri [INTENT]"

    .line 3694
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Print the given Intent specification as an intent: URI."

    .line 3695
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  to-app-uri [INTENT]"

    .line 3696
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Print the given Intent specification as an android-app: URI."

    .line 3697
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  switch-user <USER_ID>"

    .line 3698
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Switch to put USER_ID in the foreground, starting"

    .line 3699
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      execution of that user if it is currently stopped."

    .line 3700
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-current-user"

    .line 3701
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns id of the current foreground user."

    .line 3702
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  start-user [-w] <USER_ID>"

    .line 3703
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Start USER_ID in background if it is currently stopped;"

    .line 3704
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      use switch-user if you want to start the user in foreground."

    .line 3705
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -w: wait for start-user to complete and the user to be unlocked."

    .line 3706
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  unlock-user <USER_ID>"

    .line 3707
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Unlock the given user.  This will only work if the user doesn\'t"

    .line 3708
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      have an LSKF (PIN/pattern/password)."

    .line 3709
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  stop-user [-w] [-f] <USER_ID>"

    .line 3710
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Stop execution of USER_ID, not allowing it to run any"

    .line 3711
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      code until a later explicit start or switch to it."

    .line 3712
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -w: wait for stop-user to complete."

    .line 3713
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      -f: force stop even if there are related users that cannot be stopped."

    .line 3714
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  is-user-stopped <USER_ID>"

    .line 3715
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns whether <USER_ID> has been stopped or not."

    .line 3716
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-started-user-state <USER_ID>"

    .line 3717
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Gets the current state of the given started user."

    .line 3718
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  track-associations"

    .line 3719
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Enable association tracking."

    .line 3720
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  untrack-associations"

    .line 3721
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Disable and clear association tracking."

    .line 3722
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-uid-state <UID>"

    .line 3723
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Gets the process state of an app given its <UID>."

    .line 3724
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  attach-agent <PROCESS> <FILE>"

    .line 3725
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    .line 3726
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    .line 3727
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Retrieve the configuration and any recent configurations of the device."

    .line 3728
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --days: also return last N days of configurations that have been seen."

    .line 3729
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --device: also output global device configuration info."

    .line 3730
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --proto: return result as a proto; does not include --days info."

    .line 3731
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      --display: Specify for which display to run the command; if not "

    .line 3732
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          specified then run for the default display."

    .line 3733
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  supports-multiwindow"

    .line 3734
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns true if the device supports multiwindow."

    .line 3735
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  supports-split-screen-multi-window"

    .line 3736
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns true if the device supports split screen multiwindow."

    .line 3737
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  suppress-resize-config-changes <true|false>"

    .line 3738
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Suppresses configuration changes due to user resizing an activity/task."

    .line 3739
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    .line 3740
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Sets the inactive state of an app."

    .line 3741
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    .line 3742
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns the inactive state of an app."

    .line 3743
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare|restricted"

    .line 3744
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Puts an app in the standby bucket."

    .line 3745
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    .line 3746
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Returns the standby bucket of an app."

    .line 3747
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    .line 3748
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    .line 3749
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    .line 3750
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  display [COMMAND] [...]: sub-commands for operating on displays."

    .line 3751
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       move-stack <STACK_ID> <DISPLAY_ID>"

    .line 3752
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    .line 3753
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    .line 3754
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    .line 3755
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Move <TASK_ID> from its current stack to the top (true) or"

    .line 3756
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           bottom (false) of <STACK_ID>."

    .line 3757
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       list"

    .line 3758
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           List all of the activity stacks and their sizes."

    .line 3759
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    .line 3760
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    .line 3761
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       remove <STACK_ID>"

    .line 3762
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Remove stack <STACK_ID>."

    .line 3763
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    .line 3764
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       lock <TASK_ID>"

    .line 3765
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    .line 3766
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       lock stop"

    .line 3767
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           End the current task lock."

    .line 3768
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       resizeable <TASK_ID> [0|1|2|3]"

    .line 3769
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Change resizeable mode of <TASK_ID> to one of the following:"

    .line 3770
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           0: unresizeable"

    .line 3771
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           1: crop_windows"

    .line 3772
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           2: resizeable"

    .line 3773
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           3: resizeable_and_pipable"

    .line 3774
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    .line 3775
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    .line 3776
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           Forces the task to be resizeable and creates a stack if no existing stack"

    .line 3777
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "           has the specified bounds."

    .line 3778
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    .line 3779
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    .line 3780
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      without restarting any processes."

    .line 3781
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  write"

    .line 3782
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Write all pending state to storage."

    .line 3783
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    .line 3784
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         enable|disable [--no-kill] <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    .line 3785
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    .line 3786
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect) unless --no-kill is provided."

    .line 3787
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "         reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    .line 3788
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    .line 3790
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME>"

    .line 3791
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Toggles all changes that are gated by <targetSdkVersion>."

    .line 3792
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         reset-all [--no-kill] <PACKAGE_NAME>"

    .line 3793
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Removes all existing overrides for all changes for "

    .line 3794
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            <PACKAGE_NAME> (back to default behaviour)."

    .line 3795
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  memory-factor [command] [...]: sub-commands for overriding memory pressure factor"

    .line 3797
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         set <NORMAL|MODERATE|LOW|CRITICAL>"

    .line 3798
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Overrides memory pressure factor. May also supply a raw int level"

    .line 3799
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         show"

    .line 3800
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Shows the existing memory pressure factor"

    .line 3801
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         reset"

    .line 3802
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Removes existing override for memory pressure factor"

    .line 3803
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  service-restart-backoff <COMMAND> [...]: sub-commands to toggle service restart backoff policy."

    .line 3804
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         enable|disable <PACKAGE_NAME>"

    .line 3805
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Toggles the restart backoff policy on/off for <PACKAGE_NAME>."

    .line 3806
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         show <PACKAGE_NAME>"

    .line 3807
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "            Shows the restart backoff policy state for <PACKAGE_NAME>."

    .line 3808
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  get-isolated-pids <UID>"

    .line 3809
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         Get the PIDs of isolated processes with packages in this <UID>"

    .line 3810
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-stop-user-on-switch [true|false]"

    .line 3811
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         Sets whether the current user (and its profiles) should be stopped when switching to a different user."

    .line 3812
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         Without arguments, it resets to the value defined by platform."

    .line 3814
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  set-bg-abusive-uids [uid=percentage][,uid=percentage...]"

    .line 3815
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "         Force setting the battery usage of the given UID."

    .line 3816
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string p1, ""

    .line 3818
    invoke-static {p0, p1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_655
    return-void
.end method

.method public static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 2

    .line 2547
    iget-object p0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    if-nez p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 2550
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static removeWallOption()V
    .registers 4

    const-string v0, "dalvik.vm.extra-opts"

    .line 928
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "-Xprofile:wallclock"

    .line 929
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, ""

    .line 930
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 4

    .line 2672
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ac"

    .line 2673
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 p0, 0xa

    return p0

    :cond_f
    const-string/jumbo v1, "wo"

    .line 2675
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 p0, 0x14

    return p0

    :cond_1b
    const-string v1, "fr"

    .line 2677
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 p0, 0x1e

    return p0

    :cond_26
    const-string/jumbo v1, "ra"

    .line 2679
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 p0, 0x28

    return p0

    :cond_32
    const-string/jumbo v1, "re"

    .line 2681
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/16 p0, 0x2d

    return p0

    :cond_3e
    const-string/jumbo v1, "ne"

    .line 2683
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/16 p0, 0x32

    return p0

    .line 2687
    :cond_4a
    :try_start_4a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4e} :catch_4f

    return p0

    .line 2690
    :catch_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final checkIfMaintenanceModeUserExists()Z
    .registers 3

    .line 2217
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    .line 2218
    invoke-virtual {p0, v0, v0, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    .line 2220
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2221
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 10

    .line 2871
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2872
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2873
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2874
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2875
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2876
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2877
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2878
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-gez v1, :cond_3c

    .line 2880
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad left arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_3c
    if-gez v3, :cond_57

    .line 2884
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad top arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_57
    if-gtz v5, :cond_72

    .line 2888
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad right arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    :cond_72
    if-gtz v7, :cond_8d

    .line 2892
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad bottom arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v8

    .line 2895
    :cond_8d
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2386
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2389
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljavax/microedition/khronos/egl/EGL10;

    if-nez v7, :cond_18

    .line 2391
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v6

    .line 2396
    :cond_18
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2398
    invoke-interface {v7, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 2402
    invoke-interface {v7, v8, v0, v11, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2403
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v6

    :cond_39
    aget v0, v10, v11

    .line 2408
    new-array v12, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 2409
    invoke-interface {v7, v8, v12, v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2410
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v6

    :cond_4d
    const/4 v0, 0x5

    new-array v13, v0, [I

    .line 2417
    fill-array-data v13, :array_b0

    const/4 v0, 0x3

    new-array v14, v0, [I

    .line 2426
    fill-array-data v14, :array_be

    new-array v15, v9, [I

    move v5, v11

    :goto_5c
    aget v0, v10, v11

    if-ge v5, v0, :cond_ab

    .line 2433
    aget-object v0, v12, v5

    const/16 v1, 0x3027

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v15, v11

    const/16 v1, 0x3050

    if-ne v0, v1, :cond_70

    :goto_6d
    move/from16 v16, v5

    goto :goto_a8

    .line 2441
    :cond_70
    aget-object v0, v12, v5

    const/16 v1, 0x3033

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v15, v11

    and-int/2addr v0, v9

    if-nez v0, :cond_7d

    goto :goto_6d

    .line 2448
    :cond_7d
    aget-object v0, v12, v5

    const/16 v1, 0x3040

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v15, v11

    and-int/2addr v0, v9

    if-eqz v0, :cond_96

    .line 2450
    aget-object v2, v12, v5

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v3, v13

    move/from16 v16, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_98

    :cond_96
    move/from16 v16, v5

    :goto_98
    aget v0, v15, v11

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a8

    .line 2453
    aget-object v2, v12, v16

    move-object v0, v7

    move-object v1, v8

    move-object v3, v13

    move-object v4, v14

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    :cond_a8
    :goto_a8
    add-int/lit8 v5, v16, 0x1

    goto :goto_5c

    .line 2458
    :cond_ab
    invoke-interface {v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-object v6

    nop

    :array_b0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_be
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public final getRecentConfigurations(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "usagestats"

    .line 2289
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 2291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    mul-int/lit8 p1, p1, 0x18

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long v3, v5, v2

    const/4 v2, 0x4

    :try_start_1b
    const-string v7, "com.android.shell"

    .line 2295
    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-nez p1, :cond_28

    .line 2298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2301
    :cond_28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2302
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 2303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_71

    .line 2305
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/ConfigurationStats;

    .line 2306
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_58

    .line 2308
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 2311
    :cond_58
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2310
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2315
    :cond_71
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$4;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 2322
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2323
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2324
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_89} :catch_8a

    return-object p0

    .line 2328
    :catch_8a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3467
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "Error: Activity manager has no configuration"

    .line 3469
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3473
    :cond_f
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3474
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3476
    new-instance v0, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public getStepSize(IIIZ)I
    .registers 5

    if-eqz p4, :cond_e

    if-ge p2, p1, :cond_e

    sub-int/2addr p1, p3

    if-le p2, p1, :cond_c

    sub-int p0, p2, p1

    sub-int p0, p3, p0

    goto :goto_f

    :cond_c
    move p0, p3

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-nez p4, :cond_19

    if-le p2, p1, :cond_19

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_1a

    sub-int/2addr p1, p2

    add-int/2addr p3, p1

    goto :goto_1a

    :cond_19
    move p3, p0

    :cond_1a
    :goto_1a
    return p3
.end method

.method public getUidState(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2278
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p0

    .line 2281
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    .line 2282
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "PROCESS_STATE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p0, ")"

    .line 2284
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final makeIntent(I)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 376
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 378
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    const/4 v1, 0x0

    .line 379
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 380
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 381
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 382
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 383
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 p1, -0x1

    .line 384
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 385
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 388
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 391
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 392
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 393
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 395
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 396
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 398
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, p1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p6, :cond_44

    :goto_3
    if-lez p5, :cond_85

    if-eqz p7, :cond_d

    .line 3015
    iget p6, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt p6, v1, :cond_15

    :cond_d
    if-nez p7, :cond_85

    iget p6, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p6, v1, :cond_85

    :cond_15
    if-eqz p7, :cond_2c

    .line 3019
    iget p6, p3, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    sub-int/2addr p5, p6

    .line 3021
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3022
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_40

    .line 3024
    :cond_2c
    iget p6, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    sub-int/2addr p5, p6

    .line 3026
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3027
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 3029
    :goto_40
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_3

    :cond_44
    :goto_44
    if-gez p5, :cond_85

    if-eqz p7, :cond_4e

    .line 3032
    iget p6, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-gt p6, v1, :cond_56

    :cond_4e
    if-nez p7, :cond_85

    iget p6, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-le p6, v1, :cond_85

    :cond_56
    if-eqz p7, :cond_6d

    .line 3036
    iget p6, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    sub-int/2addr p5, p6

    .line 3038
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3039
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_81

    .line 3041
    :cond_6d
    iget p6, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    sub-int/2addr p5, p6

    .line 3043
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3044
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 3046
    :goto_81
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_44

    :cond_85
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8

    if-nez p1, :cond_7

    .line 215
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 217
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 219
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_540

    goto/16 :goto_3c2

    :sswitch_18
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x28

    goto/16 :goto_3c3

    :sswitch_25
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x9

    goto/16 :goto_3c3

    :sswitch_32
    const-string/jumbo v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x22

    goto/16 :goto_3c3

    :sswitch_3f
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x41

    goto/16 :goto_3c3

    :sswitch_4c
    const-string/jumbo v2, "set-stop-user-on-switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x48

    goto/16 :goto_3c3

    :sswitch_59
    const-string/jumbo v2, "stop-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x18

    goto/16 :goto_3c3

    :sswitch_66
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x39

    goto/16 :goto_3c3

    :sswitch_72
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x42

    goto/16 :goto_3c3

    :sswitch_7f
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2c

    goto/16 :goto_3c3

    :sswitch_8c
    const-string/jumbo v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xc

    goto/16 :goto_3c3

    :sswitch_99
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1e

    goto/16 :goto_3c3

    :sswitch_a6
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2e

    goto/16 :goto_3c3

    :sswitch_b2
    const-string/jumbo v2, "refresh-settings-cache"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x44

    goto/16 :goto_3c3

    :sswitch_bf
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x40

    goto/16 :goto_3c3

    :sswitch_cc
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x21

    goto/16 :goto_3c3

    :sswitch_d9
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x12

    goto/16 :goto_3c3

    :sswitch_e5
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3d

    goto/16 :goto_3c3

    :sswitch_f1
    const-string v2, "compact"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xb

    goto/16 :goto_3c3

    :sswitch_fd
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x7

    goto/16 :goto_3c3

    :sswitch_109
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x11

    goto/16 :goto_3c3

    :sswitch_116
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x14

    goto/16 :goto_3c3

    :sswitch_122
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x13

    goto/16 :goto_3c3

    :sswitch_12f
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x26

    goto/16 :goto_3c3

    :sswitch_13c
    const-string/jumbo v2, "set-bg-abusive-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x49

    goto/16 :goto_3c3

    :sswitch_149
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3e

    goto/16 :goto_3c3

    :sswitch_156
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xd

    goto/16 :goto_3c3

    :sswitch_163
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3f

    goto/16 :goto_3c3

    :sswitch_170
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x16

    goto/16 :goto_3c3

    :sswitch_17c
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x30

    goto/16 :goto_3c3

    :sswitch_189
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    move v2, v4

    goto/16 :goto_3c3

    :sswitch_195
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x27

    goto/16 :goto_3c3

    :sswitch_1a2
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    move v2, v3

    goto/16 :goto_3c3

    :sswitch_1ae
    const-string/jumbo v2, "memory-factor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x45

    goto/16 :goto_3c3

    :sswitch_1bb
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3c

    goto/16 :goto_3c3

    :sswitch_1c8
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    move v2, v5

    goto/16 :goto_3c3

    :sswitch_1d4
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3a

    goto/16 :goto_3c3

    :sswitch_1e1
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1a

    goto/16 :goto_3c3

    :sswitch_1ed
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x17

    goto/16 :goto_3c3

    :sswitch_1f9
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x3b

    goto/16 :goto_3c3

    :sswitch_206
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1b

    goto/16 :goto_3c3

    :sswitch_213
    const-string/jumbo v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x20

    goto/16 :goto_3c3

    :sswitch_220
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1d

    goto/16 :goto_3c3

    :sswitch_22d
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x4

    goto/16 :goto_3c3

    :sswitch_239
    const-string v2, "clear-exit-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x15

    goto/16 :goto_3c3

    :sswitch_245
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1f

    goto/16 :goto_3c3

    :sswitch_252
    const-string/jumbo v2, "list-bg-exemptions-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x4a

    goto/16 :goto_3c3

    :sswitch_25f
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x34

    goto/16 :goto_3c3

    :sswitch_26c
    const-string/jumbo v2, "service-restart-backoff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x46

    goto/16 :goto_3c3

    :sswitch_279
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xe

    goto/16 :goto_3c3

    :sswitch_286
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x23

    goto/16 :goto_3c3

    :sswitch_293
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2f

    goto/16 :goto_3c3

    :sswitch_2a0
    const-string v2, "fgs-notification-rate-limit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x19

    goto/16 :goto_3c3

    :sswitch_2ac
    const-string/jumbo v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2d

    goto/16 :goto_3c3

    :sswitch_2b9
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x1c

    goto/16 :goto_3c3

    :sswitch_2c6
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x32

    goto/16 :goto_3c3

    :sswitch_2d2
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x36

    goto/16 :goto_3c3

    :sswitch_2df
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x29

    goto/16 :goto_3c3

    :sswitch_2eb
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x25

    goto/16 :goto_3c3

    :sswitch_2f8
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x6

    goto/16 :goto_3c3

    :sswitch_304
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2b

    goto/16 :goto_3c3

    :sswitch_311
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x5

    goto/16 :goto_3c3

    :sswitch_31d
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x8

    goto/16 :goto_3c3

    :sswitch_32a
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x31

    goto/16 :goto_3c3

    :sswitch_336
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/4 v2, 0x3

    goto/16 :goto_3c3

    :sswitch_342
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x38

    goto/16 :goto_3c3

    :sswitch_34f
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x33

    goto/16 :goto_3c3

    :sswitch_35c
    const-string v2, "compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x43

    goto :goto_3c3

    :sswitch_367
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xa

    goto :goto_3c3

    :sswitch_372
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x2a

    goto :goto_3c3

    :sswitch_37e
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x37

    goto :goto_3c3

    :sswitch_389
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x24

    goto :goto_3c3

    :sswitch_395
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x35

    goto :goto_3c3

    :sswitch_3a0
    const-string v2, "get-isolated-pids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x47

    goto :goto_3c3

    :sswitch_3ab
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0x10

    goto :goto_3c3

    :sswitch_3b7
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    const/16 v2, 0xf

    goto :goto_3c3

    :cond_3c2
    :goto_3c2
    move v2, v1

    :goto_3c3
    packed-switch v2, :pswitch_data_66e

    .line 366
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_529

    .line 364
    :pswitch_3cc
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runListBgExemptionsConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 362
    :pswitch_3d1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetBgAbusiveUids(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 360
    :pswitch_3d6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 358
    :pswitch_3db
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetIsolatedProcesses(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 356
    :pswitch_3e0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runServiceRestartBackoff(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 354
    :pswitch_3e5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 352
    :pswitch_3ea
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRefreshSettingsCache()I

    move-result p0

    return p0

    .line 350
    :pswitch_3ef
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 348
    :pswitch_3f4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 346
    :pswitch_3f9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 344
    :pswitch_3fe
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 342
    :pswitch_403
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 340
    :pswitch_408
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 338
    :pswitch_40d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 336
    :pswitch_412
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 334
    :pswitch_417
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 332
    :pswitch_41c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 330
    :pswitch_421
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 328
    :pswitch_426
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 326
    :pswitch_42b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 324
    :pswitch_430
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 322
    :pswitch_435
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 320
    :pswitch_43a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 318
    :pswitch_43f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 316
    :pswitch_444
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 314
    :pswitch_449
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 312
    :pswitch_44e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 310
    :pswitch_453
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 308
    :pswitch_458
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 306
    :pswitch_45d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 304
    :pswitch_462
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 302
    :pswitch_467
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 300
    :pswitch_46c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 298
    :pswitch_471
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 296
    :pswitch_476
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 294
    :pswitch_47b
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 292
    :pswitch_480
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 290
    :pswitch_485
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 288
    :pswitch_48a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 286
    :pswitch_48f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 284
    :pswitch_494
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 282
    :pswitch_499
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 280
    :pswitch_49e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 278
    :pswitch_4a3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 276
    :pswitch_4a8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 274
    :pswitch_4ad
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 272
    :pswitch_4b2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 270
    :pswitch_4b7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 268
    :pswitch_4bc
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 266
    :pswitch_4c1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 264
    :pswitch_4c6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 262
    :pswitch_4cb
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 260
    :pswitch_4d0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 258
    :pswitch_4d5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 256
    :pswitch_4da
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 254
    :pswitch_4df
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 252
    :pswitch_4e4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 250
    :pswitch_4e9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 248
    :pswitch_4ee
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 246
    :pswitch_4f3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 244
    :pswitch_4f8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 242
    :pswitch_4fd
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 239
    :pswitch_502
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 237
    :pswitch_50c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompact(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 235
    :pswitch_511
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 233
    :pswitch_516
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 230
    :pswitch_51b
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 225
    :pswitch_520
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 222
    :pswitch_525
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_529
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_529} :catch_52a

    :goto_529
    return p0

    :catch_52a
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_540
    .sparse-switch
        -0x7e761220 -> :sswitch_3b7
        -0x7566d004 -> :sswitch_3ab
        -0x6ee359bb -> :sswitch_3a0
        -0x6684cefe -> :sswitch_395
        -0x65f435a5 -> :sswitch_389
        -0x6366a39f -> :sswitch_37e
        -0x608449aa -> :sswitch_372
        -0x607e173f -> :sswitch_367
        -0x50c0cc7e -> :sswitch_35c
        -0x4ef4b7a7 -> :sswitch_34f
        -0x4db101b9 -> :sswitch_342
        -0x436e13b6 -> :sswitch_336
        -0x3bc220e3 -> :sswitch_32a
        -0x3988e78d -> :sswitch_31d
        -0x376fe74e -> :sswitch_311
        -0x3619e74c -> :sswitch_304
        -0x3530e48a -> :sswitch_2f8
        -0x33db6ce6 -> :sswitch_2eb
        -0x30697b4a -> :sswitch_2df
        -0x2c900a2b -> :sswitch_2d2
        -0x29b36e67 -> :sswitch_2c6
        -0x2420b54e -> :sswitch_2b9
        -0x20b34e72 -> :sswitch_2ac
        -0x1a75f64b -> :sswitch_2a0
        -0x171366ac -> :sswitch_293
        -0x152733fd -> :sswitch_286
        -0x12717657 -> :sswitch_279
        -0xd7815ae -> :sswitch_26c
        -0xa310e8a -> :sswitch_25f
        -0x8efed14 -> :sswitch_252
        -0x8b4339f -> :sswitch_245
        -0x83a5383 -> :sswitch_239
        -0x5ffb810 -> :sswitch_22d
        -0x1a6e7d0 -> :sswitch_220
        0x30c072 -> :sswitch_213
        0x323b5e -> :sswitch_206
        0x363585 -> :sswitch_1f9
        0x547b9a4 -> :sswitch_1ed
        0x5a863a7 -> :sswitch_1e1
        0x68ac288 -> :sswitch_1d4
        0x68ac462 -> :sswitch_1c8
        0x6c257df -> :sswitch_1bb
        0x80c339b -> :sswitch_1ae
        0xb07b013 -> :sswitch_1a2
        0xe24026e -> :sswitch_195
        0x20c2801a -> :sswitch_189
        0x251993ad -> :sswitch_17c
        0x27c1d6ad -> :sswitch_170
        0x2894b589 -> :sswitch_163
        0x2b19d394 -> :sswitch_156
        0x2d9208a0 -> :sswitch_149
        0x2ea76694 -> :sswitch_13c
        0x302bd54d -> :sswitch_12f
        0x304b5275 -> :sswitch_122
        0x30b487aa -> :sswitch_116
        0x310633ae -> :sswitch_109
        0x35abdbf4 -> :sswitch_fd
        0x38a73b23 -> :sswitch_f1
        0x3d13bd7d -> :sswitch_e5
        0x404a0027 -> :sswitch_d9
        0x416a9e0f -> :sswitch_cc
        0x434f294b -> :sswitch_bf
        0x465c428a -> :sswitch_b2
        0x48b444b2 -> :sswitch_a6
        0x49b0bd5a -> :sswitch_99
        0x532d63e7 -> :sswitch_8c
        0x5e69b6b6 -> :sswitch_7f
        0x607e963c -> :sswitch_72
        0x63a518c2 -> :sswitch_66
        0x662425d6 -> :sswitch_59
        0x696c1ea0 -> :sswitch_4c
        0x6e6f530e -> :sswitch_3f
        0x6ef5269a -> :sswitch_32
        0x6f0f8fea -> :sswitch_25
        0x7c2bb6c4 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_66e
    .packed-switch 0x0
        :pswitch_525
        :pswitch_525
        :pswitch_520
        :pswitch_520
        :pswitch_51b
        :pswitch_51b
        :pswitch_51b
        :pswitch_51b
        :pswitch_516
        :pswitch_516
        :pswitch_511
        :pswitch_50c
        :pswitch_502
        :pswitch_4fd
        :pswitch_4f8
        :pswitch_4f3
        :pswitch_4ee
        :pswitch_4e9
        :pswitch_4e4
        :pswitch_4df
        :pswitch_4da
        :pswitch_4d5
        :pswitch_4d0
        :pswitch_4cb
        :pswitch_4c6
        :pswitch_4c1
        :pswitch_4bc
        :pswitch_4b7
        :pswitch_4b2
        :pswitch_4ad
        :pswitch_4a8
        :pswitch_4a3
        :pswitch_49e
        :pswitch_499
        :pswitch_494
        :pswitch_48f
        :pswitch_48a
        :pswitch_485
        :pswitch_480
        :pswitch_47b
        :pswitch_476
        :pswitch_471
        :pswitch_46c
        :pswitch_467
        :pswitch_462
        :pswitch_45d
        :pswitch_458
        :pswitch_453
        :pswitch_44e
        :pswitch_449
        :pswitch_444
        :pswitch_43f
        :pswitch_43a
        :pswitch_435
        :pswitch_430
        :pswitch_42b
        :pswitch_426
        :pswitch_421
        :pswitch_41c
        :pswitch_417
        :pswitch_412
        :pswitch_40d
        :pswitch_408
        :pswitch_403
        :pswitch_3fe
        :pswitch_3f9
        :pswitch_3f4
        :pswitch_3ef
        :pswitch_3ea
        :pswitch_3e5
        :pswitch_3e0
        :pswitch_3db
        :pswitch_3d6
        :pswitch_3d1
        :pswitch_3cc
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 3481
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3482
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3089
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3092
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3094
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3095
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3098
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runBugReport(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1204
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    const-string v1, "--progress"

    .line 1205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1207
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V

    :goto_15
    move v1, v0

    goto :goto_2

    :cond_17
    const-string v1, "--telephony"

    .line 1208
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1211
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, ""

    invoke-interface {v1, v2, v2}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1213
    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_41
    if-eqz v1, :cond_48

    .line 1218
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V

    :cond_48
    const-string p0, "Your lovely bug report is being created; please be patient."

    .line 1220
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return v0
.end method

.method public runClearExitInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v1, "runClearExitInfo()"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    const/4 v0, 0x0

    move v1, p1

    .line 1183
    :goto_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v3, "--user"

    .line 1184
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1185
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_d

    :cond_24
    move-object v0, v2

    goto :goto_d

    :cond_26
    if-ne v1, p1, :cond_34

    .line 1191
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_32

    const/4 p0, -0x1

    return p0

    .line 1195
    :cond_32
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1197
    :cond_34
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->clearHistoryProcessExitInfo(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1173
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runCompact(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1034
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1038
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1039
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1040
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_fa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process record found pid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "full"

    .line 1042
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_89

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing full compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_5c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1045
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1046
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1047
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished full compaction for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d3

    :catchall_83
    move-exception p0

    .line 1046
    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_89
    const-string/jumbo v1, "some"

    .line 1048
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing some compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_ad
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1051
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1052
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1053
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished some compaction for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d3
    const/4 p0, 0x0

    return p0

    :catchall_d5
    move-exception p0

    .line 1052
    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1055
    :cond_db
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown compact command \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :catchall_fa
    move-exception p0

    .line 1040
    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final runCompat(Ljava/io/PrintWriter;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p1

    const-string/jumbo v0, "platform_compat"

    .line 3154
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    .line 3155
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 3156
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const-string v4, "--no-kill"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "-all"

    .line 3161
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "\'."

    const-string/jumbo v8, "reset"

    const-wide/16 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_4d

    .line 3162
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3164
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 3166
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_42} :catch_44

    move v6, v4

    goto :goto_79

    :catch_44
    const-string v0, "Invalid targetSdkVersion!"

    .line 3168
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_4a
    move v6, v4

    move v5, v11

    goto :goto_79

    .line 3173
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 3175
    :try_start_51
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_55} :catch_56

    goto :goto_5a

    .line 3177
    :catch_56
    invoke-virtual {v0, v5}, Lcom/android/server/compat/PlatformCompat;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v13

    :goto_5a
    cmp-long v6, v13, v9

    if-nez v6, :cond_76

    .line 3180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or invalid change: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_76
    move v5, v11

    move v6, v12

    move-wide v9, v13

    .line 3184
    :goto_79
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    if-nez v6, :cond_9e

    .line 3185
    invoke-virtual {v0, v9, v10}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v14

    if-nez v14, :cond_9e

    .line 3186
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning! Change "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " is not known yet. Enabling/disabling it could have no effect."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    :cond_9e
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 3190
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 3192
    :try_start_a8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x4d6ada7d

    if-eq v11, v12, :cond_ce

    const v12, 0x6761d4f

    if-eq v11, v12, :cond_c6

    const v8, 0x639e22e8

    if-eq v11, v8, :cond_bc

    goto :goto_d8

    :cond_bc
    const-string v8, "disable"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    const/4 v8, 0x1

    goto :goto_d9

    :cond_c6
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    const/4 v8, 0x2

    goto :goto_d9

    :cond_ce
    const-string v8, "enable"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_d4
    .catch Ljava/lang/SecurityException; {:try_start_a8 .. :try_end_d4} :catch_249

    if-eqz v8, :cond_d8

    const/4 v8, 0x0

    goto :goto_d9

    :cond_d8
    :goto_d8
    const/4 v8, -0x1

    :goto_d9
    const-string v11, " changes gated by targetSdkVersion "

    const-string v12, " for "

    const-string v4, "."

    if-eqz v8, :cond_1db

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v8, v14, :cond_16c

    const/4 v14, 0x2

    if-eq v8, v14, :cond_102

    .line 3263
    :try_start_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid toggle value: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/SecurityException; {:try_start_e9 .. :try_end_100} :catch_249

    goto/16 :goto_251

    :cond_102
    const-string v2, " to default value."

    if-eqz v6, :cond_128

    if-eqz v3, :cond_10c

    .line 3242
    :try_start_108
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    goto :goto_10f

    .line 3244
    :cond_10c
    invoke-virtual {v0, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverridesForTest(Ljava/lang/String;)V

    .line 3246
    :goto_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset all changes for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_128
    if-eqz v3, :cond_12f

    .line 3251
    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    move-result v0

    goto :goto_133

    .line 3253
    :cond_12f
    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/compat/PlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v0

    :goto_133
    if-eqz v0, :cond_153

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16a

    .line 3259
    :cond_153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No override exists for changeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_16a
    const/4 v0, 0x0

    return v0

    :cond_16c
    if-eqz v6, :cond_1a0

    .line 3218
    invoke-virtual {v0, v13, v5}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17b

    const-string v0, "No changes were disabled."

    .line 3221
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    .line 3224
    :cond_17b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_19e
    const/4 v0, 0x0

    goto :goto_1da

    .line 3227
    :cond_1a0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3228
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v5, Landroid/compat/Compatibility$ChangeConfig;

    move-object/from16 v7, v16

    invoke-direct {v5, v7, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v5}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-eqz v3, :cond_1b9

    .line 3232
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_1bc

    .line 3234
    :cond_1b9
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3236
    :goto_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19e

    :goto_1da
    return v0

    :cond_1db
    move-object v7, v14

    if-eqz v6, :cond_210

    .line 3195
    invoke-virtual {v0, v13, v5}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1eb

    const-string v0, "No changes were enabled."

    .line 3198
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    .line 3201
    :cond_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_20e
    const/4 v0, 0x0

    goto :goto_248

    .line 3204
    :cond_210
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3205
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v5, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v5, v7, v15}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v5}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    if-eqz v3, :cond_227

    .line 3209
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    goto :goto_22a

    .line 3211
    :cond_227
    invoke-virtual {v0, v2, v13}, Lcom/android/server/compat/PlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3213
    :goto_22a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_247
    .catch Ljava/lang/SecurityException; {:try_start_108 .. :try_end_247} :catch_249

    goto :goto_20e

    :goto_248
    return v0

    :catch_249
    move-exception v0

    .line 3266
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_251
    const/4 v1, -0x1

    return v1
.end method

.method public runCrash(Ljava/io/PrintWriter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x1

    move v0, p1

    .line 1278
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 1279
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1280
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1282
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    :cond_32
    const/4 v1, 0x0

    .line 1289
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1292
    :try_start_37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3b} :catch_3c

    goto :goto_3e

    :catch_3c
    move-object v1, v2

    move v2, p1

    :goto_3e
    const/4 v11, 0x0

    if-ne v0, p1, :cond_4a

    .line 1297
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getUserIds()[I

    move-result-object p1

    goto :goto_4f

    :cond_4a
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v0, p1, v11

    .line 1299
    :goto_4f
    array-length v0, p1

    move v12, v11

    :goto_51
    if-ge v12, v0, :cond_8b

    aget v7, p1, v12

    .line 1300
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4, v7}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1302
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shell does not have permission to crash packages for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_88

    .line 1306
    :cond_7b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    const-string/jumbo v8, "shell-induced crash"

    move v5, v2

    move-object v6, v1

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    :goto_88
    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    :cond_8b
    return v11
.end method

.method public runDisplay(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2842
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2843
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2847
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2845
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2899
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2900
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2901
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2902
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2903
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->moveRootTaskToDisplay(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1063
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v9, v3

    move v10, v4

    move v11, v10

    move v8, v5

    .line 1070
    :cond_f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v15, -0x1

    if-eqz v5, :cond_61

    const-string v6, "--user"

    .line 1071
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v15, :cond_f

    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    .line 1074
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_2e
    const-string v6, "-n"

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    :goto_36
    move v9, v4

    goto :goto_f

    :cond_38
    const-string v6, "-g"

    .line 1079
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    move v11, v3

    goto :goto_f

    :cond_42
    const-string v6, "-m"

    .line 1081
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move v10, v3

    goto :goto_36

    .line 1085
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    .line 1089
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 1090
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8f

    .line 1092
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v6

    invoke-static {v6}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 1093
    sget-object v7, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v6}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    .line 1094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/local/tmp/heapdump-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8f
    move-object v12, v6

    const-string/jumbo v6, "w"

    .line 1098
    invoke-virtual {v0, v12, v6}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    if-nez v13, :cond_9a

    return v15

    .line 1103
    :cond_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 1106
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v14, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1108
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v6, v0, v14}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 1115
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v5

    move-object v0, v14

    move-object v14, v3

    invoke-interface/range {v6 .. v14}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEAP DUMP FAILED on process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_e1
    const-string v3, "Waiting for dump to finish..."

    .line 1120
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 1123
    :try_start_e9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_ec
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_f2

    :catch_ed
    const-string v0, "Caught InterruptedException"

    .line 1125
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f2
    return v4
.end method

.method public runFgsNotificationRateLimit(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v1

    goto :goto_23

    .line 1267
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument must be either \'enable\' or \'disable\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 p1, 0x1

    .line 1270
    :goto_23
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->enableFgsNotificationRateLimit(Z)Z

    return v1
.end method

.method public runForceStop(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x1

    move v0, p1

    .line 1228
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 1229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1230
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1232
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 1236
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runGetConfig(Ljava/io/PrintWriter;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 2576
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_70

    const-string v8, "--days"

    .line 2577
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2578
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_20

    goto :goto_7

    .line 2580
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "--days must be a positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    const-string v8, "--proto"

    .line 2582
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    move v4, v0

    goto :goto_7

    :cond_32
    const-string v8, "--device"

    .line 2584
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    move v5, v0

    goto :goto_7

    :cond_3c
    const-string v3, "--display"

    .line 2586
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2587
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4f

    goto :goto_7

    .line 2589
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "--display must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2592
    :cond_57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2597
    :cond_70
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    if-nez v12, :cond_82

    .line 2599
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Activity manager has no configuration"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2603
    :cond_82
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2604
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_ad

    .line 2607
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Display does not exist: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2611
    :cond_ad
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2612
    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v4, :cond_da

    .line 2615
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v0, 0x10b00000001L

    .line 2616
    invoke-virtual {v12, p1, v0, v1, v13}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    if-eqz v5, :cond_d5

    const-wide v9, 0x10b00000002L

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 2618
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2620
    :cond_d5
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_14e

    .line 2622
    :cond_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_118

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v7, p0

    move-object v11, p1

    .line 2625
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_118
    if-ltz v6, :cond_14e

    .line 2629
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object p0

    .line 2630
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14e

    const-string/jumbo v1, "recentConfigs:"

    .line 2632
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_12b
    if-ge v1, v0, :cond_14e

    .line 2634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 2634
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12b

    :cond_14e
    :goto_14e
    return v2
.end method

.method public runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_f

    .line 2058
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0

    .line 2056
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Current user not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runGetInactive(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 2768
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 2769
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2770
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2772
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2776
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "usagestats"

    .line 2778
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    const-string v2, "com.android.shell"

    .line 2780
    invoke-interface {v1, p0, v0, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetIsolatedProcesses(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3370
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getIsolatedProcesses()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 3373
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3372
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object p0

    const-string v0, "["

    .line 3374
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 3376
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_26
    if-ge v2, v1, :cond_39

    if-lez v2, :cond_2f

    const-string v3, ", "

    .line 3378
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3380
    :cond_2f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_39
    const-string p0, "]"

    .line 3383
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 2738
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 2739
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2740
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2742
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2746
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "usagestats"

    .line 2748
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    if-eqz p0, :cond_4c

    const/4 v2, 0x0

    .line 2751
    invoke-interface {v1, p0, v2, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 2752
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_76

    :cond_4c
    const-string p0, "com.android.shell"

    .line 2754
    invoke-interface {v1, p0, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 2756
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    .line 2757
    iget-object v1, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    iget v0, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5a

    :cond_76
    :goto_76
    const/4 p0, 0x0

    return p0
.end method

.method public runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2237
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2241
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_30

    .line 2243
    :catch_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is not started: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    const/4 p0, 0x0

    return p0
.end method

.method public runHang(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 1883
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string v2, "--allow-restart"

    .line 1884
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_3

    .line 1887
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2d
    const-string v3, "Hanging the system..."

    .line 1892
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1895
    :try_start_35
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v3, p0, v2}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_42} :catch_43

    return v1

    .line 1897
    :catch_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hanging failed, since caller "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " did not provide a ShellCallback!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v0
.end method

.method public runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1921
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_20
    const-string v0, "Performing idle maintenance..."

    .line 1925
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    const/4 p0, 0x0

    return p0
.end method

.method public runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 3

    .line 2230
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2231
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result p0

    .line 2232
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runKill(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x1

    move v0, p1

    .line 1316
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 1317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1318
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1320
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 1324
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runKillAll(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runListBgExemptionsConfig(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3453
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 3456
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_21

    .line 3457
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 3458
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3460
    :cond_21
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_24
    return v0
.end method

.method public runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x1

    move v0, p1

    .line 1337
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 1338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1339
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1341
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    .line 1345
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3330
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runMemoryFactor()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3334
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_6e

    :goto_19
    move v1, v2

    goto :goto_3e

    :sswitch_1b
    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_19

    :cond_25
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_27
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_19

    :cond_31
    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_33
    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_19

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    packed-switch v1, :pswitch_data_7c

    .line 3342
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3340
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runResetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3338
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runShowMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 3336
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetMemoryFactor(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_6e
    .sparse-switch
        0x1bc62 -> :sswitch_33
        0x35dafd -> :sswitch_27
        0x6761d4f -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method public runMonitor(Ljava/io/PrintWriter;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v6, v1

    .line 1665
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    const-string v2, "--gdb"

    .line 1666
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1667
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_17
    const-string v2, "-m"

    .line 1668
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v7, 0x1

    goto :goto_4

    .line 1671
    :cond_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1676
    :cond_3b
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1677
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1678
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    return v0
.end method

.method public runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3134
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const v0, 0x1110190

    .line 3138
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1956
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1957
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v1, "com.android.shell"

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1958
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runProfile(Ljava/io/PrintWriter;)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 937
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 943
    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 944
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "start"

    .line 950
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Error: Unknown option: "

    const-string v7, "--user"

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-eqz v5, :cond_77

    move v3, v2

    .line 953
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 954
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_20

    :cond_35
    const-string v5, "--wall"

    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    move v3, v8

    goto :goto_20

    :cond_3f
    const-string v5, "--streaming"

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 959
    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_20

    :cond_4a
    const-string v5, "--sampling"

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 961
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_20

    .line 963
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 967
    :cond_70
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    move v13, v8

    move v12, v10

    goto :goto_c7

    :cond_77
    const-string/jumbo v5, "stop"

    .line 968
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b1

    .line 970
    :goto_80
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a8

    .line 971
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_80

    .line 974
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 978
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    :goto_ac
    move v13, v2

    move-object v4, v3

    move v12, v10

    move v3, v13

    goto :goto_c7

    .line 982
    :cond_b1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 983
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    move-object v4, v3

    move v13, v8

    move v12, v10

    move v3, v2

    goto :goto_c7

    .line 985
    :cond_c0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    goto :goto_ac

    :goto_c7
    if-ne v12, v9, :cond_cf

    const-string v0, "Error: Can\'t profile with user \'all\'"

    .line 991
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_cf
    const/4 v5, 0x0

    if-eqz v13, :cond_f5

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, "w"

    .line 1000
    invoke-virtual {v0, v15, v5}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    if-nez v16, :cond_e0

    return v9

    .line 1004
    :cond_e0
    new-instance v5, Landroid/app/ProfilerInfo;

    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v18, 0x0

    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v5

    move/from16 v17, v6

    move/from16 v19, v7

    invoke-direct/range {v14 .. v21}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    goto :goto_f6

    :cond_f5
    move-object v14, v5

    :goto_f6
    if-eqz v3, :cond_109

    :try_start_f8
    const-string v3, "dalvik.vm.extra-opts"

    .line 1011
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_109

    const-string v5, "-Xprofile:wallclock"

    .line 1012
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_109

    :catchall_107
    move-exception v0

    goto :goto_129

    .line 1019
    :cond_109
    :goto_109
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v15, 0x0

    move-object v11, v4

    invoke-interface/range {v10 .. v15}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_128

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROFILE FAILED on process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_f8 .. :try_end_127} :catchall_107

    return v9

    :cond_128
    return v2

    .line 1028
    :goto_129
    throw v0

    .line 986
    :cond_12a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runRefreshSettingsCache()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3148
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->refreshSettingsCache()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3325
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runRestart(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1907
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1908
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_20
    const-string v0, "Restart the system..."

    .line 1912
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1914
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->restart()V

    const/4 p0, 0x0

    return p0
.end method

.method public runRootTaskInfo(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2936
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2937
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2938
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    .line 2939
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runRootTaskRemove(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2944
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2945
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2946
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1931
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    .line 1933
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_1b

    :cond_11
    const-string/jumbo v0, "off"

    .line 1935
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v2

    .line 1942
    :goto_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1945
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v0, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    invoke-interface {v3, p1, v4}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_29

    .line 1950
    :catch_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    return v2

    .line 1938
    :cond_30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x2

    .line 856
    :try_start_5
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v6
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_65

    const/high16 v2, 0x400000

    .line 860
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v2, v1}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 862
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v20, 0x0

    if-nez v3, :cond_1c

    move-object v12, v4

    goto :goto_22

    :cond_1c
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v20

    move-object v12, v5

    .line 864
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 866
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    if-nez v1, :cond_40

    move-object/from16 v16, v4

    goto :goto_46

    :cond_40
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v16, v1

    .line 867
    :goto_46
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move/from16 v19, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 870
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    if-nez v0, :cond_64

    .line 871
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    :cond_64
    return v20

    :catch_65
    move-exception v0

    move-object v1, v0

    .line 858
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x2

    .line 2788
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3d

    const-string p1, "--user"

    .line 2789
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2790
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 2792
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: Can\'t use user \'all\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2796
    :cond_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2801
    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2802
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2804
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_e4

    :goto_51
    move v3, v1

    goto :goto_9f

    :sswitch_53
    const-string v3, "HIDDEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_51

    :cond_5c
    const/4 v3, 0x6

    goto :goto_9f

    :sswitch_5e
    const-string v3, "RUNNING_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto :goto_51

    :cond_67
    move v3, v4

    goto :goto_9f

    :sswitch_69
    const-string v3, "COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_51

    :cond_72
    const/4 v3, 0x4

    goto :goto_9f

    :sswitch_74
    const-string v3, "MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_51

    :cond_7d
    const/4 v3, 0x3

    goto :goto_9f

    :sswitch_7f
    const-string v3, "RUNNING_MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_51

    :cond_88
    const/4 v3, 0x2

    goto :goto_9f

    :sswitch_8a
    const-string v3, "BACKGROUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_51

    :cond_93
    const/4 v3, 0x1

    goto :goto_9f

    :sswitch_95
    const-string v3, "RUNNING_CRITICAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_51

    :cond_9e
    move v3, v5

    :goto_9f
    packed-switch v3, :pswitch_data_102

    .line 2828
    :try_start_a2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_a6} :catch_a7

    goto :goto_d1

    .line 2830
    :catch_a7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown level option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_c0
    const/16 v4, 0x14

    goto :goto_d1

    :pswitch_c3
    const/16 v4, 0xa

    goto :goto_d1

    :pswitch_c6
    const/16 v4, 0x50

    goto :goto_d1

    :pswitch_c9
    const/16 v4, 0x3c

    goto :goto_d1

    :pswitch_cc
    const/16 v4, 0x28

    goto :goto_d1

    :pswitch_cf
    const/16 v4, 0xf

    .line 2834
    :goto_d1
    :pswitch_d1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, p1, v4}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 2835
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Unknown error: failed to set trim level"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_e3
    return v5

    :sswitch_data_e4
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_95
        -0x327dbed2 -> :sswitch_8a
        -0xd10205d -> :sswitch_7f
        0x9c2ed03 -> :sswitch_74
        0xaeb2139 -> :sswitch_69
        0x3fef1094 -> :sswitch_5e
        0x7f0191aa -> :sswitch_53
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_cc
        :pswitch_d1
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
    .end packed-switch
.end method

.method public final runServiceRestartBackoff(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3348
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_PROCESS_LIMIT"

    const-string/jumbo v2, "runServiceRestartBackoff()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 3352
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_8c

    :goto_1b
    move v1, v3

    goto :goto_3e

    :sswitch_1d
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_28
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_1b

    :cond_32
    move v1, v2

    goto :goto_3e

    :sswitch_34
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_1b

    :cond_3d
    move v1, v4

    :goto_3e
    const-string/jumbo v5, "shell"

    packed-switch v1, :pswitch_data_9a

    .line 3364
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 3357
    :pswitch_62
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    return v4

    .line 3360
    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->isServiceRestartBackoffEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const-string p0, "enabled"

    goto :goto_7d

    :cond_7b
    const-string p0, "disabled"

    :goto_7d
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 3354
    :pswitch_81
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setServiceRestartBackoffEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    return v4

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x4d6ada7d -> :sswitch_34
        0x35dafd -> :sswitch_28
        0x639e22e8 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_81
        :pswitch_6c
        :pswitch_62
    .end packed-switch
.end method

.method public runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1155
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetBgAbusiveUids(Ljava/io/PrintWriter;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "Malformed input"

    .line 3412
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3413
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const-class v2, Lcom/android/server/am/AppBatteryTracker;

    .line 3414
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController;->getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    const/4 v2, -0x1

    if-nez v1, :cond_1f

    .line 3416
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Unable to get bg battery tracker"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1f
    const/4 v3, 0x0

    if-nez v0, :cond_26

    .line 3420
    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker;->clearDebugUidPercentage()V

    return v3

    :cond_26
    const-string v4, ","

    .line 3423
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3424
    array-length v4, v0

    new-array v4, v4, [I

    .line 3425
    array-length v5, v0

    new-array v5, v5, [[D

    move v6, v3

    .line 3427
    :goto_33
    :try_start_33
    array-length v7, v0

    if-ge v6, v7, :cond_80

    .line 3428
    aget-object v7, v0, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3429
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4a

    .line 3430
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3433
    :cond_4a
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v6

    const/4 v8, 0x1

    .line 3434
    aget-object v7, v7, v8

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3435
    array-length v8, v7

    const/4 v9, 0x5

    if-eq v8, v9, :cond_67

    .line 3436
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3439
    :cond_67
    array-length v8, v7

    new-array v8, v8, [D

    aput-object v8, v5, v6

    move v8, v3

    .line 3440
    :goto_6d
    array-length v9, v7

    if-ge v8, v9, :cond_7d

    .line 3441
    aget-object v9, v5, v6

    aget-object v10, v7, v8

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v9, v8
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_7a} :catch_84

    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 3448
    :cond_80
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->setDebugUidPercentage([I[[D)V

    return v3

    .line 3445
    :catch_84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1136
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    const-string v4, "-w"

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, p1

    goto :goto_4

    :cond_14
    const-string v2, "--persistent"

    .line 1139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, p1

    goto :goto_4

    .line 1142
    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1147
    :cond_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1148
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, p1, v1, v2}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return v0
.end method

.method public runSetInactive(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x2

    .line 2654
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string p1, "--user"

    .line 2655
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2656
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 2658
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2662
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2663
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "usagestats"

    .line 2665
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 2667
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v1, v0, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3272
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 3274
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_72

    :goto_13
    move v0, v5

    goto :goto_40

    :sswitch_15
    const-string v0, "MODERATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_13

    :cond_1e
    move v0, v3

    goto :goto_40

    :sswitch_20
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_13

    :cond_29
    move v0, v1

    goto :goto_40

    :sswitch_2b
    const-string v0, "CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_13

    :cond_34
    move v0, v2

    goto :goto_40

    :sswitch_36
    const-string v0, "NORMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_13

    :cond_3f
    move v0, v4

    :goto_40
    packed-switch v0, :pswitch_data_84

    .line 3289
    :try_start_43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_47} :catch_49

    move v1, v0

    goto :goto_4a

    :catch_49
    move v1, v5

    :goto_4a
    if-ltz v1, :cond_4e

    if-le v1, v3, :cond_6c

    .line 3293
    :cond_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown level option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_67
    move v1, v2

    goto :goto_6c

    :pswitch_69
    move v1, v3

    goto :goto_6c

    :pswitch_6b
    move v1, v4

    .line 3297
    :cond_6c
    :goto_6c
    :pswitch_6c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->setMemFactorOverride(I)V

    return v4

    :sswitch_data_72
    .sparse-switch
        -0x76664f19 -> :sswitch_36
        -0x5cfe9861 -> :sswitch_2b
        0x12734 -> :sswitch_20
        0x9c2ed03 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_69
        :pswitch_6c
        :pswitch_67
    .end packed-switch
.end method

.method public runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x2

    .line 2700
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    const-string p1, "--user"

    .line 2701
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2702
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 2704
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2708
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2709
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2710
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_41

    return v1

    .line 2712
    :cond_41
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    move v1, v4

    :goto_4b
    const-string/jumbo v5, "usagestats"

    .line 2715
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    if-nez v1, :cond_60

    .line 2718
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v5, v0, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_8f

    .line 2720
    :cond_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2721
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v2, v0, v3}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    :goto_6d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 2723
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2724
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7e

    goto :goto_6d

    .line 2726
    :cond_7e
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v3, v0, v2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 2728
    :cond_87
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2729
    invoke-interface {v5, p0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    :goto_8f
    return v4
.end method

.method public final runSetStopUserOnSwitch(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3388
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setStopUserOnSwitch()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-nez v0, :cond_25

    const-string/jumbo v0, "setStopUserOnSwitch(): resetting to default value"

    .line 3392
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    const-string p0, "Reset to default value"

    .line 3394
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3398
    :cond_25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "runSetStopUserOnSwitch(): setting to %d (%b)"

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3404
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 3405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1167
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runShowMemoryFactor(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3302
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2d

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    goto :goto_32

    :cond_15
    const-string p0, "CRITICAL"

    .line 3317
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    :cond_1b
    const-string p0, "LOW"

    .line 3314
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    :cond_21
    const-string p0, "MODERATE"

    .line 3311
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    :cond_27
    const-string p0, "NORMAL"

    .line 3308
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    :cond_2d
    const-string p0, "<UNKNOWN>"

    .line 3305
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    :goto_32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x0

    return p0
.end method

.method public runStack(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2854
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_76

    :goto_f
    move v1, v2

    goto :goto_40

    :sswitch_11
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v1, 0x3

    goto :goto_40

    :sswitch_1d
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_f

    :cond_27
    const/4 v1, 0x2

    goto :goto_40

    :sswitch_29
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_f

    :cond_33
    const/4 v1, 0x1

    goto :goto_40

    :sswitch_35
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_f

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    packed-switch v1, :pswitch_data_88

    .line 2864
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2856
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 2858
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 2860
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 2862
    :pswitch_70
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runRootTaskRemove(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x37b5077c -> :sswitch_35
        0x3164ae -> :sswitch_29
        0x32b09e -> :sswitch_1d
        0x3ceed601 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_61
    .end packed-switch
.end method

.method public runStackList(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2928
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object p0

    .line 2929
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2930
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2908
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2909
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2910
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2911
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2912
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    .line 2914
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    goto :goto_29

    :cond_20
    const-string v2, "false"

    .line 2916
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v1, v3

    .line 2923
    :goto_29
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V

    return v3

    .line 2919
    :cond_2f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: bad toTop arg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runStartActivity(Ljava/io/PrintWriter;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x2

    .line 506
    :try_start_5
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_3c7

    .line 511
    iget v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_19

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 517
    :cond_19
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_21

    .line 518
    invoke-static {v2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->repackIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 522
    :cond_21
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_49

    .line 523
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_49

    .line 524
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 525
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v6, v7}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 529
    :cond_49
    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v15, 0x0

    if-eqz v6, :cond_f1

    .line 531
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_5d

    .line 532
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_b4

    .line 535
    :cond_5d
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v13, "ActivityManagerShellCommand"

    .line 535
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 538
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v9, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 539
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d8

    .line 540
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_8b

    goto :goto_d8

    .line 544
    :cond_8b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_aa

    .line 545
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 550
    :cond_aa
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 552
    :goto_b4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 554
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v7, v6, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-wide/16 v6, 0xfa

    .line 556
    :try_start_d4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d7
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_d7} :catch_f1

    goto :goto_f1

    .line 541
    :cond_d8
    :goto_d8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Intent does not match any activities: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 563
    :catch_f1
    :cond_f1
    :goto_f1
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const/16 v19, 0x0

    if-nez v6, :cond_ff

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v7, :cond_fc

    goto :goto_ff

    :cond_fc
    move-object/from16 v16, v19

    goto :goto_123

    :cond_ff
    :goto_ff
    if-eqz v6, :cond_10d

    const-string/jumbo v7, "w"

    .line 566
    invoke-virtual {v0, v6, v7}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_10b

    return v5

    :cond_10b
    move-object v9, v6

    goto :goto_10f

    :cond_10d
    move-object/from16 v9, v19

    .line 571
    :goto_10f
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object/from16 v16, v6

    .line 576
    :goto_123
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v6, :cond_137

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v6

    if-eqz v6, :cond_137

    .line 577
    invoke-static {v2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarLinkIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_137

    .line 578
    invoke-static/range {p1 .. p1}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printForCarlifeStart(Ljava/io/PrintWriter;)V

    goto :goto_14b

    .line 581
    :cond_137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    :goto_14b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    const/high16 v6, 0x10000000

    .line 584
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 590
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v6, v4, :cond_165

    .line 591
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 592
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_167

    :cond_165
    move-object/from16 v6, v19

    .line 594
    :goto_167
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v7, :cond_176

    if-nez v6, :cond_171

    .line 596
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 598
    :cond_171
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 601
    :cond_176
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    if-eqz v7, :cond_185

    if-nez v6, :cond_180

    .line 604
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 606
    :cond_180
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 608
    :cond_185
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_193

    if-nez v6, :cond_190

    .line 611
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 613
    :cond_190
    invoke-virtual {v6, v5}, Landroid/app/ActivityOptions;->setApplyBigFreeformSize(Z)V

    .line 616
    :cond_193
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v7, :cond_1a2

    if-nez v6, :cond_19d

    .line 618
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 620
    :cond_19d
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 622
    :cond_1a2
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v7, v4, :cond_1b8

    if-nez v6, :cond_1ac

    .line 624
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 626
    :cond_1ac
    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 628
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v7, :cond_1b8

    .line 629
    invoke-virtual {v6, v5, v5}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 632
    :cond_1b8
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v7, :cond_1c5

    if-nez v6, :cond_1c2

    .line 634
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 636
    :cond_1c2
    invoke-virtual {v6, v5}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 638
    :cond_1c5
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    if-eqz v7, :cond_1d2

    if-nez v6, :cond_1cf

    .line 640
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 642
    :cond_1cf
    invoke-virtual {v6, v5}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 644
    :cond_1d2
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    if-eqz v7, :cond_1df

    if-nez v6, :cond_1dc

    .line 646
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 648
    :cond_1dc
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->setDismissKeyguardIfInsecure()V

    .line 650
    :cond_1df
    iget-boolean v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v7, :cond_212

    .line 651
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v6, :cond_1f5

    .line 653
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_1f7

    :cond_1f5
    move-object/from16 v17, v19

    :goto_1f7
    iget v10, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v18, "com.android.shell"

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, v18

    move/from16 v18, v10

    move-object v10, v2

    move/from16 v19, v11

    move-object v11, v3

    move/from16 v22, v15

    move/from16 v15, v19

    .line 651
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/am/ActivityManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v6

    .line 654
    iget v7, v6, Landroid/app/WaitResult;->result:I

    move-object/from16 v19, v6

    goto :goto_237

    :cond_212
    move/from16 v22, v15

    .line 656
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    if-eqz v6, :cond_226

    .line 658
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_228

    :cond_226
    move-object/from16 v17, v19

    :goto_228
    iget v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v10, "com.android.shell"

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v2

    move/from16 v18, v11

    move-object v11, v3

    .line 656
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v7

    .line 660
    :goto_237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 661
    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v6, :cond_241

    move-object v6, v1

    goto :goto_245

    :cond_241
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 665
    :goto_245
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v10, :cond_25a

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v10

    if-eqz v10, :cond_25a

    .line 666
    invoke-static {v2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarLinkIntent(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_25a

    .line 667
    invoke-static {v6}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printForCarlifeStartWarning(Ljava/io/PrintWriter;)V

    goto/16 :goto_3b6

    :cond_25a
    const/16 v10, -0x62

    if-eq v7, v10, :cond_303

    const/16 v10, -0x61

    if-eq v7, v10, :cond_2ee

    if-eqz v7, :cond_2ec

    if-eq v7, v5, :cond_2e7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_2e1

    const/4 v10, 0x3

    if-eq v7, v10, :cond_2db

    const/16 v10, 0x64

    if-eq v7, v10, :cond_2d5

    packed-switch v7, :pswitch_data_3d4

    .line 731
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: Activity not started, unknown error code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_308

    .line 700
    :pswitch_289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, unable to resolve "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_308

    :pswitch_2a2
    const-string v7, "Error type 3"

    .line 705
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not exist."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 706
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_308

    :pswitch_2c9
    const-string v7, "Error: Activity not started, you requested to both forward and receive its result"

    .line 711
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_308

    :pswitch_2cf
    const-string v7, "Error: Activity not started, you do not have permission to access it."

    .line 716
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_308

    :cond_2d5
    const-string v7, "Warning: Activity not started because the  current activity is being kept for the user."

    .line 676
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ec

    :cond_2db
    const-string v7, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    .line 682
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ec

    :cond_2e1
    const-string v7, "Warning: Activity not started, its current task has been brought to the front"

    .line 695
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ec

    :cond_2e7
    const-string v7, "Warning: Activity not started because intent should be handled by the caller"

    .line 689
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2ec
    :goto_2ec
    move v15, v5

    goto :goto_30a

    .line 721
    :cond_2ee
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_308

    :cond_303
    const-string v7, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    .line 726
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_308
    move/from16 v15, v22

    .line 735
    :goto_30a
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 736
    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v6, :cond_3b6

    if-eqz v15, :cond_3b6

    if-nez v19, :cond_321

    .line 738
    new-instance v6, Landroid/app/WaitResult;

    invoke-direct {v6}, Landroid/app/WaitResult;-><init>()V

    .line 739
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v6, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_323

    :cond_321
    move-object/from16 v6, v19

    .line 741
    :goto_323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Status: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v6, Landroid/app/WaitResult;->timeout:Z

    if-eqz v10, :cond_335

    const-string/jumbo v10, "timeout"

    goto :goto_338

    :cond_335
    const-string/jumbo v10, "ok"

    :goto_338
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LaunchState: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/app/WaitResult;->launchState:I

    invoke-static {v10}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object v7, v6, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v7, :cond_37a

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    :cond_37a
    iget-wide v10, v6, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-ltz v7, :cond_398

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TotalTime: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v6, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    :cond_398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WaitTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v8, v20

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "Complete"

    .line 750
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 754
    :cond_3b6
    :goto_3b6
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v6, :cond_3c2

    .line 756
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v6}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    .line 758
    :cond_3c2
    iget v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v6, :cond_49

    return v22

    :catch_3c7
    move-exception v0

    move-object v1, v0

    .line 508
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_3d4
    .packed-switch -0x5e
        :pswitch_2cf
        :pswitch_2c9
        :pswitch_2a2
        :pswitch_289
    .end packed-switch
.end method

.method public runStartService(Ljava/io/PrintWriter;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 766
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v4
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b3

    .line 770
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v10, -0x1

    if-ne v1, v10, :cond_14

    const-string p0, "Error: Can\'t start activity with user \'all\'"

    .line 771
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 774
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 776
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v7, "com.android.shell"

    move v6, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_44

    const-string p0, "Error: Not found; no service started."

    .line 779
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 781
    :cond_44
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: Requires permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 784
    :cond_69
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Error: "

    if-eqz p1, :cond_8e

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    .line 787
    :cond_8e
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_b1
    const/4 p0, 0x0

    return p0

    :catch_b3
    move-exception p0

    .line 768
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runStartUser(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2065
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2c

    const-string v1, "-w"

    .line 2066
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_2

    .line 2069
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 2073
    :cond_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2075
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->checkIfMaintenanceModeUserExists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2076
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: couldn\'t start user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_44
    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 2081
    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter-IA;)V

    move-object v3, v4

    .line 2082
    :cond_4d
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v3}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    if-eqz v1, :cond_5e

    if-eqz v2, :cond_5e

    const-wide/32 v1, 0x1d4c0

    .line 2084
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    move-result v2

    :cond_5e
    if-eqz v2, :cond_66

    const-string p0, "Success: user started"

    .line 2088
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    .line 2090
    :cond_66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not start user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6f
    return v0
.end method

.method public runStopApp(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    move v0, p1

    .line 1244
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const-string v0, "--user"

    .line 1245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1246
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1248
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1252
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    return p1
.end method

.method public runStopService(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 798
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_53

    .line 802
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const-string p0, "Error: Can\'t stop activity with user \'all\'"

    .line 803
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 806
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 808
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {p1, v2, v1, v4, p0}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_40

    const-string p0, "Service not stopped: was not running."

    .line 810
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_40
    const/4 p1, 0x1

    if-ne p0, p1, :cond_49

    const-string p0, "Service stopped"

    .line 813
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_49
    if-ne p0, v3, :cond_51

    const-string p0, "Error stopping service"

    .line 816
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_51
    const/4 p0, 0x0

    return p0

    :catch_53
    move-exception p0

    .line 800
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runStopUser(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2170
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_38

    const-string v5, "-w"

    .line 2171
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v1, p1

    goto :goto_4

    :cond_15
    const-string v2, "-f"

    .line 2173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, p1

    goto :goto_4

    .line 2176
    :cond_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2180
    :cond_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_48

    .line 2181
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    .line 2183
    :goto_49
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->checkIfMaintenanceModeUserExists()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2184
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: couldn\'t stop user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2189
    :cond_59
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, v2, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v2

    if-eqz v2, :cond_be

    const/4 v0, -0x4

    if-eq v2, v0, :cond_8c

    const/4 v0, -0x3

    if-eq v2, v0, :cond_89

    const/4 v0, -0x2

    if-eq v2, v0, :cond_86

    if-eq v2, v4, :cond_6f

    const-string p1, ""

    goto :goto_a2

    .line 2197
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Unknown user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a2

    :cond_86
    const-string p1, " (Can\'t stop current user)"

    goto :goto_a2

    :cond_89
    const-string p1, " (System user cannot be stopped)"

    goto :goto_a2

    .line 2203
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Can\'t stop user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - one of its related users can\'t be stopped)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2207
    :goto_a2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_be
    if-eqz v1, :cond_c3

    .line 2210
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    :cond_c3
    return v0
.end method

.method public runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3103
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 3107
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3112
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 3116
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2645
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2646
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2011
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    .line 2013
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2017
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->checkIfMaintenanceModeUserExists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2018
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: couldn\'t switch user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_3c
    const/4 v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 2024
    :goto_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_68

    const-string v3, "-w"

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    move v3, v0

    goto :goto_3f

    .line 2028
    :cond_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2033
    :cond_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v4, 0x40

    const-string/jumbo v6, "shell_runSwitchUser"

    .line 2035
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v3, :cond_7f

    .line 2038
    :try_start_7a
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    move-result p0

    goto :goto_85

    .line 2040
    :cond_7f
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p0
    :try_end_85
    .catchall {:try_start_7a .. :try_end_85} :catchall_9c

    :goto_85
    if-eqz p0, :cond_8b

    .line 2049
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :cond_8b
    :try_start_8b
    const-string p0, "Error: Failed to switch to user %d\n"

    new-array v3, v0, [Ljava/lang/Object;

    .line 2045
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1, p0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_9c

    .line 2049
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_9c
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2050
    throw p0
.end method

.method public runTask(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lock"

    .line 2952
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2953
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_12
    const-string/jumbo v1, "resizeable"

    .line 2954
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2955
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_20
    const-string/jumbo v1, "resize"

    .line 2956
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2957
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_2e
    const-string v1, "focus"

    .line 2958
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2959
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 2961
    :cond_3b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3073
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTaskLock(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2967
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stop"

    .line 2968
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2969
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 2971
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2972
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    .line 2974
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity manager is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_31

    const-string p0, ""

    goto :goto_34

    :cond_31
    const-string/jumbo p0, "not "

    :goto_34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "in lockTaskMode"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTaskResize(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2989
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2990
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_19

    .line 2993
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: invalid input bounds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_19
    const/4 v1, 0x0

    .line 2996
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    return v1
.end method

.method public runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2980
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2981
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2982
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2983
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2984
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public runToUri(Ljava/io/PrintWriter;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 1965
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object p0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_e

    .line 1969
    invoke-virtual {p0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_e
    move-exception p0

    .line 1967
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start"

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_12
    const-string/jumbo v1, "stop"

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 883
    :cond_20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown trace ipc command \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Starting IPC tracing."

    .line 889
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 891
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    const/4 p0, 0x0

    return p0
.end method

.method public runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 899
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2e

    const-string v1, "--dump-file"

    .line 900
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 901
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 903
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2e
    if-nez v1, :cond_36

    const-string p0, "Error: Specify filename to dump logs to."

    .line 908
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_36
    const-string/jumbo v2, "w"

    .line 913
    invoke-virtual {p0, v1, v2}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_40

    return v3

    .line 918
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "STOP TRACE FAILED."

    .line 919
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 923
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 2249
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2252
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    .line 2253
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const-string p0, "Association tracking started."

    .line 2254
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24

    :cond_1f
    const-string p0, "Association tracking already enabled."

    .line 2256
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2114
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "!"

    const/4 v4, -0x1

    if-nez v2, :cond_25

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: token parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2119
    :cond_25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2121
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: secret parameter not supported"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2126
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->checkIfMaintenanceModeUserExists()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: couldn\'t unlock user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2131
    :cond_4f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2, v2}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "Success: user unlocked"

    .line 2133
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 2137
    :cond_5e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: could not unlock user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_67
    const/4 p0, 0x0

    return p0
.end method

.method public runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 2263
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2266
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 2267
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 2268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    const-string p0, "Association tracking stopped."

    .line 2269
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    const-string p0, "Association tracking not running."

    .line 2271
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3121
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 3122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3123
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    :goto_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 3126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3128
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    const-string p0, "Packages updated with most recent ApplicationInfos."

    .line 3129
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3143
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runWatchUids(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    .line 1865
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    const-string v1, "--oom"

    .line 1866
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1867
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1869
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 1875
    :cond_32
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, v2, p1, p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1876
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    const/4 p0, 0x0

    return p0
.end method

.method public runWrite(Ljava/io/PrintWriter;)I
    .registers 5

    .line 3080
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->flushRecentTasks()V

    const-string p0, "All tasks persisted."

    .line 3083
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final switchUserAndWaitForComplete(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1975
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v0, :cond_e

    return v1

    .line 1981
    :cond_e
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1982
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    const-class v3, Lcom/android/server/am/ActivityManagerShellCommand;

    .line 1990
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1982
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p1

    if-nez p1, :cond_2d

    const/4 p0, 0x0

    return p0

    :cond_2d
    const-wide/32 v1, 0x1d4c0

    .line 2001
    :try_start_30
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_40

    .line 2003
    :catch_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Thread interrupted unexpectedly."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_40
    return p1
.end method

.method public taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3003
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, p2, p4}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)Z

    int-to-long p0, p3

    .line 3005
    :try_start_6
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 11

    if-eqz p1, :cond_25

    .line 2467
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10d00000001L

    .line 2468
    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10d00000002L

    .line 2470
    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10d00000003L

    .line 2472
    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_27

    :cond_25
    const-wide/16 p2, -0x1

    :goto_27
    if-eqz p4, :cond_4a

    const-string/jumbo p5, "stable-width-px: "

    .line 2476
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo p5, "stable-height-px: "

    .line 2477
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo p5, "stable-density-dpi: "

    .line 2478
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 2481
    :cond_4a
    new-instance p5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2482
    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2483
    iget-object p6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_94

    const-wide v0, 0x10400000004L

    .line 2485
    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10800000005L

    .line 2487
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    .line 2486
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10d00000006L

    .line 2489
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 2488
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000007L

    .line 2491
    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    .line 2490
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_94
    if-eqz p4, :cond_ce

    const-string/jumbo v0, "total-ram: "

    .line 2494
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo p5, "low-ram: "

    .line 2495
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p5, "max-cores: "

    .line 2496
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo p5, "has-secure-screen-lock: "

    .line 2497
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2502
    :cond_ce
    :try_start_ce
    iget-object p5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p5}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p5
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d4} :catch_1a8

    .line 2506
    iget p6, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz p6, :cond_f3

    if-eqz p1, :cond_e2

    const-wide v0, 0x10d00000008L

    .line 2508
    invoke-virtual {p1, v0, v1, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e2
    if-eqz p4, :cond_f3

    const-string/jumbo p6, "opengl-version: 0x"

    .line 2512
    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget p5, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    :cond_f3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object p5

    .line 2518
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/String;

    .line 2519
    invoke-interface {p5, p6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    .line 2520
    invoke-static {p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 p6, 0x0

    move v0, p6

    .line 2521
    :goto_108
    array-length v1, p5

    if-ge v0, v1, :cond_127

    if-eqz p1, :cond_117

    const-wide v1, 0x20900000009L

    .line 2523
    aget-object v3, p5, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_117
    if-eqz p4, :cond_124

    const-string/jumbo v1, "opengl-extensions: "

    .line 2527
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, p5, v0

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_108

    .line 2532
    :cond_127
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2533
    invoke-virtual {p0, p6}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object p5

    .line 2534
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, p6

    .line 2535
    :goto_140
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_172

    if-eqz p1, :cond_15a

    const-wide v1, 0x2090000000aL

    .line 2538
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2537
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_15a
    if-eqz p4, :cond_16f

    const-string/jumbo v1, "shared-libraries: "

    .line 2541
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16f
    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    .line 2545
    :cond_172
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    .line 2546
    new-instance p5, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {p5}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2553
    :goto_17e
    array-length p5, p0

    if-ge p6, p5, :cond_1a2

    .line 2554
    aget-object p5, p0, p6

    iget-object p5, p5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz p5, :cond_19f

    if-eqz p1, :cond_191

    const-wide v0, 0x2090000000bL

    .line 2556
    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_191
    if-eqz p4, :cond_19f

    const-string p5, "features: "

    .line 2559
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object p5, p0, p6

    iget-object p5, p5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19f
    add-int/lit8 p6, p6, 0x1

    goto :goto_17e

    :cond_1a2
    if-eqz p1, :cond_1a7

    .line 2565
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1a7
    return-void

    :catch_1a8
    move-exception p0

    .line 2504
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
