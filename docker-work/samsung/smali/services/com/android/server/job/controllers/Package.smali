.class public final Lcom/android/server/job/controllers/Package;
.super Ljava/lang/Object;
.source "Package.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/server/job/controllers/Package;->userId:I

    .line 28
    iput-object p2, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static packageToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 41
    :cond_4
    instance-of v1, p1, Lcom/android/server/job/controllers/Package;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 44
    :cond_a
    check-cast p1, Lcom/android/server/job/controllers/Package;

    .line 45
    iget v1, p0, Lcom/android/server/job/controllers/Package;->userId:I

    iget v3, p1, Lcom/android/server/job/controllers/Package;->userId:I

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/server/job/controllers/Package;->userId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 33
    iget v0, p0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p0, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
