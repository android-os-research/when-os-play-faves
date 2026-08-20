.class public interface abstract Lcom/sec/vsim/ericssonnsds/IManageConnectivityListener;
.super Ljava/lang/Object;
.source "IManageConnectivityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IManageConnectivityListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IManageConnectivityListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IManageConnectivityListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
