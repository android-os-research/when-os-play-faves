.class Lcom/android/internal/app/ChooserActivity$SemTransTask;
.super Landroid/os/AsyncTask;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTransTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mActionCancelSelected:Z

.field blacklist mAlways:Z

.field private blacklist mBooleanForSelectFunction:Z

.field blacklist mCompletedFileSize:J

.field blacklist mCurrentFileCount:I

.field blacklist mCurrentFileSize:J

.field blacklist mCurrentListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field blacklist mCurrentPercentage:I

.field blacklist mFiltered:Z

.field blacklist mOriginalUri:Landroid/net/Uri;

.field blacklist mOriginalUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mProgressDialog:Landroid/app/ProgressDialog;

.field blacklist mProgressTitle:Ljava/lang/String;

.field blacklist mSelectionCost:J

.field blacklist mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

.field blacklist mTotalFileCount:I

.field blacklist mTotalFileSize:J

.field blacklist mTranscodingComplete:Z

.field blacklist mTranscodingError:Z

.field blacklist mTranscodingSent:Z

.field blacklist mWhich:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;IZZLcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/TargetInfo;J)V
    .registers 11
    .param p2, "which"    # I
    .param p3, "always"    # Z
    .param p4, "filtered"    # Z
    .param p5, "currentListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p6, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p7, "selectionCost"    # J

    .line 15875
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15851
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingComplete:Z

    .line 15852
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingError:Z

    .line 15853
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mActionCancelSelected:Z

    .line 15854
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingSent:Z

    .line 15859
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileSize:J

    .line 15860
    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCompletedFileSize:J

    .line 15861
    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileSize:J

    .line 15862
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentPercentage:I

    .line 15863
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileCount:I

    .line 15864
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileCount:I

    .line 15866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mOriginalUris:Ljava/util/ArrayList;

    .line 15876
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mBooleanForSelectFunction:Z

    .line 15877
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mWhich:I

    .line 15878
    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mAlways:Z

    .line 15879
    iput-boolean p4, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mFiltered:Z

    .line 15880
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 15881
    iput-object p6, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 15882
    iput-wide p7, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mSelectionCost:J

    .line 15883
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 5
    .param p2, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 15869
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15851
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingComplete:Z

    .line 15852
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingError:Z

    .line 15853
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mActionCancelSelected:Z

    .line 15854
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingSent:Z

    .line 15859
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileSize:J

    .line 15860
    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCompletedFileSize:J

    .line 15861
    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileSize:J

    .line 15862
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentPercentage:I

    .line 15863
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileCount:I

    .line 15864
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileCount:I

    .line 15866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mOriginalUris:Ljava/util/ArrayList;

    .line 15870
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mBooleanForSelectFunction:Z

    .line 15871
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 15872
    return-void
.end method


# virtual methods
.method blacklist calculatePercentage(I)I
    .registers 6
    .param p1, "i"    # I

    .line 15924
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileSize:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCompletedFileSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentPercentage:I

    add-int/2addr v0, v1

    .line 15925
    .local v0, "totalPercentage":I
    return v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15846
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 15915
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterTrandscoding(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 15916
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist doProgress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 15920
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->publishProgress([Ljava/lang/Object;)V

    .line 15921
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 15846
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/String;)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;

    .line 15944
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTranscodingClient(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 15945
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTranscodingClient(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->stop()V

    .line 15947
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15948
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 15950
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mActionCancelSelected:Z

    if-eqz v0, :cond_25

    .line 15951
    return-void

    .line 15953
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingSent:Z

    .line 15954
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mBooleanForSelectFunction:Z

    if-eqz v0, :cond_3e

    .line 15955
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mWhich:I

    iget-boolean v3, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mAlways:Z

    iget-boolean v4, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mFiltered:Z

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    iget-wide v7, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mSelectionCost:J

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartSelectedPost(Lcom/android/internal/app/ChooserActivity;IZZLcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/TargetInfo;J)V

    goto :goto_4a

    .line 15957
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 15958
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 15960
    :goto_4a
    return-void
.end method

.method protected whitelist onPreExecute()V
    .registers 6

    .line 15887
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15888
    .local v0, "totalKeys":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->semGetFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileSize:J

    .line 15889
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileCount:I

    .line 15890
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x1040c80

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressTitle:Ljava/lang/String;

    .line 15892
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 15893
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 15894
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 15895
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 15896
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 15897
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserActivity$SemTransTask$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ChooserActivity$SemTransTask$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemTransTask;)V

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 15905
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 15906
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 15908
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    if-eqz v1, :cond_92

    .line 15909
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    const-string v2, "CONV"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 15911
    :cond_92
    return-void
.end method

.method protected bridge synthetic whitelist onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 15846
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs blacklist onProgressUpdate([Ljava/lang/String;)V
    .registers 6
    .param p1, "progress"    # [Ljava/lang/String;

    .line 15930
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string/jumbo v2, "progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 15931
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->calculatePercentage(I)I

    move-result v0

    .line 15932
    .local v0, "lastProgress":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    if-ge v1, v0, :cond_24

    .line 15933
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 15935
    .end local v0    # "lastProgress":I
    :cond_24
    goto :goto_6a

    :cond_25
    aget-object v1, p1, v0

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 15936
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 15937
    :cond_38
    aget-object v0, p1, v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 15938
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTotalFileCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 15940
    :cond_6a
    :goto_6a
    return-void
.end method
