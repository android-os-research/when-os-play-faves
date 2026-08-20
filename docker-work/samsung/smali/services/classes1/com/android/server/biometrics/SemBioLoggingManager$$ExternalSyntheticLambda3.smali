.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput-wide p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$LdoX-Sh8HktL-KOPWEymKsfyO8o(Lcom/android/server/biometrics/SemBioLoggingManager;J)V

    return-void
.end method
