.class public interface abstract Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "IEnhancedAttestationPolicyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Stub;,
        Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.integrity.IEnhancedAttestationPolicyCallback"


# virtual methods
.method public abstract greylist onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
