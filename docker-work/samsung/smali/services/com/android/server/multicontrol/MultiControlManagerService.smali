.class public Lcom/android/server/multicontrol/MultiControlManagerService;
.super Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.source "MultiControlManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;,
        Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;,
        Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;,
        Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final NAME_LIMIT:I = 0x64

.field public static final PROTOCOL_MULTICONTROL_VERSION_1_JAN_2021:I = 0x1

.field public static final PROTOCOL_VERSION:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_PREFIX:Ljava/lang/String; = "MultiControl@"

.field public static final USE_MULTI_CONTROL_MANAGER_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"


# instance fields
.field public mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

.field public mAppProtocolVersion:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mHandler:Landroid/os/Handler;

.field public mInputFilter:Landroid/view/IInputFilter;

.field public mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsBootComplete:Z

.field public mIsMultiControlEnabled:Z

.field public mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mThread:Lcom/android/server/ServiceThread;

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/android/server/multicontrol/MultiControlManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/database/ContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeStates(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserSwitching(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiControl@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x3

    const-string v1, "RAMS"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    sput-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsMultiControlEnabled:Z

    const/16 v1, -0x2710

    .line 69
    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppProtocolVersion:I

    .line 170
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "multicontrol"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mThread:Lcom/android/server/ServiceThread;

    .line 171
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mHandler:Landroid/os/Handler;

    .line 174
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    .line 178
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    .line 179
    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 182
    const-class p1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 184
    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->register()V

    .line 186
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    if-nez p1, :cond_65

    .line 187
    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    .line 188
    const-class p0, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_65
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/multicontrol/MultiControlManagerService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 405
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_1b

    .line 407
    array-length p1, p3

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p3, "-a"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 408
    :cond_1b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "MultiControlManagerService (dumpsys multicontrol):"

    .line 409
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Lcom/android/server/multicontrol/Log;->dump(Ljava/io/PrintWriter;)V

    .line 411
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 412
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 414
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_39
    return-void
.end method

.method public final dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 421
    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 423
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "Configuration"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 424
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 425
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_size_forced"

    .line 426
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_SIZE_FORCED"

    .line 425
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 428
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_density_forced"

    const/4 v2, 0x0

    .line 429
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_DENSITY_FORCED"

    .line 428
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 432
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v2, "screen_off_timeout"

    .line 433
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCREEN_OFF_TIMEOUT"

    .line 432
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 435
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 436
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 437
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHOW_IME_WITH_HARD_KEYBOARD"

    .line 436
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 439
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public forceHideCursor(Z)V
    .registers 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_1c

    .line 197
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in forceHideCursor"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerInternal;->forceHideCursor(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception p0

    .line 201
    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public getProtocolVersion()I
    .registers 3

    .line 349
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v1, "getProtocolVersion"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final initializeStates()V
    .registers 5

    .line 249
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 250
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_12

    .line 251
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/multicontrol/MultiControlManagerService$1;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_23
    return-void
.end method

.method public isAllowed()Z
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "isAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isSystemReady()Z

    move-result p0

    .line 343
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSystemReady()Z
    .registers 4

    .line 320
    iget-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_18

    const/4 p0, 0x1

    return p0

    .line 324
    :cond_18
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    if-nez v2, :cond_1d

    .line 313
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v2
.end method

.method public final onBootPhase(I)V
    .registers 4

    .line 245
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_20

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public final onUserChanged(I)V
    .registers 5

    .line 299
    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_5

    return-void

    .line 302
    :cond_5
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->setCurrentUserId(I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    return-void
.end method

.method public final onUserStarting(I)V
    .registers 4

    .line 268
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 4

    .line 290
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopping(I)V
    .registers 4

    .line 286
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_27

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentUser="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public final onUserSwitching(I)V
    .registers 5

    .line 280
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(I)V
    .registers 5

    .line 272
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_33

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserChanged(I)V

    :cond_33
    return-void
.end method

.method public resetInputFilter()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 393
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 5

    .line 294
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1b
    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    return-void
.end method

.method public setCursorPosition(III)V
    .registers 7

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_30

    .line 210
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in setCursorPosition [displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->setCursorPosition(III)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception p0

    .line 214
    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 360
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 363
    :try_start_11
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener;->onInstalled()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p0

    .line 365
    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_1c

    .line 223
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setInteractive"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception p0

    .line 227
    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setMultiControlOutOfFocus(Z)V
    .registers 5

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_2b

    .line 236
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in setMultiControlOutOfFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerInternal;->setMultiControlOutOfFocus(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2b

    :catch_21
    move-exception p0

    .line 240
    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setProtocolVersion(I)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setProtocolVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppProtocolVersion:I

    return-void
.end method

.method public startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->unlinkListenerToDeath()V

    .line 376
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;II)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 378
    :try_start_1c
    invoke-interface {p1}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 380
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public stopDeathChecker()V
    .registers 1

    .line 386
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->unlinkListenerToDeath()V

    return-void
.end method

.method public final unlinkListenerToDeath()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    if-eqz v0, :cond_a

    .line 398
    invoke-virtual {v0}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->unlinkToDeath()V

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :cond_a
    return-void
.end method
