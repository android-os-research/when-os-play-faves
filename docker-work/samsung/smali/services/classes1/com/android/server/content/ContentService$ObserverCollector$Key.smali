.class public Lcom/android/server/content/ContentService$ObserverCollector$Key;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field public final flags:I

.field public final observer:Landroid/database/IContentObserver;

.field public final selfChange:Z

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/database/IContentObserver;IZII)V
    .registers 6

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 601
    iput p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 602
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 603
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 604
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 609
    instance-of v0, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 612
    :cond_6
    check-cast p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 613
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget-object v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    if-ne v0, v2, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    iget-boolean v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    if-ne v0, v2, :cond_2b

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    iget p1, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    if-ne p0, p1, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 622
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
