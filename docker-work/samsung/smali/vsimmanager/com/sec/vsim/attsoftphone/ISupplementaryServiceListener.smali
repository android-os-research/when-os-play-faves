.class public interface abstract Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
.super Ljava/lang/Object;
.source "ISupplementaryServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;,
        Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.attsoftphone.ISupplementaryServiceListener"


# virtual methods
.method public abstract onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
