.class public final Lcom/android/server/timezone/PackageStatus;
.super Ljava/lang/Object;
.source "PackageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageStatus$CheckStatus;
    }
.end annotation


# static fields
.field public static final CHECK_COMPLETED_FAILURE:I = 0x3

.field public static final CHECK_COMPLETED_SUCCESS:I = 0x2

.field public static final CHECK_STARTED:I = 0x1


# instance fields
.field public final mCheckStatus:I

.field public final mVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method public constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_19

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    if-eqz p2, :cond_10

    .line 55
    iput-object p2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    return-void

    .line 53
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "versions == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown checkStatus "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 63
    const-class v1, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_22

    .line 67
    :cond_10
    check-cast p1, Lcom/android/server/timezone/PackageStatus;

    .line 69
    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    iget v2, p1, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    if-eq v1, v2, :cond_19

    return v0

    .line 72
    :cond_19
    iget-object p0, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object p1, p1, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {p0, p1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object p0, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageStatus{mCheckStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
