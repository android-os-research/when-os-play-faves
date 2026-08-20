.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$3:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$4:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$3:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$4:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$7LUgTaYI7H0E5W6AeYNFEKoESV4(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    return-void
.end method
