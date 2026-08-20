.class public Lcom/android/server/security/AttestationVerificationManagerService$1;
.super Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.source "AttestationVerificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AttestationVerificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/AttestationVerificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/AttestationVerificationManagerService;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-direct {p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final enforceUsePermission()V
    .registers 3

    .line 84
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AVF"

    .line 64
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    :try_start_5
    const-string/jumbo v1, "verifyAttestation"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p0

    const-string p1, "failed to verify attestation"

    .line 70
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    const/4 p0, 0x0

    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
