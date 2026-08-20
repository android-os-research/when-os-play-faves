.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$2:I

    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$1:I

    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$2:I

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$ybL9td7cigBkHkp2Tj2e-Z6vRNM(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
