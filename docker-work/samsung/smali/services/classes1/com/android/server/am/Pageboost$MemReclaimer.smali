.class public final Lcom/android/server/am/Pageboost$MemReclaimer;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemReclaimer"
.end annotation


# static fields
.field public static final MAX_PREPARE_SIZE:I = 0x96

.field public static final MEM_PREPARATION_ENABLED:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reclaimMem(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
