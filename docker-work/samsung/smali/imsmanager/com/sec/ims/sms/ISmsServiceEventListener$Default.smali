.class public Lcom/sec/ims/sms/ISmsServiceEventListener$Default;
.super Ljava/lang/Object;
.source "ISmsServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/sms/ISmsServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/sms/ISmsServiceEventListener;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceiveIncomingSMS(ILjava/lang/String;[B)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onReceiveSMSAck(IILjava/lang/String;[BI)V
    .registers 6
    .param p1, "messageId"    # I
    .param p2, "reasonCode"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onReceiveSMSDeliveryReportAck(III)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "reasonCode"    # I
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
