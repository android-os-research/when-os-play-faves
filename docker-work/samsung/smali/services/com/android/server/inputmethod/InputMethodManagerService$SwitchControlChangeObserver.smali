.class public Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchControlChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 8120
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8121
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 8125
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "universal_switch_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 8127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "universalSwitchState changed to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    move v1, v0

    :cond_2b
    if-eqz v1, :cond_45

    .line 8130
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 8132
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->setDefaultUniversalSwitchInputMethod()V

    .line 8133
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    goto :goto_48

    .line 8136
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->restorePreviousUsedInputMethod()V

    :goto_48
    return-void
.end method

.method public final restorePreviousUsedInputMethod()V
    .registers 6

    .line 8149
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_10

    const-string p0, "Failed to return the previous IME becuase the stored info is null"

    .line 8150
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8153
    :cond_10
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 8154
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 8155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePreviousUsedInputMethod :  UniversalSwitch, previous inputmethod : : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currentIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " InputMethodinfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_78

    if-eqz v2, :cond_78

    .line 8156
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 8158
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object p0

    .line 8159
    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result p0

    .line 8158
    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_78
    return-void
.end method

.method public final setDefaultUniversalSwitchInputMethod()V
    .registers 3

    .line 8142
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misHoneyboardInstalled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 8143
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_21
    return-void
.end method
