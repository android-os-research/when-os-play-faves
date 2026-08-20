.class public interface abstract Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$_Parcel;,
        Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;,
        Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.messaging.IMcfMessageCallback"


# virtual methods
.method public abstract onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMessageReceived(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMessageResult(Landroid/os/PersistableBundle;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
