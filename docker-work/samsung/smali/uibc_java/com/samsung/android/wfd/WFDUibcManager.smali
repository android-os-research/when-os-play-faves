.class public Lcom/samsung/android/wfd/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;,
        Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;,
        Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;,
        Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;,
        Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;,
        Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;,
        Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist INPUT_GENERIC_KEY_DOWN:I = 0x3

.field private static final blacklist INPUT_GENERIC_KEY_UP:I = 0x4

.field private static final blacklist INPUT_GENERIC_ROTATE:I = 0x8

.field private static final blacklist INPUT_GENERIC_SCROLL_HORIZONTAL:I = 0x7

.field private static final blacklist INPUT_GENERIC_SCROLL_VERTICAL:I = 0x6

.field private static final blacklist INPUT_GENERIC_TOUCH_DOWN:I = 0x0

.field private static final blacklist INPUT_GENERIC_TOUCH_MOVE:I = 0x2

.field private static final blacklist INPUT_GENERIC_TOUCH_UP:I = 0x1

.field private static final blacklist INPUT_GENERIC_ZOOM:I = 0x5

.field private static final blacklist MOTION_EVENT_CANCEL:I = 0x63

.field private static final blacklist TAG:Ljava/lang/String; = "WFDUibcManager"

.field private static final blacklist TIMEOUT_BUSY_POLLING:I = 0x64

.field private static final blacklist TIMEOUT_FREE_POLLING:I = 0xbb8


# instance fields
.field private blacklist mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

.field private blacklist mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private blacklist mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private blacklist mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

.field private blacklist mEventDispatcherThread:Ljava/lang/Thread;

.field private blacklist mExternalDisplayHeight:F

.field private blacklist mExternalDisplayWidth:F

.field private blacklist mIsSamsungMobile:Z

.field private blacklist mTimeoutForPollingEvent:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    const-string v0, "uibcmanager_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 70
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    .line 73
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    .line 80
    iput v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    .line 113
    sput-object p1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    .line 114
    const-string v0, "WFDUibcManager"

    invoke-static {v0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private blacklist clearInstance()V
    .registers 2

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 192
    return-void
.end method

.method private native blacklist nativeStartUIBC()V
.end method

.method private native blacklist nativeStopUIBC()V
.end method

.method private blacklist registerDesktopModeListener()V
    .registers 1

    .line 299
    return-void
.end method

.method private blacklist setDexMode()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-nez v0, :cond_5

    .line 312
    return-void

    .line 313
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 314
    return-void

    .line 317
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 318
    new-instance v0, Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {v0}, Lcom/samsung/android/wfd/DeXMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerIntentFilter()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    iget v2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wfd/ConnectionMode;->setExternalDisplay(FF)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget-boolean v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/ConnectionMode;->setSinkDevice(Z)V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_2b} :catch_2c

    .line 324
    goto :goto_36

    .line 322
    :catch_2c
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WFDUibcManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_36
    return-void
.end method

.method private blacklist unregisterDesktopModeListener()V
    .registers 1

    .line 308
    return-void
.end method


# virtual methods
.method public blacklist addKeyEvent(III)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I

    .line 243
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    if-nez v0, :cond_6

    .line 244
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_6
    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 248
    const/4 p1, 0x3

    goto :goto_e

    .line 249
    :cond_b
    if-ne p1, v1, :cond_e

    .line 250
    const/4 p1, 0x4

    .line 253
    :cond_e
    :goto_e
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->addKeyEvent(III)V

    .line 254
    return v1
.end method

.method public blacklist addTouchEvent(II[I[I[I)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "id"    # [I
    .param p4, "X"    # [I
    .param p5, "Y"    # [I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    if-nez v0, :cond_6

    .line 218
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_6
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_20

    if-nez p1, :cond_d

    goto :goto_20

    .line 223
    :cond_d
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1e

    if-ne p1, v1, :cond_13

    goto :goto_1e

    .line 225
    :cond_13
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 226
    const/4 p1, 0x2

    goto :goto_21

    .line 227
    :cond_18
    const/4 v0, 0x3

    if-ne p1, v0, :cond_21

    .line 228
    const/16 p1, 0x63

    goto :goto_21

    .line 224
    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    goto :goto_21

    .line 222
    :cond_20
    :goto_20
    const/4 p1, 0x0

    .line 231
    :cond_21
    :goto_21
    new-array v0, p2, [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 232
    .local v0, "touchEvent":[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, p2, :cond_44

    .line 233
    new-instance v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v3}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    aput-object v3, v0, v2

    .line 234
    aget-object v3, v0, v2

    aget v4, p3, v2

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 235
    aget-object v3, v0, v2

    aget v4, p4, v2

    int-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 236
    aget-object v3, v0, v2

    aget v4, p5, v2

    int-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 238
    .end local v2    # "i":I
    :cond_44
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-virtual {v2, p1, p2, v0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->addTouchEvent(II[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;)V

    .line 239
    return v1
.end method

.method public blacklist setPortraitMode(Z)V
    .registers 2
    .param p1, "isPortraitMode"    # Z

    .line 206
    invoke-static {p1}, Lcom/samsung/android/wfd/ConnectionMode;->setPortraitMode(Z)V

    .line 207
    return-void
.end method

.method public blacklist setSinkDevice(Z)V
    .registers 3
    .param p1, "isSamsungMobile"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    .line 211
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_9

    .line 212
    invoke-virtual {v0, p1}, Lcom/samsung/android/wfd/ConnectionMode;->setSinkDevice(Z)V

    .line 214
    :cond_9
    return-void
.end method

.method public blacklist setUIBCNegotiagedResolution(FF)V
    .registers 5
    .param p1, "externalDisplayWidth"    # F
    .param p2, "externalDisplayHeight"    # F

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayConnected, ExternalDisplayWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ExternalDisplayHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDUibcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    .line 198
    iput p2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    .line 200
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_2d

    .line 201
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wfd/ConnectionMode;->setExternalDisplay(FF)V

    .line 203
    :cond_2d
    return-void
.end method

.method public blacklist start(Z)Z
    .registers 4
    .param p1, "isAppCast"    # Z

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z

    .line 119
    new-instance v0, Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {v0, p1}, Lcom/samsung/android/wfd/WFDMode;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 121
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 124
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 126
    if-nez p1, :cond_1f

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->nativeStartUIBC()V

    .line 129
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    if-eqz p1, :cond_33

    .line 132
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_3d

    .line 133
    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerDisplayChangedListener()V

    goto :goto_3d

    .line 137
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_3a

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerIntentFilter()V

    .line 141
    :cond_3a
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->registerDesktopModeListener()V

    .line 145
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uibc Manager started! isAppCast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDUibcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stop(Z)Z
    .registers 7
    .param p1, "isAppCast"    # Z

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 151
    return v1

    .line 154
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    .line 156
    if-nez p1, :cond_15

    .line 157
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_12

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 160
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->nativeStopUIBC()V

    .line 163
    :cond_15
    const-string v0, "WFDUibcManager"

    const-string v3, "Going to stop Uibc manager"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_1c
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22

    .line 168
    goto :goto_28

    .line 166
    :catch_22
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error joining event dispatcher thread"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uibc manager stopped! isAppCast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 172
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 174
    if-eqz p1, :cond_52

    .line 175
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_58

    .line 176
    invoke-virtual {v0, v2}, Lcom/samsung/android/wfd/ConnectionMode;->sendHiddenDisplayIntent(Z)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->unregisterDisplayChangedListener()V

    goto :goto_58

    .line 181
    :cond_52
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->unregisterDesktopModeListener()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    .line 185
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->clearInstance()V

    .line 187
    return v1
.end method
