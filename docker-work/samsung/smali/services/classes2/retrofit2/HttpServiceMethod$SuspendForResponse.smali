.class public final Lretrofit2/HttpServiceMethod$SuspendForResponse;
.super Lretrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuspendForResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/HttpServiceMethod<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 178
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$SuspendForResponse;->callAdapter:Lretrofit2/CallAdapter;

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lretrofit2/HttpServiceMethod$SuspendForResponse;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {p0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Call;

    .line 186
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 191
    :try_start_f
    invoke-static {p0, p1}, Lretrofit2/KotlinExtensions;->awaitResponse(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 193
    invoke-static {p0, p1}, Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
