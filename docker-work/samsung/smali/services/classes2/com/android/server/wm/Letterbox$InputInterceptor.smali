.class public final Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputInterceptor"
.end annotation


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 293
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iget-object v0, p3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    move-object p2, p3

    :goto_17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 297
    new-instance v2, Lcom/android/server/wm/Letterbox$TapEventReceiver;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/wm/Letterbox$TapEventReceiver;-><init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 299
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 301
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p3

    invoke-direct {v0, v1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 303
    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 304
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p0, 0x7e6

    .line 305
    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 306
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long p0, p0

    iput-wide p0, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 307
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 308
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 309
    iput p0, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/16 p0, 0x404

    .line 310
    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method

.method public updateTouchableRegion(Landroid/graphics/Rect;)V
    .registers 4

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 318
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    return-void

    .line 321
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 322
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 323
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object p0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->translate(II)V

    return-void
.end method
