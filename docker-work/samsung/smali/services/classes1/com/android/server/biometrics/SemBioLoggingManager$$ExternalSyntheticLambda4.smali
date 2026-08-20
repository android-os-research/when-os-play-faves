.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$NbVVfFbh85gYDK9BQgbAGLlm52I(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
