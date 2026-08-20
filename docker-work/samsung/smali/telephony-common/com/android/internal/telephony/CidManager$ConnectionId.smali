.class final Lcom/android/internal/telephony/CidManager$ConnectionId;
.super Ljava/lang/Object;
.source "CidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionId"
.end annotation


# instance fields
.field private blacklist mAllocated:[Z

.field private blacklist mApnType:[I

.field private blacklist mIsAttachConnection:[Z

.field private blacklist mSlotId:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    new-array v1, v0, [Z

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    new-array v1, v0, [Z

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_2c

    .line 55
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 56
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    aput v4, v3, v2

    .line 57
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean v1, v3, v2

    .line 58
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    return-void
.end method


# virtual methods
.method public blacklist allocate(IIIZ)V
    .registers 7

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    aput p3, v0, p2

    .line 73
    iget-object p3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    aput p1, p3, p2

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean p4, p0, p2

    return-void
.end method

.method public blacklist getApnType(I)I
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist getSlotId(I)I
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist isAllocated()Z
    .registers 3

    const/4 v0, 0x2

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAllocated(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method public blacklist isAllocated(I)Z
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist isAttachCid(I)Z
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist release(I)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    const/4 v2, -0x1

    aput v2, v0, p1

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    aput v2, v0, p1

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean v1, p0, p1

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWAN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", WLAN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mSlotId:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mApnType:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
