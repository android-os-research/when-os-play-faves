.class public interface abstract Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener;
.super Ljava/lang/Object;
.source "IVoWiFiProvisioningListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IVoWiFiProvisioningListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IVoWiFiProvisioningListener"


# virtual methods
.method public abstract onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
