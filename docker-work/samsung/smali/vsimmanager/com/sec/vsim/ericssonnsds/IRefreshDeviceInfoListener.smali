.class public interface abstract Lcom/sec/vsim/ericssonnsds/IRefreshDeviceInfoListener;
.super Ljava/lang/Object;
.source "IRefreshDeviceInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IRefreshDeviceInfoListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IRefreshDeviceInfoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IRefreshDeviceInfoListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
