.class public Lcom/android/server/notification/SmallHash;
.super Ljava/lang/Object;
.source "SmallHash.java"


# static fields
.field public static final MAX_HASH:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash(I)I
    .registers 2

    const/16 v0, 0x2000

    .line 42
    invoke-static {p0, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    return p0
.end method

.method public static hash(Ljava/lang/String;)I
    .registers 1

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(I)I

    move-result p0

    return p0
.end method
