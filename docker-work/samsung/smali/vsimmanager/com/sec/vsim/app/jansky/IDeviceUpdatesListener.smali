.class public interface abstract Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
.super Ljava/lang/Object;
.source "IDeviceUpdatesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener$Stub;,
        Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.IDeviceUpdatesListener"


# virtual methods
.method public abstract onDeviceUpdated(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
