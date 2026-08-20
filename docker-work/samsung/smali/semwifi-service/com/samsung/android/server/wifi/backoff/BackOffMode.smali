.class public Lcom/samsung/android/server/wifi/backoff/BackOffMode;
.super Ljava/lang/Object;
.source "BackOffMode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BODY_SAR_BACKOFF:I = 0x2

.field public static final HEAD_SAR_BACKOFF:I = 0x1

.field public static final MM_WAVE_BACKOFF:I = 0x8

.field public static final NO_BACKOFF:I = 0x0

.field public static final SUB6_BACKOFF:I = 0x4


# instance fields
.field private current:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->reset()V

    return-void
.end method

.method static getTypeString(I)Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    const-string v1, "[HEAD]"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    const-string v1, "[BODY]"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    const-string v1, "[SUB6]"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_29

    const-string p0, "[MWAVE]"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(I)I
    .registers 3

    .line 32
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    return p1
.end method

.method public clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .registers 2

    .line 68
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 69
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    iput p0, v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 72
    :catch_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .registers 2

    .line 42
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public hasAny()Z
    .registers 1

    .line 46
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public remove(I)I
    .registers 3

    .line 37
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    return p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    return-void
.end method

.method public toInt()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "[NONE]"

    return-object p0
.end method
