.class public final Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final noinit:B = 0x0t

.field public static final range:B = 0x1t


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const-string p0, "Unknown"

    return-object p0

    :cond_8
    const-string/jumbo p0, "range"

    return-object p0

    :cond_c
    const-string/jumbo p0, "noinit"

    return-object p0
.end method
