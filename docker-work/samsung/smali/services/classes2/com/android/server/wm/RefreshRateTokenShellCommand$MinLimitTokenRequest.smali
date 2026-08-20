.class public Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;
.super Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;
.source "RefreshRateTokenShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RefreshRateTokenShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MinLimitTokenRequest"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RefreshRateTokenShellCommand;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;->this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    invoke-direct {p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireInner(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "0"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    if-nez v0, :cond_1d

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;->this$0:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    iget-object v0, v0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v1, 0x0

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "WindowManagerCommand-MinLimit"

    .line 146
    invoke-interface {v0, v1, p1, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getError()Ljava/lang/String;
    .registers 1

    const-string p0, "Error: refreshRateMinLimit option requires [RefreshRate] value"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "-refreshRateMinLimit"

    return-object p0
.end method

.method public releaseInner()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-interface {p0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    return-void
.end method
