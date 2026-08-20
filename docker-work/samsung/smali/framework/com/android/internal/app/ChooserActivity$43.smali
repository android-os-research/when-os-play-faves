.class Lcom/android/internal/app/ChooserActivity$43;
.super Landroid/os/AsyncTask;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->callSliceDataFromQuickShareProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 16024
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16024
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$43;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 16027
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const-string v0, "ChooserActivity"

    const/4 v1, 0x0

    .line 16028
    .local v1, "slice":Landroid/app/slice/Slice;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16029
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    const-class v4, Landroid/app/slice/SliceManager;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceManager;

    .line 16030
    .local v3, "sliceManager":Landroid/app/slice/SliceManager;
    const-string/jumbo v4, "slice"

    if-nez v3, :cond_20

    .line 16031
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/app/slice/SliceManager;

    .line 16035
    :cond_20
    :try_start_20
    const-string v5, "callSliceDataFromQuickShareProvider: bindSlice"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16036
    sget-object v5, Lcom/samsung/android/share/SemShareConstants;->QUICK_SHARE_SLICE_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetSUPPORTED_SPECS2(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_33

    move-object v1, v0

    .line 16040
    goto :goto_4a

    .line 16038
    :catch_33
    move-exception v5

    .line 16039
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callSliceDataFromQuickShareProvider: exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16042
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4a
    if-eqz v1, :cond_8c

    .line 16043
    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_54
    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/slice/SliceItem;

    .line 16044
    .local v5, "deviceItem":Landroid/app/slice/SliceItem;
    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 16045
    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v6

    const-string/jumbo v7, "list_item"

    const-string v8, "activity"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$smtoList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 16047
    goto :goto_54

    .line 16049
    :cond_82
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mconvertQuickShareSliceToChooserTarget(Lcom/android/internal/app/ChooserActivity;Landroid/app/slice/SliceItem;)Landroid/service/chooser/ChooserTarget;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16050
    .end local v5    # "deviceItem":Landroid/app/slice/SliceItem;
    goto :goto_54

    .line 16053
    :cond_8c
    return-object v2
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 16024
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$43;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .line 16058
    .local p1, "qsChooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const-string v0, "ChooserActivity"

    if-nez p1, :cond_11

    .line 16059
    const-string v1, "callSliceDataFromQuickShareProvider returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16060
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mQSChooserTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16061
    return-void

    .line 16063
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSliceDataFromQuickShareProvider onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16064
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 16065
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 16067
    :cond_42
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 16069
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$43;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p1, v0, Lcom/android/internal/app/ChooserActivity;->mQSChooserTargets:Ljava/util/List;

    .line 16070
    return-void
.end method
