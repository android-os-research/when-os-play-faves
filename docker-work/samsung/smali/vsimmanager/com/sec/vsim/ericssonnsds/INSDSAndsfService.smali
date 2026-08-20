.class public interface abstract Lcom/sec/vsim/ericssonnsds/INSDSAndsfService;
.super Ljava/lang/Object;
.source "INSDSAndsfService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/INSDSAndsfService$Stub;,
        Lcom/sec/vsim/ericssonnsds/INSDSAndsfService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.INSDSAndsfService"


# virtual methods
.method public abstract getGcmToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateAccessSteering()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
