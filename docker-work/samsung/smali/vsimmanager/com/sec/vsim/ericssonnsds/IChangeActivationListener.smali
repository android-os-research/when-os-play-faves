.class public interface abstract Lcom/sec/vsim/ericssonnsds/IChangeActivationListener;
.super Ljava/lang/Object;
.source "IChangeActivationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IChangeActivationListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IChangeActivationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IChangeActivationListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
