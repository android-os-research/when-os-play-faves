.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyKeyboardCoverBackfolded(JZ)V
    .registers 4

    if-eqz p3, :cond_10

    .line 277
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    goto :goto_1d

    .line 279
    :cond_10
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    and-int/lit8 p2, p2, -0x9

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 281
    :goto_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyKeyboardCoverBackfolded: backfolded="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", keyboardState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerServicePhysicalKey"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
