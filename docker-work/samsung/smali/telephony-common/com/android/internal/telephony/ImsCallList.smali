.class public final Lcom/android/internal/telephony/ImsCallList;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsCallList$ImsCall;
    }
.end annotation


# instance fields
.field private blacklist mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

.field private blacklist mImsCallCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    .line 26
    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    .line 26
    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-eqz p1, :cond_b9

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_22

    goto :goto_13

    .line 41
    :cond_22
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_ac

    .line 44
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_57

    const-string v7, "feature_caps"

    .line 46
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    const-string v7, ";"

    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 49
    array-length v7, v4

    move v8, v0

    :goto_44
    if-ge v8, v7, :cond_57

    aget-object v9, v4, v8

    if-eqz v9, :cond_54

    const-string v10, "+g.3gpp.mid-call"

    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54

    move v4, v6

    goto :goto_58

    :cond_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_57
    move v4, v0

    .line 58
    :goto_58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/internal/ConferenceParticipant;

    .line 59
    invoke-virtual {v8}, Lcom/android/ims/internal/ConferenceParticipant;->getState()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_5c

    goto :goto_71

    :cond_70
    move v6, v0

    :goto_71
    if-eqz v4, :cond_9e

    if-eqz v6, :cond_9e

    .line 65
    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 66
    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_81

    goto :goto_9e

    .line 69
    :cond_81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/ConferenceParticipant;

    .line 70
    iget-object v5, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v7, v2, v4}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v7, v5, v1

    move v1, v6

    goto :goto_85

    .line 67
    :cond_9e
    :goto_9e
    iget-object v3, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v4, v1, 0x1

    new-instance v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v6, v2, v5}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v6, v3, v1

    :goto_a9
    move v1, v4

    goto/16 :goto_13

    .line 74
    :cond_ac
    iget-object v3, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v4, v1, 0x1

    new-instance v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v6, v2, v5}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v6, v3, v1

    goto :goto_a9

    :cond_b8
    move v0, v1

    .line 78
    :cond_b9
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 83
    instance-of v0, p1, Lcom/android/internal/telephony/ImsCallList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 87
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/ImsCallList;

    .line 89
    iget v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    move v0, v1

    :goto_10
    const/16 v2, 0x9

    if-ge v0, v2, :cond_26

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist toSehImsCallList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 110
    :goto_6
    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v1, v2, :cond_18

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->toSehImsCall()Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{Total: "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-lez v1, :cond_33

    const-string v1, ", "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 124
    :goto_1b
    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v1, v2, :cond_33

    const-string v2, "["

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_33
    const-string p0, "}"

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
