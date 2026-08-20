.class public interface abstract Lcom/sec/vsim/ericssonnsds/IDevicePushTokenListener;
.super Ljava/lang/Object;
.source "IDevicePushTokenListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IDevicePushTokenListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IDevicePushTokenListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IDevicePushTokenListener"


# virtual methods
.method public abstract onDevicePushTokenAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
