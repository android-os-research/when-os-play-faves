.class public final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "OverrideRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;,
        Lcom/android/server/devicestate/OverrideRequestController$RequestStatus;
    }
.end annotation


# static fields
.field public static final STATUS_ACTIVE:I = 0x1

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "OverrideRequestController"


# instance fields
.field public final mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

.field public mRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public mStickyRequest:Z

.field public mStickyRequestsAllowed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    return-void
.end method

.method public static contains([II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 247
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 248
    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "CANCELED"

    return-object p0

    .line 75
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const-string p0, "ACTIVE"

    return-object p0

    :cond_25
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public addRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 110
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 111
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    :cond_f
    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_c

    const-string p0, "OverrideRequestController"

    const-string v0, "Attempted to cancel a null OverrideRequest"

    .line 238
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 242
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    return-void
.end method

.method public cancelOverrideRequest()V
    .registers 1

    .line 147
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 2

    .line 124
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 127
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public final cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 3

    .line 229
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    return-void
.end method

.method public cancelStickyRequest()V
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_7
    return-void
.end method

.method public dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6

    .line 209
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 211
    :goto_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override Request active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_5d

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request: mPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mStatus="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v0}, Lcom/android/server/devicestate/OverrideRequestController;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method public handleBaseStateChanged()V
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    return-void

    .line 188
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 190
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_10
    return-void
.end method

.method public handleNewSupportedStates([I)V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    return-void

    .line 203
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->contains([II)Z

    move-result p1

    if-nez p1, :cond_12

    .line 204
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_12
    return-void
.end method

.method public handleProcessDied(I)V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    return-void

    .line 168
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_16

    .line 169
    iget-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    return-void

    .line 175
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    :cond_16
    return-void
.end method

.method public hasRequest(Landroid/os/IBinder;)Z
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setStickyRequestsAllowed(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-nez p1, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelStickyRequest()V

    :cond_7
    return-void
.end method
