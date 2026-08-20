.class public Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener$Default;
.super Ljava/lang/Object;
.source "IVoWiFiProvisioningListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;)V
    .registers 3
    .param p1, "responseManageService"    # Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;
    .param p2, "responsePushToken"    # Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
