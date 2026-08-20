.class public Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->addSettingButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 752
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 754
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.honeyboard"

    const-string v1, "com.samsung.android.honeyboard.settings.common.HoneyBoardSettingsActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 757
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const p1, 0x34008000

    .line 759
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo p1, "switcher_setting"

    const/4 v1, 0x1

    .line 763
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 764
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 766
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
