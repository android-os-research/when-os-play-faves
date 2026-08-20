.class public interface abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.super Ljava/lang/Object;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;,
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSessionListener"


# virtual methods
.method public abstract blacklist callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
