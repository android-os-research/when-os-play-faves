.class public final Lcom/android/server/NandswapManager$ProcessingManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessingManager"
.end annotation


# static fields
.field public static final COUNT_MODE:I = 0x1

.field public static final SIZE_MODE:I = 0x2


# instance fields
.field public countList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public objReads:I

.field public objWrites:I

.field public reads:I

.field public sizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public writes:I


# direct methods
.method public static bridge synthetic -$$Nest$mcalcCountAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcCountAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mcalcSizeAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcSizeAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mclearAllList(Lcom/android/server/NandswapManager$ProcessingManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->clearAllList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousObjReads(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjReads()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousObjWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjWrites()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousReads()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousWrites()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCount(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setCount(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousValue(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NandswapManager$ProcessingManager;->setPreviousValue(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSize(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setSize(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 1054
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 1055
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 1056
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NandswapManager$ProcessingManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcAverage(I)D
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_26

    .line 1083
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v2, p1

    .line 1084
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v4, v0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1085
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v6, p1

    add-double/2addr v4, v6

    goto :goto_13

    :cond_26
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4a

    .line 1088
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v2, p1

    .line 1089
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v4, v0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v6, p1

    add-double/2addr v4, v6

    goto :goto_37

    :cond_4a
    move-wide v2, v0

    move-wide v4, v2

    :cond_4c
    cmpl-double p0, v2, v0

    if-nez p0, :cond_51

    return-wide v0

    :cond_51
    div-double/2addr v4, v2

    return-wide v4
.end method

.method public final calcCountAverage()D
    .registers 3

    const/4 v0, 0x1

    .line 1066
    invoke-virtual {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final calcSizeAverage()D
    .registers 3

    const/4 v0, 0x2

    .line 1069
    invoke-virtual {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final clearAllList()V
    .registers 2

    .line 1073
    iget-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1074
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getPreviousObjReads()I
    .registers 1

    .line 1120
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    return p0
.end method

.method public final getPreviousObjWrites()I
    .registers 1

    .line 1123
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return p0
.end method

.method public final getPreviousReads()I
    .registers 1

    .line 1114
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    return p0
.end method

.method public final getPreviousWrites()I
    .registers 1

    .line 1117
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    return p0
.end method

.method public final setCount(I)V
    .registers 2

    .line 1059
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPreviousValue(IIII)V
    .registers 5

    .line 1108
    iput p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 1109
    iput p2, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 1110
    iput p3, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 1111
    iput p4, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return-void
.end method

.method public final setSize(I)V
    .registers 2

    .line 1062
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
