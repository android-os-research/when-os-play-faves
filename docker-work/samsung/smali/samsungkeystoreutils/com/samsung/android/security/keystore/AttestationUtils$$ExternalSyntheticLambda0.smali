.class public final synthetic Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget-object v1, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->lambda$tryAttestation$0(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p1

    return-object p1
.end method
