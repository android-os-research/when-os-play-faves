.class public final Lcom/android/server/am/PerProcessNandswap$NandswapSlot;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NandswapSlot"
.end annotation


# instance fields
.field public aufRank:I

.field public insertTime:J

.field public lifetime:I

.field public pid:I

.field public processName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;II)V
    .registers 5

    .line 1967
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    .line 1969
    iput p3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    const/4 p1, 0x0

    .line 1970
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->aufRank:I

    .line 1971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->insertTime:J

    .line 1972
    iput p4, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->lifetime:I

    return-void
.end method
