.class public interface abstract Lcom/sec/vsim/attsoftphone/IProgressListener;
.super Ljava/lang/Object;
.source "IProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/IProgressListener$Stub;,
        Lcom/sec/vsim/attsoftphone/IProgressListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.attsoftphone.IProgressListener"


# virtual methods
.method public abstract onNotify(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
