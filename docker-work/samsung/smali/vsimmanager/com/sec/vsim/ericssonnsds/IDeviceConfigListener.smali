.class public interface abstract Lcom/sec/vsim/ericssonnsds/IDeviceConfigListener;
.super Ljava/lang/Object;
.source "IDeviceConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IDeviceConfigListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IDeviceConfigListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IDeviceConfigListener"


# virtual methods
.method public abstract onResponseAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
