.class public Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DexOnPCStateChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 8100
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8101
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 8107
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 8108
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const-string v2, "dexonpc_connection_state"

    const/4 v3, 0x0

    .line 8107
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 8109
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmSamsungIMMSHWKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateKeyboardStateForDEXOnPC(I)V

    .line 8110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexOnPCStateChangeObserver :  onChange(), keyboardState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmSamsungIMMSHWKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isAccessoryKeyboard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8111
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
