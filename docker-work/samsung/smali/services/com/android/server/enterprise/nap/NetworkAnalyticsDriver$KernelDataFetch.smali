.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KernelDataFetch"
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
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
