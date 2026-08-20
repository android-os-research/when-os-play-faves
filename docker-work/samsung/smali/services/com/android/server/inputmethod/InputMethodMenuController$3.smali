.class public Lcom/android/server/inputmethod/InputMethodMenuController$3;
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

    .line 468
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$3;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 474
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$3;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmSettings(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setShowKeyboardButton(Z)V

    .line 475
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$3;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 478
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.KEYBOARDBUTTON_SWITCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x20000000

    .line 479
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "switch_checked"

    .line 480
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$3;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmContext(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
