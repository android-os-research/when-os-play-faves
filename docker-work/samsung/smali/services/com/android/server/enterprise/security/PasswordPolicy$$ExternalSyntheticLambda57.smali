.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$1:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$vZWpmonwKKzozGr2UYqESq-zeeE(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
