.class Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;
.super Ljava/lang/Object;
.source "SemEmergencyNumberTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemEmergencyNumberTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mEccNumberWithSim:Ljava/lang/String;

.field blacklist mEccNumberWithoutSim:Ljava/lang/String;

.field blacklist mPlmn:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;)I
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 31
    check-cast p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->compareTo(Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 49
    const-class v0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 52
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mPlmn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
