.class public Lcom/android/internal/telephony/SemCsgInfo;
.super Ljava/lang/Object;
.source "SemCsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    }
.end annotation


# instance fields
.field private blacklist mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field private blacklist mCsgId:I

.field private blacklist mCsgName:Ljava/lang/String;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private blacklist mRat:I

.field private blacklist mSignalStrength:I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    const-string v1, ""

    .line 66
    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 69
    sget-object v1, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 14

    .line 89
    invoke-static {p5}, Lcom/android/internal/telephony/SemCsgInfo;->convertFromInt(I)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SemCsgInfo$CsgListCat;I)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SemCsgInfo$CsgListCat;I)V
    .registers 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 83
    iput-object p5, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 84
    iput p6, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemCsgInfo;)V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemCsgInfo;->copyFrom(Lcom/android/internal/telephony/SemCsgInfo;)V

    return-void
.end method

.method public static blacklist convertFromInt(I)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .registers 3

    .line 112
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_14

    .line 117
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    goto :goto_14

    .line 116
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    goto :goto_14

    .line 115
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    :goto_14
    return-object v0
.end method


# virtual methods
.method protected blacklist copyFrom(Lcom/android/internal/telephony/SemCsgInfo;)V
    .registers 3

    .line 103
    iget v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 106
    iget v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 107
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 108
    iget p1, p1, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    iput p1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public blacklist getCategory()Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0
.end method

.method public blacklist getId()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOperator()Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRat()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    return p0
.end method

.method public blacklist getSignalStrength()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCsgInfo: { ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "dBm }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
