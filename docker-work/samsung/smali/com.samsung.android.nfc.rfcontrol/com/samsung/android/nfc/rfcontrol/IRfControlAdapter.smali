.class public interface abstract Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;
.super Ljava/lang/Object;
.source "IRfControlAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;,
        Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.nfc.rfcontrol.IRfControlAdapter"


# virtual methods
.method public abstract getRfState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRfEnable(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
