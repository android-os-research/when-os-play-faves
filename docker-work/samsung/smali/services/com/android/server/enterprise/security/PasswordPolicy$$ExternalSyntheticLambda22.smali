.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$4:[B

    iput p6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$5:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$4:[B

    iget v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$g2JD24WmPTBGPV8f8xXz6XaOyjY(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
