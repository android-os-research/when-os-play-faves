.class public interface abstract Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener;
.super Ljava/lang/Object;
.source "IOAuthActivationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IOAuthActivationListener"


# virtual methods
.method public abstract onOAuthActivatedMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
