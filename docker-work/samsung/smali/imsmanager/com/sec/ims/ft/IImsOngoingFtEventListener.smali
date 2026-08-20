.class public interface abstract Lcom/sec/ims/ft/IImsOngoingFtEventListener;
.super Ljava/lang/Object;
.source "IImsOngoingFtEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;,
        Lcom/sec/ims/ft/IImsOngoingFtEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.ft.IImsOngoingFtEventListener"


# virtual methods
.method public abstract onFtStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
