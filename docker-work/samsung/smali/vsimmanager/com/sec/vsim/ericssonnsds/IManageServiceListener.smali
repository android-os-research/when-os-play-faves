.class public interface abstract Lcom/sec/vsim/ericssonnsds/IManageServiceListener;
.super Ljava/lang/Object;
.source "IManageServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IManageServiceListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IManageServiceListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IManageServiceListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
