.class public interface abstract Landroid/security/samsungattestation/ISamsungAttestation;
.super Ljava/lang/Object;
.source "ISamsungAttestation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungattestation/ISamsungAttestation$Stub;,
        Landroid/security/samsungattestation/ISamsungAttestation$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 140
    const-string v0, "android$security$samsungattestation$ISamsungAttestation"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/samsungattestation/ISamsungAttestation;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
