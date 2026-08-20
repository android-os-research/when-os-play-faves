.class public interface abstract Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener;
.super Ljava/lang/Object;
.source "IRetrieveServiceInstanceTokenForVirtualSIMListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IRetrieveServiceInstanceTokenForVirtualSIMListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IRetrieveServiceInstanceTokenForVirtualSIMListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
