.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field public static final ADDITIONAL_AAD_FIELD:I = 0x0

.field public static final MIN_ADDITIONAL_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs extractAAD([[B)[B
    .registers 2

    const/4 v0, 0x0

    .line 151
    aget-object p0, p0, v0

    return-object p0
.end method

.method public static varargs hasAAD([[B)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    .line 145
    array-length v2, p0

    if-lt v2, v0, :cond_c

    aget-object p0, p0, v1

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method
