.class public Lcom/samsung/android/content/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 51
    return-void
.end method

.method private declared-synchronized blacklist getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .registers 3

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-nez v0, :cond_1c

    .line 64
    const-string/jumbo v0, "spengestureservice"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 66
    if-nez v0, :cond_1c

    .line 67
    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local p0    # "this":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist getBleSpenAddress()Ljava/lang/String;
    .registers 3

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 263
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 264
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getBleSpenAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return-object v1

    .line 269
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 270
    const/4 v0, 0x0

    return-object v0

    .line 266
    :catch_e
    move-exception v0

    .line 268
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 288
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 289
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getBleSpenCmfCode()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return-object v1

    .line 294
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 291
    :catch_e
    move-exception v0

    .line 293
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 6

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "inputContext":Lcom/android/internal/view/IInputContext;
    const/4 v1, 0x0

    .line 462
    .local v1, "missingMethodFlags":I
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v2

    .line 463
    .local v2, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v2, :cond_12

    .line 464
    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v3

    move-object v0, v3

    .line 465
    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentMissingMethodFlags()I

    move-result v3
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_1e

    move v1, v3

    .line 470
    .end local v2    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_12
    nop

    .line 472
    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 473
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 474
    .local v3, "unbindIssued":Ljava/util/concurrent/atomic/AtomicBoolean;
    return-object v2

    .line 479
    .end local v3    # "unbindIssued":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1d
    return-object v2

    .line 467
    :catch_1e
    move-exception v2

    .line 469
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 4

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    .line 486
    .local v1, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v1, :cond_c

    .line 487
    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e

    move-object v0, v2

    .line 492
    .end local v1    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_c
    nop

    .line 493
    return-object v0

    .line 489
    :catch_e
    move-exception v1

    .line 491
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getScreenOffReason()I
    .registers 3

    .line 397
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 398
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 399
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScreenOffReason()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v1

    .line 404
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 405
    const/4 v0, -0x1

    return v0

    .line 401
    :catch_e
    move-exception v0

    .line 403
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 125
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 126
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return-object v1

    .line 131
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 128
    :catch_e
    move-exception v0

    .line 130
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 138
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 139
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return-object v1

    .line 144
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :catch_e
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I
    .param p4, "windowTargetingType"    # I

    .line 109
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    .line 110
    .local v1, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v1, :cond_c

    .line 111
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_b} :catch_d

    return-object v0

    .line 113
    :cond_c
    return-object v0

    .line 117
    .end local v1    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :catch_d
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 114
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_f
    move-exception v1

    .line 116
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V
    .registers 13
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 150
    .local p3, "inputEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/InputEvent;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 151
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1b

    .line 152
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/InputEvent;

    .line 153
    .local v1, "array":[Landroid/view/InputEvent;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Landroid/view/InputEvent;

    .line 154
    .end local v1    # "array":[Landroid/view/InputEvent;
    .local v4, "array":[Landroid/view/InputEvent;
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 159
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .end local v4    # "array":[Landroid/view/InputEvent;
    :cond_1b
    nop

    .line 160
    return-void

    .line 156
    :catch_1d
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized blacklist isServiceAvailable()Z
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 55
    .local v0, "service":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-nez v0, :cond_18

    .line 56
    sget-object v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    .line 57
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 59
    .end local p0    # "this":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :cond_18
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 53
    .end local v0    # "service":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isSpenInserted()Z
    .registers 3

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 250
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 251
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->isSpenInserted()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v1

    .line 256
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 257
    const/4 v0, 0x0

    return v0

    .line 253
    :catch_e
    move-exception v0

    .line 255
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isSupportBleSpen()Z
    .registers 3

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 313
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_b

    .line 314
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->isSupportBleSpen()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v1

    .line 319
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_b
    nop

    .line 320
    const/4 v0, 0x0

    return v0

    .line 316
    :catch_e
    move-exception v0

    .line 318
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyAirGesture(Ljava/lang/String;)V
    .registers 4
    .param p1, "gesture"    # Ljava/lang/String;

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 536
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 537
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyAirGesture(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 542
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 544
    return-void

    .line 539
    :catch_b
    move-exception v0

    .line 541
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyBleSpenChargeLockState(Z)V
    .registers 4
    .param p1, "isLocked"    # Z

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 362
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 363
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyBleSpenChargeLockState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 368
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 369
    return-void

    .line 365
    :catch_b
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyKeyboardClosed()V
    .registers 3

    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 499
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 500
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyKeyboardClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 505
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 507
    return-void

    .line 502
    :catch_b
    move-exception v0

    .line 504
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IAirGestureListener;

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 512
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 513
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 518
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 519
    return-void

    .line 515
    :catch_b
    move-exception v0

    .line 517
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    .line 373
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 374
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 375
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 380
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 381
    return-void

    .line 377
    :catch_b
    move-exception v0

    .line 379
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 190
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 191
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 196
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 197
    return-void

    .line 193
    :catch_b
    move-exception v0

    .line 195
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    .line 436
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 437
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 438
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 443
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 444
    return-void

    .line 440
    :catch_b
    move-exception v0

    .line 442
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenAttachSound(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 606
    if-nez p1, :cond_3

    .line 607
    return-void

    .line 611
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 612
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_10

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenAttachSound(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 617
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_10
    nop

    .line 618
    return-void

    .line 615
    :catch_12
    move-exception v0

    .line 616
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenDetachSound(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 636
    if-nez p1, :cond_3

    .line 637
    return-void

    .line 641
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 642
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_10

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenDetachSound(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 647
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_10
    nop

    .line 648
    return-void

    .line 645
    :catch_12
    move-exception v0

    .line 646
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenHoverIcon(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 576
    if-nez p1, :cond_3

    .line 577
    return-void

    .line 581
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 582
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_10

    .line 583
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenHoverIcon(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 587
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_10
    nop

    .line 588
    return-void

    .line 585
    :catch_12
    move-exception v0

    .line 586
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist saveBleSpenLogFile([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 350
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 351
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->saveBleSpenLogFile([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 356
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 357
    return-void

    .line 353
    :catch_b
    move-exception v0

    .line 355
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .registers 17
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z

    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 550
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_14

    .line 551
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17

    return-object v1

    .line 556
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_14
    nop

    .line 557
    const/4 v0, 0x0

    return-object v0

    .line 553
    :catch_17
    move-exception v0

    .line 555
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .registers 4
    .param p1, "result"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 76
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 77
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 82
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 83
    return-void

    .line 79
    :catch_b
    move-exception v0

    .line 81
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setBleSpenAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 276
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 277
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setBleSpenAddress(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 282
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 283
    return-void

    .line 279
    :catch_b
    move-exception v0

    .line 281
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "cmfCode"    # Ljava/lang/String;

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 301
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 302
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setBleSpenCmfCode(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 307
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 308
    return-void

    .line 304
    :catch_b
    move-exception v0

    .line 306
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 6
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "missingMethodFlags"    # I

    .line 423
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 424
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 425
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 430
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 432
    return-void

    .line 427
    :catch_b
    move-exception v0

    .line 429
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setHoverStayDetectEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 166
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 167
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayDetectEnabled(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 172
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 173
    return-void

    .line 169
    :catch_b
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setHoverStayValues(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "hoverTime"    # I

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 178
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 179
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayValues(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 184
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 185
    return-void

    .line 181
    :catch_b
    move-exception v0

    .line 183
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setPenAttachSound(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 591
    if-eqz p1, :cond_1b

    if-nez p2, :cond_5

    goto :goto_1b

    .line 596
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 597
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_12

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 602
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_12
    nop

    .line 603
    return-void

    .line 600
    :catch_14
    move-exception v0

    .line 601
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 592
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist setPenDetachSound(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 621
    if-eqz p1, :cond_1b

    if-nez p2, :cond_5

    goto :goto_1b

    .line 626
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 627
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_12

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 632
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_12
    nop

    .line 633
    return-void

    .line 630
    :catch_14
    move-exception v0

    .line 631
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 622
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist setPenHoverIcon(Landroid/content/Context;Ljava/io/FileDescriptor;FF)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "hotspotX"    # F
    .param p4, "hotspotY"    # F

    .line 561
    if-eqz p1, :cond_1b

    if-nez p2, :cond_5

    goto :goto_1b

    .line 566
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 567
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_12

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 572
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_12
    nop

    .line 573
    return-void

    .line 570
    :catch_14
    move-exception v0

    .line 571
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 562
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist setScreenOffReason(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 411
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 412
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setScreenOffReason(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 417
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 418
    return-void

    .line 414
    :catch_b
    move-exception v0

    .line 416
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenInsertionState(Z)V
    .registers 4
    .param p1, "isInserted"    # Z

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 238
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 239
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenInsertionState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 244
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 245
    return-void

    .line 241
    :catch_b
    move-exception v0

    .line 243
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenPdctLowSensitivityEnable()V
    .registers 3

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 338
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 339
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenPdctLowSensitivityEnable()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 344
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 345
    return-void

    .line 341
    :catch_b
    move-exception v0

    .line 343
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenPowerSavingModeEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 214
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 215
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenPowerSavingModeEnabled(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 220
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 221
    return-void

    .line 217
    :catch_b
    move-exception v0

    .line 219
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist showTouchPointer(Z)V
    .registers 4
    .param p1, "isShow"    # Z

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 226
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 227
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->showTouchPointer(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 232
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 233
    return-void

    .line 229
    :catch_b
    move-exception v0

    .line 231
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IAirGestureListener;

    .line 523
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 524
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 525
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 530
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 531
    return-void

    .line 527
    :catch_b
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    .line 385
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 386
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 387
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 392
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 393
    return-void

    .line 389
    :catch_b
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 202
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 203
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 208
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 209
    return-void

    .line 205
    :catch_b
    move-exception v0

    .line 207
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    .line 448
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 449
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 450
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 455
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 456
    return-void

    .line 452
    :catch_b
    move-exception v0

    .line 454
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeBleSpenCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 326
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_9

    .line 327
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 332
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_9
    nop

    .line 333
    return-void

    .line 329
    :catch_b
    move-exception v0

    .line 331
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
