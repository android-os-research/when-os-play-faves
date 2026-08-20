.class public final Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;
.super Lcom/android/server/AccessibilityManagerInternal;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 526
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerInternal;-><init>()V

    .line 527
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public bindInput()V
    .registers 1

    .line 543
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleBindInput()V

    return-void
.end method

.method public createImeSession(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 548
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleCreateImeSession(Landroid/util/ArraySet;)V

    return-void
.end method

.method public setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;Z)V"
        }
    .end annotation

    .line 533
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSetImeSessionEnabled(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 555
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleStartInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public unbindInput()V
    .registers 1

    .line 538
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUnbindInput()V

    return-void
.end method
