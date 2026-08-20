.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$2:I

    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$2:I

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$ifx52GH85SI8AzO1KyIh6NGRESQ(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    return-void
.end method
