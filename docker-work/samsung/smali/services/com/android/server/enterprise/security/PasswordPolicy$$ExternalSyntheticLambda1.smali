.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$brHod7gzMsmBMj_emMw9LQe-Gmw(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    return-void
.end method
