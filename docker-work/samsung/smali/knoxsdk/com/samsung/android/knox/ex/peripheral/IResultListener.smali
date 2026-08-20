.class public interface abstract Lcom/samsung/android/knox/ex/peripheral/IResultListener;
.super Ljava/lang/Object;
.source "IResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;,
        Lcom/samsung/android/knox/ex/peripheral/IResultListener$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.IResultListener"


# virtual methods
.method public abstract greylist onFail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onSuccess(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
