.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "POGOKeyboardReceiver"
.end annotation


# instance fields
.field public mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo p1, "input"

    .line 270
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 269
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 272
    new-instance p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_9

    .line 288
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V

    :cond_9
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 295
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p1, 0x0

    const-string/jumbo v0, "status"

    .line 296
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 298
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 299
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_3d

    .line 301
    :cond_27
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 302
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 304
    :goto_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: PogoKeyboard connected="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", keyboardState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerServicePhysicalKey"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method
