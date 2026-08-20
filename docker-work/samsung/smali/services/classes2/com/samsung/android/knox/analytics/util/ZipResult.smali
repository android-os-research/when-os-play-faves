.class public Lcom/samsung/android/knox/analytics/util/ZipResult;
.super Ljava/lang/Object;
.source "ZipResult.java"


# instance fields
.field public content:[B

.field public length:I

.field public originalLength:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    .line 11
    iput p2, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    .line 12
    iput p3, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return-void
.end method


# virtual methods
.method public getContent()[B
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    return-object p0
.end method

.method public getLength()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    return p0
.end method

.method public getOriginalLength()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return p0
.end method
