.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-boolean p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$1:Z

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-boolean v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$1:Z

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$mmy0kv9NM3pQ1IA0Y0h-gqBIv1U(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V

    return-void
.end method
