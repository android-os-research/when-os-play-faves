.class Landroid/test/LoaderTestCase$1;
.super Landroid/os/AsyncTask;
.source "LoaderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/LoaderTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/test/LoaderTestCase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Void;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/test/LoaderTestCase$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 44
    return-void
.end method
