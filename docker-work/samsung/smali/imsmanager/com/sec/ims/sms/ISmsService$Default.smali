.class public Lcom/sec/ims/sms/ISmsService$Default;
.super Ljava/lang/Object;
.source "ISmsService.java"

# interfaces
.implements Lcom/sec/ims/sms/ISmsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/sms/ISmsService;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public getSmsFallback(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public sendDeliverReport(I[B)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public sendRPSMMA(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "smscAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public sendSMSResponse(ZI)V
    .registers 3
    .param p1, "isSuccess"    # Z
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
