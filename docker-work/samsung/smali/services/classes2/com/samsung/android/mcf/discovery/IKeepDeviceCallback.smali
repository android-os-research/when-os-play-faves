.class public interface abstract Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$_Parcel;,
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;,
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.discovery.IKeepDeviceCallback"


# virtual methods
.method public abstract onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
