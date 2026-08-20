.class public Lcom/android/server/inputmethod/InputMethodMenuController$4;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 493
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$4;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 496
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$4;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmSwitchingDialog(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 497
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$4;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmSwitchingDialog(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x3f99999a    # 1.2f

    .line 499
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$4;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 500
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v2

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$4;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, p0

    cmpl-float p0, v1, v0

    if-lez p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    const/4 p0, 0x1

    mul-float/2addr v2, v0

    .line 505
    invoke-virtual {p1, p0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_42
    return-void
.end method
