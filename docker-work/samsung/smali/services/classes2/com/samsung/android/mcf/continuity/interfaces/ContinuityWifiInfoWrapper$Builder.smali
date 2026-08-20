.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mFrequency:I

.field public final mStatus:I

.field public final mType:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mType:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mStatus:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mStatus:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_14

    iget v1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    goto :goto_14

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid frequency"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    new-instance v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mType:I

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;-><init>(IIILcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$a;)V

    return-object v1
.end method

.method public setFrequency(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    return-object p0
.end method
