.class public final synthetic Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

.field public final synthetic f$1:Lretrofit2/Callback;

.field public final synthetic f$2:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Lretrofit2/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    invoke-static {v0, v1, p0}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->$r8$lambda$hVGjmafRi6VitDIrPNdoFizVAdk(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Lretrofit2/Response;)V

    return-void
.end method
