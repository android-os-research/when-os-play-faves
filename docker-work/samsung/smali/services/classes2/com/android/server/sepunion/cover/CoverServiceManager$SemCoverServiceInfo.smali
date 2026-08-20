.class public Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemCoverServiceInfo"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 7

    .line 779
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 780
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 785
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    move-result-object p0

    return-object p0
.end method

.method public onCoverAppStateChanged(Z)I
    .registers 2

    .line 822
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_f

    .line 823
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 826
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 1

    .line 794
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_e

    .line 795
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 798
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_e
    :goto_e
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    .line 808
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_e

    .line 809
    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 812
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_e
    :goto_e
    return-void
.end method
