.class public Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SViewCoverBaseServiceInfo"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 7

    .line 724
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 725
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 730
    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object p0

    return-object p0
.end method

.method public onCoverAppStateChanged(Z)I
    .registers 2

    .line 767
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_f

    .line 768
    check-cast p0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 771
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 1

    .line 739
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_e

    .line 740
    check-cast p0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 743
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_e
    :goto_e
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    .line 753
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_e

    .line 754
    check-cast p0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 757
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_e
    :goto_e
    return-void
.end method
