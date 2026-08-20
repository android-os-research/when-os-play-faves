.class public Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener$Default;
.super Ljava/lang/Object;
.source "IRetrieveServiceInstanceTokenForVirtualSIMListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;)V
    .registers 3
    .param p1, "responseManageService"    # Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;
    .param p2, "responseRegisteredDevices"    # Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
