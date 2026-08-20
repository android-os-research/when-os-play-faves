.class public interface abstract Lcom/samsung/android/knox/integrity/IEnhancedAttestation;
.super Ljava/lang/Object;
.source "IEnhancedAttestation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/IEnhancedAttestation$Stub;,
        Lcom/samsung/android/knox/integrity/IEnhancedAttestation$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.integrity.IEnhancedAttestation"


# virtual methods
.method public abstract greylist enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
