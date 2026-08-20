.class public Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;
    }
.end annotation


# instance fields
.field public final mFrequency:I

.field public final mStatus:I

.field public final mType:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mType:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mStatus:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mFrequency:I

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getFrequency()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mFrequency:I

    return p0
.end method

.method public getStatus()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mStatus:I

    return p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->mType:I

    return p0
.end method
