.class public Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;
.super Ljava/lang/Object;
.source "SemBioAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBioAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventData"
.end annotation


# instance fields
.field public mExtra:Ljava/lang/String;

.field public mFeature:Ljava/lang/String;

.field public mType:I

.field public mValue:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 335
    iput p3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mValue:I

    .line 336
    iput p4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
