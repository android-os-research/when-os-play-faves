.class public interface abstract Lcom/sec/vsim/ericssonnsds/IAvailableMSISDNListener;
.super Ljava/lang/Object;
.source "IAvailableMSISDNListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IAvailableMSISDNListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IAvailableMSISDNListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IAvailableMSISDNListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredMSISDN;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
