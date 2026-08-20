.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OverlayDisplayHandle"
.end annotation


# static fields
.field public static final DEFAULT_MODE_INDEX:I


# instance fields
.field public mActiveMode:I

.field public mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field public final mDismissRunnable:Ljava/lang/Runnable;

.field public mDisplayId:I

.field public final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field public final mGravity:I

.field public final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field public final mName:Ljava/lang/String;

.field public final mNumber:I

.field public final mResizeRunnable:Ljava/lang/Runnable;

.field public final mShowRunnable:Ljava/lang/Runnable;

.field public mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveMode(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGravity(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModes(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindow(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmWindow(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-void
.end method

.method public static bridge synthetic -$$Nest$monActiveModeChangedLocked(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->onActiveModeChangedLocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;I",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;",
            "I)V"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 461
    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;I",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;",
            "II)V"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 451
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDisplayId:I

    .line 557
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 574
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 590
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    .line 467
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 469
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 470
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 471
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    const/4 p1, 0x0

    .line 473
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 475
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz p1, :cond_30

    .line 476
    iput p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDisplayId:I

    .line 479
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->showLocked()V

    return-void
.end method


# virtual methods
.method public dismissLocked()V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mActiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v0, :cond_ae

    .line 550
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "    "

    invoke-direct {v3, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 552
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const-wide/16 v5, 0xc8

    const-string v4, ""

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    :cond_ae
    return-void
.end method

.method public final getDisplayContext()Landroid/content/Context;
    .registers 4

    .line 608
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 609
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    if-nez v1, :cond_e

    goto :goto_23

    :cond_e
    const-string v1, "display"

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 613
    iget p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDisplayId:I

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_23

    .line 614
    :cond_1f
    invoke-virtual {v0, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public final onActiveModeChangedLocked(I)V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 494
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz p1, :cond_1c

    .line 495
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method public onStateChanged(I)V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 533
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v1, :cond_16

    .line 534
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setStateLocked(I)V

    .line 535
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 537
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
    .registers 24

    move-object/from16 v0, p0

    .line 503
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v15

    monitor-enter v15

    .line 504
    :try_start_9
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v3

    .line 505
    new-instance v14, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    iget-object v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    iget v6, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    const/4 v7, 0x0

    iget-object v11, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget v13, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v12, p5

    move/from16 v16, v13

    move-object/from16 v13, p1

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    .line 514
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 515
    monitor-exit v15

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v15
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public onWindowDestroyed()V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 522
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v1, :cond_16

    .line 523
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 524
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 526
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final showLocked()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
