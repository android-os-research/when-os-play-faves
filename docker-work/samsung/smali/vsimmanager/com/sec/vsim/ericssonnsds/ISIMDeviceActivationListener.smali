.class public interface abstract Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;
.super Ljava/lang/Object;
.source "ISIMDeviceActivationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.ISIMDeviceActivationListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
