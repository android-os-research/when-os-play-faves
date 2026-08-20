.class public interface abstract Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
.super Ljava/lang/Object;
.source "IDeviceNameUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener$Stub;,
        Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.IDeviceNameUpdateListener"


# virtual methods
.method public abstract onDeviceNameUpdated(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
