.class public final Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;
.super Ljava/lang/Object;
.source "HandwritingEventReceiverSurface.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final HANDWRITING_SURFACE_LAYER:I = 0x7ffffffe

.field public static final TAG:Ljava/lang/String; = "HandwritingEventReceiverSurface"


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public mIsIntercepting:Z

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .registers 10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 49
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 51
    new-instance v0, Landroid/view/InputWindowHandle;

    new-instance v1, Landroid/view/InputApplicationHandle;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 53
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p1, 0x7df

    .line 55
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 56
    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long p1, p1

    iput-wide p1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 58
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const p1, 0xc10c

    .line 60
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 70
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 71
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const p2, 0x7ffffffe

    .line 72
    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    invoke-virtual {p1, p3, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 75
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 76
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return-void
.end method


# virtual methods
.method public getInputChannel()Landroid/view/InputChannel;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    return-object p0
.end method

.method public getSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public isIntercepting()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return p0
.end method

.method public remove()V
    .registers 2

    .line 97
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 98
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public startIntercepting(II)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 83
    iput p2, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 84
    iget p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 86
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return-void
.end method
