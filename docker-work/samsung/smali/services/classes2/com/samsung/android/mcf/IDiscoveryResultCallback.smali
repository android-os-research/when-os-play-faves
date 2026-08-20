.class public interface abstract Lcom/samsung/android/mcf/IDiscoveryResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/IDiscoveryResultCallback$_Parcel;,
        Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub;,
        Lcom/samsung/android/mcf/IDiscoveryResultCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.IDiscoveryResultCallback"


# virtual methods
.method public abstract onDeviceDiscoverd(Landroid/os/PersistableBundle;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
