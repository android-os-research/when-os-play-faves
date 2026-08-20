.class public final Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MultiFingerGestureListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/IMultiFingerGestureListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    .registers 4

    .line 5532
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5533
    iput p2, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    .line 5534
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 5542
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$monMultiFingerGestureListenerDied(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public notifyMultiFingerGesture(II)V
    .registers 4

    .line 5547
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IMultiFingerGestureListener;->onMultiFingerGesture(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 5549
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that multi finge gesture was made, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5551
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->binderDied()V

    :goto_27
    return-void
.end method
