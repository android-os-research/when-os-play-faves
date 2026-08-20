.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTKeyboardReceiver"
.end annotation


# static fields
.field public static final BLUETOOTH_PROFILE_EXTRA_IS_KEYBOARD:Ljava/lang/String; = "android.bluetooth.profile.extra.isKeyboard"

.field public static final BLUETOOTH_PROFILE_EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"


# instance fields
.field public mIsBTConnect:Z

.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodService onReceive() intentAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerServicePhysicalKey"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, ")"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_e9

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 216
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 217
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT Setting State] state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " prevState = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    const-string v0, ", KEYBOARD_BT("

    if-eq p1, p2, :cond_b8

    const/16 p2, 0xc

    if-eq p1, p2, :cond_8a

    const/16 p2, 0xd

    if-eq p1, p2, :cond_b8

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[BT] mBTKeyboardCount ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    and-int/2addr p0, v6

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_211

    .line 227
    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[BT Setting off -> on] mBTKeyboardCount ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    and-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    goto/16 :goto_211

    .line 222
    :cond_b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[BT Setting on -> off] mBTKeyboardCount ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    and-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 224
    iput-boolean v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    goto/16 :goto_211

    :cond_e9
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_211

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 234
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.profile.extra.isKeyboard"

    .line 235
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 236
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() isKeyboard = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_211

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prevState = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_19b

    .line 243
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 244
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p1

    if-gez p1, :cond_167

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--> 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1, v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 248
    :cond_167
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    add-int/2addr p2, v5

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    or-int/2addr p2, v6

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 251
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_211

    :cond_19b
    if-ne p2, v6, :cond_211

    .line 254
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p1

    if-ge p1, v5, :cond_1c9

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--> 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1, v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 258
    :cond_1c9
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    sub-int/2addr p2, v5

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    if-eqz p2, :cond_1e2

    iget-boolean p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    if-nez p1, :cond_1e5

    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p1

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_1e5

    .line 259
    :cond_1e2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 261
    :cond_1e5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "keyboardState("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_211
    :goto_211
    return-void
.end method

.method public final resetBTKeyboardState()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    .line 204
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mupdateBrightnessMode(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 207
    :cond_1a
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetBTKeyboardState : keyboardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerServicePhysicalKey"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
