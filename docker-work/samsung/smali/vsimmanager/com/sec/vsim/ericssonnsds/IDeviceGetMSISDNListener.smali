.class public interface abstract Lcom/sec/vsim/ericssonnsds/IDeviceGetMSISDNListener;
.super Ljava/lang/Object;
.source "IDeviceGetMSISDNListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IDeviceGetMSISDNListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IDeviceGetMSISDNListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IDeviceGetMSISDNListener"


# virtual methods
.method public abstract onDeviceMSISDNAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
