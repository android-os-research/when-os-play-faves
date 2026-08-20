.class public final Lcom/android/server/devicestate/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceState$DeviceStateFlags;
    }
.end annotation


# static fields
.field public static final FLAG_APP_INACCESSIBLE:I = 0x2

.field public static final FLAG_CANCEL_OVERRIDE_REQUESTS:I = 0x1


# instance fields
.field public final mFlags:I

.field public final mIdentifier:I

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0xff

    const-string/jumbo v2, "identifier"

    .line 81
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 84
    iput p1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    .line 85
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 115
    const-class v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2b

    .line 116
    :cond_10
    check-cast p1, Lcom/android/server/devicestate/DeviceState;

    .line 117
    iget v2, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    iget v3, p1, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 118
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    iget p1, p1, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    if-ne p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public getFlags()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    return p0
.end method

.method public getIdentifier()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hasFlag(I)Z
    .registers 2

    .line 130
    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
