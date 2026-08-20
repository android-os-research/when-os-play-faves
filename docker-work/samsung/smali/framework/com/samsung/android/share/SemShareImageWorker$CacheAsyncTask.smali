.class public Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "SemShareImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareImageWorker;


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/share/SemShareImageWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareImageWorker;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->this$0:Lcom/samsung/android/share/SemShareImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    goto :goto_25

    .line 138
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->this$0:Lcom/samsung/android/share/SemShareImageWorker;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageWorker;->closeCacheInternal()V

    goto :goto_25

    .line 135
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->this$0:Lcom/samsung/android/share/SemShareImageWorker;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageWorker;->flushCacheInternal()V

    .line 136
    goto :goto_25

    .line 132
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->this$0:Lcom/samsung/android/share/SemShareImageWorker;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageWorker;->initDiskCacheInternal()V

    .line 133
    goto :goto_25

    .line 129
    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->this$0:Lcom/samsung/android/share/SemShareImageWorker;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageWorker;->clearCacheInternal()V

    .line 130
    nop

    .line 141
    :goto_25
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method
