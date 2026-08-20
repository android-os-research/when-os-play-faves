.class public interface abstract Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
.super Ljava/lang/Object;
.source "IMtkImsRegistrationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;,
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsRegistrationListener"


# virtual methods
.method public abstract blacklist onRedirectIncomingCallIndication(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRegistrationErrorCodeIndication(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
