.class public Lcom/android/server/inputmethod/InputMethodMenuController$2;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenu(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$2;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 418
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HARDWARE_KEYBOARD] onCheckedChanged isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$2;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setShowImeWithHardKeyboardValue(Z)V

    .line 424
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$2;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 427
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.ONSCREENKEYBOARD_SWITCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x20000000

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "switch_checked"

    .line 429
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$2;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmContext(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
