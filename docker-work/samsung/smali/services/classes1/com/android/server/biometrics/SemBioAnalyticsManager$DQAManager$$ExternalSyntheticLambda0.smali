.class public final synthetic Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->$r8$lambda$19gi2xlK9QPuMAKjfey6LrFogyw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
