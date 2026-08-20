.class public Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;
.super Ljava/lang/Object;
.source "SemHiddenDisplayInputManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemHiddenDisplayInputManager"

.field private static final blacklist UIBC_MODE_HIDDEN_DISPLAY_INPUT:Z = true


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "SemHiddenDisplayInputManager"

    invoke-static {v0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager;

    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist deinitialize()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v0, :cond_8

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z

    .line 52
    :cond_8
    return-void
.end method

.method public whitelist initialize()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v0, :cond_8

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;->start(Z)Z

    .line 41
    :cond_8
    return-void
.end method

.method public whitelist sendKeyEvent(II)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INJECT_EVENTS"

    const-string v3, "Need INJECT_EVENT Permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v1, :cond_13

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/wfd/WFDUibcManager;->addKeyEvent(III)Z

    move-result v0

    .line 91
    :cond_13
    if-nez v0, :cond_1c

    .line 92
    const-string v1, "SemHiddenDisplayInputManager"

    const-string v2, "Hidden Display Input Manager didn\'t start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1c
    return-void
.end method

.method public whitelist sendTouchEvent(II[I[I[I)V
    .registers 16
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "id"    # [I
    .param p4, "X"    # [I
    .param p5, "Y"    # [I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INJECT_EVENTS"

    const-string v3, "Need INJECT_EVENT Permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v4, :cond_17

    .line 70
    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/wfd/WFDUibcManager;->addTouchEvent(II[I[I[I)Z

    move-result v0

    .line 72
    :cond_17
    if-nez v0, :cond_20

    .line 73
    const-string v1, "SemHiddenDisplayInputManager"

    const-string v2, "Hidden Display Input Manager didn\'t start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_20
    return-void
.end method
