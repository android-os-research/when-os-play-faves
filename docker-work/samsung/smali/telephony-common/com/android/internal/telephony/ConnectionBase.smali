.class public abstract Lcom/android/internal/telephony/ConnectionBase;
.super Ljava/lang/Object;
.source "ConnectionBase.java"


# static fields
.field public static final blacklist AUDIO_QUALITY_HIGH_DEFINITION_PLUS:I = 0x3


# instance fields
.field blacklist mCmcExtras:Landroid/os/Bundle;

.field private blacklist mInternalAttribute:I

.field private final blacklist mInternalAttributeLock:Ljava/lang/Object;

.field protected blacklist mIsCmcPullable:Z

.field private blacklist mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipError:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mIsCmcPullable:Z

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist confirmSdCallPullRequest()V
    .registers 2

    const-string p0, "ConnectionBase"

    const-string v0, "confirmSdCallPullRequest() should be overridden"

    .line 145
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getCmcExtras()Landroid/os/Bundle;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method protected blacklist getCmcPullable()Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mIsCmcPullable:Z

    return p0
.end method

.method protected blacklist getInternalAttribute()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    return p0
.end method

.method public blacklist getIsUseAssistedDialing()Z
    .registers 2

    const/16 v0, 0x40

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p0

    return p0
.end method

.method blacklist getParticipants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method

.method public blacklist getSipErrorCode()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    return p0
.end method

.method public blacklist hasInternalAttribute(I)Z
    .registers 2

    .line 45
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public blacklist removeInternalAttribute(I)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 59
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public blacklist requireConfirmationBeforeSdCallPull(Z)V
    .registers 2

    const-string p0, "ConnectionBase"

    const-string p1, "requireConfirmationBeforeSdCallPull() should be overridden"

    .line 140
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    const-string p0, "ConnectionBase"

    const-string p1, "sendConnectionEvent should be called in ImsPhoneConnectionn"

    .line 100
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "ConnectionBase"

    const-string p1, "setCmcExtras() should be overridden"

    .line 125
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCmcPullable(Z)V
    .registers 2

    const-string p0, "ConnectionBase"

    const-string p1, "setCmcPullable() should be overridden"

    .line 135
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setInternalAttribute(I)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 52
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method blacklist setParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    return-void
.end method

.method public blacklist setSipErrorCode(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    return-void
.end method

.method public blacklist updateInternalAttribute(IZ)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_b

    .line 66
    :try_start_5
    iget p2, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    goto :goto_11

    .line 68
    :cond_b
    iget p2, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 70
    :goto_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method
