.class public Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_40

    .line 505
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmbWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v0

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_28

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_28

    const-string p1, "PointerEventListener set true"

    .line 506
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    goto :goto_40

    .line 508
    :cond_28
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmbWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    if-eq p1, v2, :cond_40

    const-string p1, "PointerEventListener set false"

    .line 509
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    :cond_40
    :goto_40
    return-void
.end method
