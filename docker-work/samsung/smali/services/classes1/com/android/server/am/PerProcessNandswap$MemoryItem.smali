.class public final Lcom/android/server/am/PerProcessNandswap$MemoryItem;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryItem"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final lastNandswapTimeDiff:J

.field public final ppnState:I

.field public subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PerProcessNandswap$MemoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public final swap:J

.field public final writeback:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIJ)V
    .registers 9

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    .line 582
    iput-wide p2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->swap:J

    .line 583
    iput-wide p4, p0, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    .line 584
    iput p6, p0, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->ppnState:I

    .line 585
    iput-wide p7, p0, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    return-void
.end method
