.class public interface abstract Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
.super Ljava/lang/Object;
.source "IDecryptFramework.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;,
        Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.knoxAI.IDecryptFramework"


# virtual methods
.method public abstract greylist close(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist destroyKnoxAiSession(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getModelInputShape(JI[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
