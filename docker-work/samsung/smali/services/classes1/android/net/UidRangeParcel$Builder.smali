.class public final Landroid/net/UidRangeParcel$Builder;
.super Ljava/lang/Object;
.source "UidRangeParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UidRangeParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private start:I

.field private stop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    .line 21
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/UidRangeParcel;
    .registers 3

    .line 27
    new-instance v0, Landroid/net/UidRangeParcel;

    iget v1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    iget p0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    invoke-direct {v0, v1, p0}, Landroid/net/UidRangeParcel;-><init>(II)V

    return-object v0
.end method

.method public setStart(I)Landroid/net/UidRangeParcel$Builder;
    .registers 2

    .line 18
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    return-object p0
.end method

.method public setStop(I)Landroid/net/UidRangeParcel$Builder;
    .registers 2

    .line 23
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    return-object p0
.end method
