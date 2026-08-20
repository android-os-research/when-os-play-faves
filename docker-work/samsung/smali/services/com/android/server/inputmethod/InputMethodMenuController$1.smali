.class public Lcom/android/server/inputmethod/InputMethodMenuController$1;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 319
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 322
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "showInputMethodMenu : Switching dialog cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$1;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    return-void
.end method
