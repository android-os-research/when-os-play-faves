.class public Lcom/android/server/input/GestureMonitorSpyWindow;
.super Ljava/lang/Object;
.source "GestureMonitorSpyWindow.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GestureMonitorSpyWindow"


# instance fields
.field public final mApplicationHandle:Landroid/view/InputApplicationHandle;

.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public final mMonitorToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .registers 11

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mMonitorToken:Landroid/os/IBinder;

    .line 60
    iput-object p7, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 61
    iput-object p6, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    .line 63
    new-instance p1, Landroid/view/InputApplicationHandle;

    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-direct {p1, v2, p2, v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 65
    new-instance v0, Landroid/view/InputWindowHandle;

    invoke-direct {v0, p1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 67
    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {p7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p0, 0x7df

    .line 69
    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 70
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long p0, p0

    iput-wide p0, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 71
    iput p4, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 72
    iput p5, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 73
    iput p0, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    const/16 p0, 0x4104

    .line 75
    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 78
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 79
    invoke-virtual {p0, p6, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    .line 80
    invoke-virtual {p0, p6, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p6, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 82
    invoke-virtual {p0, p6, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 83
    invoke-virtual {p0, p6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public configureSurface(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v0, p2, :cond_37

    iget-object p2, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 104
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_32

    .line 105
    sget-object p2, Lcom/android/server/input/GestureMonitorSpyWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureSurface, mInputSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_32
    iget-object p0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_37
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', inputChannelToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 116
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v1, v1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInputSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 3

    .line 89
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 91
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 92
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 94
    iget-object p0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method
