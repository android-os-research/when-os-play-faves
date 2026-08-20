.class public final Lcom/android/server/am/Pageboost$MemUsage;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemUsage"
.end annotation


# instance fields
.field public anon:I

.field public gpu:I

.field public ion:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 2222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2223
    iput p1, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    .line 2224
    iput p2, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    .line 2225
    iput p3, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    return-void
.end method


# virtual methods
.method public getAnon()I
    .registers 1

    .line 2229
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    return p0
.end method

.method public getGPUMem()I
    .registers 1

    .line 2237
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    return p0
.end method

.method public getIONMem()I
    .registers 1

    .line 2233
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    return p0
.end method

.method public getTotal()I
    .registers 3

    .line 2241
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    iget v1, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    add-int/2addr v0, p0

    return v0
.end method
