.class public Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;


# direct methods
.method public static synthetic $r8$lambda$vpdQf3pCARW9eyEJ6GgahxZmwjs(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z
    .registers 2

    .line 837
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3

    .line 836
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmAllItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 837
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 838
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 839
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 840
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 848
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 849
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 850
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_24

    .line 852
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 853
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 855
    :cond_24
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    if-eqz p1, :cond_3c

    .line 857
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi;->-$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V

    .line 859
    :cond_3c
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
