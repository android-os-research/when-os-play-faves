.class public interface abstract Lcom/sec/vsim/ericssonnsds/IManageLocationAndTCListener;
.super Ljava/lang/Object;
.source "IManageLocationAndTCListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IManageLocationAndTCListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IManageLocationAndTCListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IManageLocationAndTCListener"


# virtual methods
.method public abstract onResponseAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
