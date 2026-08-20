.class public final Lcom/android/server/am/Pageboost$VramdiskMlockManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VramdiskMlockManager"
.end annotation


# instance fields
.field public mFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    .line 713
    iput-object p1, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public hasPinnedFile()Z
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public mlockAllFiles()V
    .registers 6

    .line 721
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mFiles:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    return-void

    .line 725
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 728
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip pinning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_3f
    const v2, 0x7fffffff

    const/4 v3, 0x0

    .line 732
    invoke-static {v1, v2, v3}, Lcom/android/server/PinnerService;->doPinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 734
    iget-object v3, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "successfully pinned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_68
    return-void
.end method

.method public munlockAllFiles()V
    .registers 3

    .line 741
    iget-object v0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    .line 742
    invoke-virtual {v1}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    goto :goto_6

    .line 743
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->pinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 744
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "munlockAllFiles() done"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
