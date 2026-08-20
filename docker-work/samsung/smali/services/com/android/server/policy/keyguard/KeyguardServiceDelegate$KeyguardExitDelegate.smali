.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;
.super Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyguardExitDelegate"
.end annotation


# instance fields
.field public mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

.field public final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3

    .line 143
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** onKeyguardExitResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") CALLED ****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardServiceDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz p0, :cond_22

    .line 151
    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :cond_22
    return-void
.end method
