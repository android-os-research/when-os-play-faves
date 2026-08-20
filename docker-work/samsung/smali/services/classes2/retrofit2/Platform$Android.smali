.class public final Lretrofit2/Platform$Android;
.super Lretrofit2/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Platform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, v0}, Lretrofit2/Platform;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 119
    new-instance p0, Lretrofit2/Platform$Android$MainThreadExecutor;

    invoke-direct {p0}, Lretrofit2/Platform$Android$MainThreadExecutor;-><init>()V

    return-object p0
.end method

.method public varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lretrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
