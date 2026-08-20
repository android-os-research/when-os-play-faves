.class abstract Landroid/widget/RemoteViews$BaseReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseReflectionAction"
.end annotation


# static fields
.field static final blacklist BITMAP:I = 0xc

.field static final blacklist BLEND_MODE:I = 0x11

.field static final blacklist BOOLEAN:I = 0x1

.field static final blacklist BUNDLE:I = 0xd

.field static final blacklist BYTE:I = 0x2

.field static final blacklist CHAR:I = 0x8

.field static final blacklist CHAR_SEQUENCE:I = 0xa

.field static final blacklist COLOR_STATE_LIST:I = 0xf

.field static final blacklist DOUBLE:I = 0x7

.field static final blacklist FLOAT:I = 0x6

.field static final blacklist ICON:I = 0x10

.field static final blacklist INT:I = 0x4

.field static final blacklist INTENT:I = 0xe

.field static final blacklist LONG:I = 0x5

.field static final blacklist SEM_BLUR_INFO:I = 0x1e

.field static final blacklist SHORT:I = 0x3

.field static final blacklist STRING:I = 0x9

.field static final blacklist URI:I = 0xb


# instance fields
.field greylist methodName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field blacklist type:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V
    .registers 5
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 1933
    iput-object p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1934
    iput p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    .line 1935
    iput-object p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    .line 1936
    iput p4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    .line 1937
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1939
    iput-object p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    .line 1941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    .line 1942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    .line 1948
    return-void
.end method


# virtual methods
.method public final blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1969
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1970
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1972
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 1973
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2b

    .line 1976
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    .line 1978
    .local v2, "value":Ljava/lang/Object;
    :try_start_15
    iget-object v3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v1, v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_24

    .line 1981
    nop

    .line 1982
    return-void

    .line 1979
    :catchall_24
    move-exception v3

    .line 1980
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1974
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_2b
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public final blacklist getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 12
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1987
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1988
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_d

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    .line 1990
    :cond_d
    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 1991
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_54

    .line 1995
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    .line 1997
    .local v2, "value":Ljava/lang/Object;
    :try_start_19
    iget-object v3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v1, v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 1999
    .local v3, "method":Ljava/lang/invoke/MethodHandle;
    if-eqz v3, :cond_4b

    .line 2000
    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v4

    .line 2001
    .local v4, "endAction":Ljava/lang/Runnable;
    if-nez v4, :cond_30

    .line 2002
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v5

    return-object v5

    .line 2005
    :cond_30
    instance-of v5, v4, Landroid/view/ViewStub$ViewReplaceRunnable;

    if-eqz v5, :cond_45

    .line 2006
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2008
    iget v5, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    invoke-virtual {p1, v5}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/view/ViewStub$ViewReplaceRunnable;

    iget-object v6, v6, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViews$ViewTree;->replaceView(Landroid/view/View;)V

    .line 2011
    :cond_45
    new-instance v5, Landroid/widget/RemoteViews$RunnableAction;

    invoke-direct {v5, v4}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_4d

    return-object v5

    .line 2015
    .end local v3    # "method":Ljava/lang/invoke/MethodHandle;
    .end local v4    # "endAction":Ljava/lang/Runnable;
    :cond_4b
    nop

    .line 2017
    return-object p0

    .line 2013
    :catchall_4d
    move-exception v3

    .line 2014
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1992
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_54
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final blacklist mergeBehavior()I
    .registers 3

    .line 2022
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    const-string/jumbo v1, "smoothScrollBy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2023
    const/4 v0, 0x1

    return v0

    .line 2025
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist prefersAsyncApply()Z
    .registers 3

    .line 2038
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_d

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2043
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_20

    goto :goto_1e

    .line 2049
    :sswitch_7
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 2050
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_1e

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    goto :goto_1e

    .line 2045
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :sswitch_13
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2046
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1e

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2053
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1e
    :goto_1e
    return-void

    nop

    :sswitch_data_20
    .sparse-switch
        0xb -> :sswitch_13
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1951
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1953
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    return-void
.end method
