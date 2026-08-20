.class public Lcom/android/server/biometrics/SemBioAnalyticsManager$1;
.super Landroid/util/Singleton;
.source "SemBioAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBioAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/biometrics/SemBioAnalyticsManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 350
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .registers 2

    .line 353
    new-instance p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager-IA;)V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 1

    .line 350
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$1;->create()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    return-object p0
.end method
