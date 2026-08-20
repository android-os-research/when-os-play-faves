.class public final Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
.super Landroid/os/Handler;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestrictionToastHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 155
    iget p0, p1, Landroid/os/Message;->what:I

    const-string v0, "RestrictionToastManager"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4c

    const/4 v2, 0x2

    if-eq p0, v2, :cond_b

    goto :goto_69

    .line 163
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "message"

    .line 164
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 165
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 167
    :try_start_1e
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103012b

    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_32

    goto :goto_69

    :catch_32
    move-exception p0

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayToast fail : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 158
    :cond_4c
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-$$Nest$sfgetmRecentlyDisplayedMsgQueue()Ljava/util/ArrayList;

    move-result-object p0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed message from recently displayed queue: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method
