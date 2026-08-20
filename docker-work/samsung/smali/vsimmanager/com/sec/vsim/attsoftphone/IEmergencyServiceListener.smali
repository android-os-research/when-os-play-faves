.class public interface abstract Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
.super Ljava/lang/Object;
.source "IEmergencyServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener$Stub;,
        Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.attsoftphone.IEmergencyServiceListener"


# virtual methods
.method public abstract onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
