.class public interface abstract Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;
.super Ljava/lang/Object;
.source "IKeyProvisioningCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;,
        Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.knoxAI.IKeyProvisioningCallback"


# virtual methods
.method public abstract greylist onFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
