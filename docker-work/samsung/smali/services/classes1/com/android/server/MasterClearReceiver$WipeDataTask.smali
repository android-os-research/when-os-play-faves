.class public Lcom/android/server/MasterClearReceiver$WipeDataTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WipeDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mChainedTask:Ljava/lang/Thread;

.field public final mContext:Landroid/content/Context;

.field public final mProgressDialog:Landroid/app/ProgressDialog;

.field public final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V
    .registers 5

    .line 334
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    .line 336
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    const-string p1, "MasterClear"

    const-string p3, "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object will create"

    .line 337
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p3, Landroid/app/ProgressDialog;

    const v0, 0x103043f

    invoke-direct {p3, p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string p0, "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object created"

    .line 339
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 329
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    const-string p1, "MasterClear"

    const-string v0, "Wiping adoptable disks"

    .line 354
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {p1}, Lcom/android/server/MasterClearReceiver;->-$$Nest$fgetmWipeExternalStorage(Lcom/android/server/MasterClearReceiver;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 356
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "storage"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 358
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 329
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    const-string p1, "MasterClear"

    const-string v0, "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object will dismiss"

    .line 365
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object dismissed"

    .line 367
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 346
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    const v2, 0x1040b56

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v0, "MasterClear"

    const-string v1, "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog will show"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    const-string p0, "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog showed"

    .line 349
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
