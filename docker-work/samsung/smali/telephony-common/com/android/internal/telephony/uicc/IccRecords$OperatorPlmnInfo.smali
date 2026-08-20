.class public final Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatorPlmnInfo"
.end annotation


# instance fields
.field public final blacklist lacTacEnd:I

.field public final blacklist lacTacStart:I

.field public final blacklist plmnNumericPattern:Ljava/lang/String;

.field public final blacklist pnnRecordId:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    .line 1814
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    .line 1815
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    .line 1816
    iput p4, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1853
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1855
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    .line 1856
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    if-ne v1, v3, :cond_29

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    if-ne p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0
.end method

.method public blacklist getPnnIdx(Ljava/lang/String;I)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p1, :cond_4b

    .line 1825
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_10

    goto :goto_4b

    :cond_10
    const/4 v1, 0x0

    .line 1829
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1830
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2e

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    .line 1831
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1837
    :cond_31
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    if-nez p1, :cond_41

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    const v2, 0xfffe

    if-ne v1, v2, :cond_41

    .line 1838
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    :goto_3e
    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_41
    if-lt p2, p1, :cond_4b

    .line 1840
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    if-le p2, p1, :cond_48

    goto :goto_4b

    .line 1841
    :cond_48
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    goto :goto_3e

    :cond_4b
    :goto_4b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1846
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    .line 1847
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 1846
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{plmnNumericPattern = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lacTacStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lacTacEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pnnRecordId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
