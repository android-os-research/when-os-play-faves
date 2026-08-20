.class public interface abstract Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
.super Ljava/lang/Object;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"


# virtual methods
.method public abstract onNsdsServiceResponse(IZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
