.class public Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;
.super Ljava/lang/Object;
.source "HistoryLogUriBuilder.java"


# instance fields
.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "historyLogUri"    # Landroid/net/Uri;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mProviders:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mUri:Landroid/net/Uri;

    .line 17
    iput-object p1, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mUri:Landroid/net/Uri;

    .line 18
    return-void
.end method


# virtual methods
.method public appendProvider(I)Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;
    .registers 4
    .param p1, "providerId"    # I

    .line 27
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mProviders:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .registers 7

    .line 36
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 41
    .local v0, "uri":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1e

    .line 42
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :cond_1e
    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 46
    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .end local v3    # "id":Ljava/lang/Integer;
    goto :goto_24

    .line 49
    :cond_3a
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/gsma/services/rcs/history/HistoryLogUriBuilder;->mUri:Landroid/net/Uri;

    .line 50
    return-object v1
.end method
