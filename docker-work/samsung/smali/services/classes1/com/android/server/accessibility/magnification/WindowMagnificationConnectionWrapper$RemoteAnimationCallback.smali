.class public Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;
.super Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;
.source "WindowMagnificationConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteAnimationCallback"
.end annotation


# instance fields
.field public final mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 6

    .line 223
    invoke-direct {p0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 225
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x40

    .line 226
    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteAnimationCallback.constructor"

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-interface {v0, p1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 238
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteAnimationCallback.onResult"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_28
    return-void
.end method
