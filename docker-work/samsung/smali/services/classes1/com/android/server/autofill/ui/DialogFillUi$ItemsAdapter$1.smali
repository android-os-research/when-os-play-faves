.class public Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;


# direct methods
.method public static synthetic $r8$lambda$zZdzmh4_zz5LBrrK7XRa583LleM(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;)Z
    .registers 2

    .line 505
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3

    .line 504
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {p0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmAllItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 505
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 506
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 507
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 508
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 509
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 516
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 517
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_24

    .line 519
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 521
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    :cond_24
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-static {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)Ljava/util/List;

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

    .line 525
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {p1}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 527
    :cond_3c
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
