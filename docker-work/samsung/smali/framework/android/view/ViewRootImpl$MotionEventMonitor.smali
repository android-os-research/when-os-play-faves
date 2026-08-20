.class public Landroid/view/ViewRootImpl$MotionEventMonitor;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "MotionEventMonitor"


# instance fields
.field private blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12921
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 12919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist notifyTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 12977
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12978
    .local v0, "cnt":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyTouchEvent : Listener cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionEventMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_32

    .line 12980
    iget-object v2, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 12981
    .local v2, "listener":Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    if-eqz v2, :cond_2f

    .line 12982
    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 12979
    .end local v2    # "listener":Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 12985
    .end local v1    # "i":I
    :cond_32
    return-void
.end method


# virtual methods
.method public blacklist dispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 12949
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 12950
    return-void

    .line 12953
    :cond_9
    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "MotionEventMonitor"

    if-eqz v0, :cond_38

    .line 12954
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 12955
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 12956
    .local v2, "action":I
    sget-boolean v3, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 12957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEvent : action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12959
    :cond_30
    packed-switch v2, :pswitch_data_42

    :pswitch_33
    goto :goto_37

    .line 12966
    :pswitch_34
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    .line 12969
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "action":I
    :goto_37
    goto :goto_41

    .line 12970
    :cond_38
    sget-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 12971
    const-string v0, "dispatchInputEvent : The event is not instance of MotionEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12974
    :cond_41
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public blacklist registerMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 12930
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "MotionEventMonitor"

    if-lez v0, :cond_11

    .line 12931
    const-string/jumbo v0, "registerMotionEventMonitor : Just one event listener is allowed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12932
    return-void

    .line 12935
    :cond_11
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12936
    sget-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 12937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMotionEventMonitor : Listener count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12939
    :cond_37
    return-void
.end method

.method public blacklist unregisterMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 12942
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12943
    sget-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 12944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterMotionEventMonitor : Listener count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionEventMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12946
    :cond_28
    return-void
.end method
