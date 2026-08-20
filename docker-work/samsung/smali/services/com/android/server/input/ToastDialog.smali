.class public Lcom/android/server/input/ToastDialog;
.super Ljava/lang/Object;
.source "ToastDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/ToastDialog$ToastDialogHandler;
    }
.end annotation


# static fields
.field public static final MSG_FN_LOCK_UNLOCK:I = 0x6

.field public static final MSG_SHOW_ALERT_DIALOG:I = 0xb

.field public static final MSG_SHOW_ALERT_DIALOG_WKS:I = 0xa

.field public static final MSG_SHOW_TOAST:I = 0x7

.field public static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x4

.field public static final MSG_TOUCHPAD_ON_OFF:I = 0x5

.field public static final MSG_WKS_DEVICE_SWITCHING:I = 0x2

.field public static final MSG_WKS_PAIRING_FAIL:I = 0x1

.field public static final MSG_WKS_UNREGISTER:I = 0x3

.field public static TAG:Ljava/lang/String; = "InputManager.ToastDialog"

.field public static final TYPE_ALERT_DIALOG_WKS:I = 0x1


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public static bridge synthetic -$$Nest$mshowAlertDialogInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/ToastDialog;->showAlertDialogInner(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowAlertDialogWKSInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/ToastDialog;->showAlertDialogWKSInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToastInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/ToastDialog;->showToastInner(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/input/ToastDialog$ToastDialogHandler;-><init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    return-void
.end method


# virtual methods
.method public dismissAlertDialogWKS()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_a
    return-void
.end method

.method public final showAlertDialogInner(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_a
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3c

    .line 210
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lcom/android/server/input/ToastDialog$2;

    invoke-direct {p3, p0}, Lcom/android/server/input/ToastDialog$2;-><init>(Lcom/android/server/input/ToastDialog;)V

    .line 213
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 219
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 220
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3c
    return-void
.end method

.method public showAlertDialogWKS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 130
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 131
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 132
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showAlertDialogWKSInner(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/android/server/input/ToastDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/ToastDialog$1;-><init>(Lcom/android/server/input/ToastDialog;)V

    .line 194
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 201
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showFnLockUnlock(Ljava/lang/String;)V
    .registers 4

    .line 109
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 110
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showToastInner(Ljava/lang/String;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_a

    .line 179
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 183
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToastSwitchKeyboardLayout(Ljava/lang/String;)V
    .registers 4

    .line 95
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 96
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showToastWKSDeviceSwitching(Ljava/lang/String;)V
    .registers 4

    .line 69
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 70
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showToastWKSParingFail(Ljava/lang/String;)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 84
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showToastWKSRegister()V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public showToastWKSUnregister(Ljava/lang/String;)V
    .registers 4

    .line 76
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 77
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showTouchpadOnOff(Ljava/lang/String;)V
    .registers 4

    .line 102
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 103
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUntrustedTouch(Ljava/lang/String;)V
    .registers 4

    .line 116
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 117
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
