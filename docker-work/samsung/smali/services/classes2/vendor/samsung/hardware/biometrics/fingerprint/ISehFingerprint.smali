.class public interface abstract Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
.super Ljava/lang/Object;
.source "ISehFingerprint.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;,
        Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "d1ee0e678dcdec96506558215f7a8b0b2acd74a9"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "vendor$samsung$hardware$biometrics$fingerprint$ISehFingerprint"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
