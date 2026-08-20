.class public Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;
.super Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;
.source "RefreshRateTokenShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RefreshRateTokenShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LowRefreshRateTokenRequest"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RefreshRateTokenShellCommand;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;->this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    invoke-direct {p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireInner(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "on"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 93
    iget-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    if-nez p1, :cond_19

    .line 94
    iget-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;->this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    iget-object p1, p1, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v0, 0x0

    const-string v1, "WindowManagerCommand-LowRefreshRate"

    invoke-interface {p1, v0, v1}, Landroid/hardware/display/IDisplayManager;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public getError()Ljava/lang/String;
    .registers 1

    const-string p0, "Error: lowRefreshRateToken option requires [on/off]"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "-lowRefreshRate"

    return-object p0
.end method

.method public releaseInner()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-interface {p0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    return-void
.end method
