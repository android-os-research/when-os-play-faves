.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessibilityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2436
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .registers 7

    const-wide/16 v0, 0x20

    const-string p0, "AACS.sessionCreated"

    .line 2440
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2443
    :try_start_b
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_19

    .line 2445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2447
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    .line 2445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2446
    throw p0
.end method
