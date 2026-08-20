.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$0:I

    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$0:I

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$Npyx3B-PCaJ9RR79Y1EESffz-MU(ILjava/lang/String;I)V

    return-void
.end method
