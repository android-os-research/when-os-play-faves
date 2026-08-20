.class public Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/event/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 332
    iget-object p0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    # getter for: Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;
    invoke-static {p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 333
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method
