.class public interface abstract Lcom/sec/ims/openapi/IOpenApiService;
.super Ljava/lang/Object;
.source "IOpenApiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/IOpenApiService$Stub;,
        Lcom/sec/ims/openapi/IOpenApiService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.openapi.IOpenApiService"


# virtual methods
.method public abstract registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFeatureTags([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setupMediaPath([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
