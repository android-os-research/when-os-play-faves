.class public final Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;
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
    name = "WirelessKeyboardShareChangedListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    .registers 4

    .line 2405
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2406
    iput p2, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mPid:I

    .line 2407
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mListener:Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 2415
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$monWirelessKeyboardShareChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public notifyWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .registers 6

    .line 2420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mListener:Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 2422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to notify process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that wireless keyboard share changed, assuming it died."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->binderDied()V

    :goto_27
    return-void
.end method
